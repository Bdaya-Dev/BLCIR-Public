using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Threading.Tasks;
using Bdaya.BLCIRM.State;
using Nito.Disposables.Internals;
using Volo.Abp.Data;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Domain.Entities.Events;
using Volo.Abp.Domain.Repositories;
using Volo.Abp.EventBus;
using Volo.Abp.Guids;
using Volo.Abp.MultiTenancy;
using Volo.Abp.Timing;

namespace Bdaya.BLCIRM;

public class TransactionEventHandler
    : ILocalEventHandler<EntityChangedEventData<TransactionProposal>>,
        ITransientDependency
{
    public TransactionEventHandler(
        IBlockRepository blocksRepo,
        IRepository<Document, Guid> documentsRepo,
        IGuidGenerator guidGenerator,
        IClock clock,
        IRepository<AppTenantDocumentEntry, Guid> documentEntryRepo,
        IRepository<TransactionProposal, Guid> proposalsRepo,
        IRepository<Person, Guid> peopleRepository,
        IRepository<LibraryLoanEntry, Guid> loansRepo,
        IDataFilter<IMultiTenant> multiTenantDataFilter,
        ICurrentTenant currentTenant
    )
    {
        BlocksRepo = blocksRepo;
        DocumentsRepo = documentsRepo;
        GuidGenerator = guidGenerator;
        Clock = clock;
        DocumentEntryRepo = documentEntryRepo;
        ProposalsRepo = proposalsRepo;
        PeopleRepository = peopleRepository;
        LoansRepo = loansRepo;
        MultiTenantDataFilter = multiTenantDataFilter;
        CurrentTenant = currentTenant;
    }

    private ICurrentTenant CurrentTenant { get; }
    private IDataFilter<IMultiTenant> MultiTenantDataFilter { get; }
    private IRepository<Person, Guid> PeopleRepository { get; }
    private IRepository<TransactionProposal, Guid> ProposalsRepo { get; }
    private IBlockRepository BlocksRepo { get; }
    private IRepository<Document, Guid> DocumentsRepo { get; }
    private IRepository<LibraryLoanEntry, Guid> LoansRepo { get; }
    private IRepository<AppTenantDocumentEntry, Guid> DocumentEntryRepo { get; }
    private IGuidGenerator GuidGenerator { get; }
    private IClock Clock { get; }

    public async Task HandleEventAsync(EntityChangedEventData<TransactionProposal> eventData)
    {
        var entity = eventData.Entity;
        switch (eventData)
        {
            case EntityCreatedEventData<TransactionProposal> createdEventData:
            case EntityUpdatedEventData<TransactionProposal> updatedEventData:
                //short circuit if proposal is already completed
                if (entity.CompletionResult.HasValue)
                {
                    return;
                }

                //Reject any proposal that has more than 10 rejections
                if (
                    entity.Votes
                        .Where(x => x.Result == false)
                        .Select(x => x.TenantId)
                        .ToHashSet()
                        .Count > 10
                )
                {
                    await RejectProposal(entity);
                    return;
                }

                await HandleLatestProposal(proposal: entity);
                break;
            case EntityDeletedEventData<TransactionProposal> deletedEventData:
                break;
        }
    }

    private async Task HandleLatestProposal(TransactionProposal proposal)
    {
        var info = proposal.Info;
        var acceptedVotes = proposal.Votes.Where(predicate: x => x.Result).ToList();
        switch (info)
        {
            case TransferPhysicalDocumentsTransactionInfo(
                var transferId,
                var targetTenantId,
                var documentId,
                var quantity,
                var pricePerItem,
                var notes
            ):
                //Ensure the accepted votes contain both tenants in the transfer transaction
                var allRelatedTenantsAccepted = new[] { proposal.TenantId, targetTenantId }.All(
                    predicate: tenantId => acceptedVotes.Any(predicate: x => x.TenantId == tenantId)
                );
                if (allRelatedTenantsAccepted)
                {
                    //Remove amount from (from) tenant to (to) tenant
                    using var _ = MultiTenantDataFilter.Disable();
                    var entryFrom =
                        await DocumentEntryRepo.FindAsync(
                            predicate: x =>
                                x.DocumentId == documentId && x.TenantId == proposal.TenantId
                        )
                        ?? await DocumentEntryRepo.InsertAsync(
                            new AppTenantDocumentEntry(
                                id: GuidGenerator.Create(),
                                tenantId: proposal.TenantId,
                                documentId: documentId,
                                ownedQuantity: 0,
                                loanedQuantity: 0,
                                isAvailableOnline: false
                            )
                        );

                    var entryTo =
                        await DocumentEntryRepo.FindAsync(
                            predicate: x =>
                                x.DocumentId == documentId && x.TenantId == targetTenantId
                        )
                        ?? await DocumentEntryRepo.InsertAsync(
                            new AppTenantDocumentEntry(
                                id: GuidGenerator.Create(),
                                tenantId: targetTenantId,
                                documentId: documentId,
                                ownedQuantity: 0,
                                loanedQuantity: 0,
                                isAvailableOnline: false
                            )
                        );

                    if (entryFrom.AvailableQuantity < quantity)
                    {
                        //Don't accept yet, wait until it's available,
                        //also remove (from) vote to re-trigger transaction When they accept
                        proposal.Votes.RemoveAll(match: x => x.TenantId == entryFrom.TenantId);
                        await ProposalsRepo.UpdateAsync(entity: proposal);
                        return;
                    }

                    entryFrom.OwnedQuantity -= quantity;
                    entryTo.OwnedQuantity += quantity;
                    await DocumentEntryRepo.UpdateManyAsync(entities: new[] { entryFrom, entryTo });

                    await PublishProposals(proposals: proposal);
                }

                break;

            case ReturnLoanPhysicalDocumentsTransactionInfo(
                var loanId,
                var physicalCopies,
                var returnDate
            ):
                //Ensure the accepted votes contain the tenant that loaned the document in the first place
                var disableTenantFilter = MultiTenantDataFilter.Disable();
                var originalLoan = await LoansRepo.GetAsync(id: loanId);
                var libEntry = await DocumentEntryRepo.GetAsync(
                    x =>
                        x.DocumentId == originalLoan.DocumentId
                        && x.TenantId == originalLoan.TenantId
                );
                disableTenantFilter.Dispose();
                if (acceptedVotes.Any(predicate: x => x.TenantId == originalLoan.TenantId))
                {
                    originalLoan.ReturnedCopies += physicalCopies;
                    if (originalLoan.PhysicalCopies <= originalLoan.ReturnedCopies)
                    {
                        originalLoan.ReturnedCopies = originalLoan.PhysicalCopies;
                        originalLoan.ActualReturnDate = returnDate;
                    }

                    libEntry.LoanedQuantity -= physicalCopies;

                    await DocumentEntryRepo.UpdateAsync(libEntry);
                    await LoansRepo.UpdateAsync(entity: originalLoan);
                    await PublishProposals(proposals: proposal);
                }

                break;
            case LoanPhysicalDocumentsTransactionInfo(
                var loanId,
                var documentId,
                var personId,
                var physicalCopies,
                var returnDate
            ):
                if (acceptedVotes.Any(predicate: x => x.TenantId.HasValue))
                {
                    var entry = await DocumentEntryRepo.GetAsync(
                        predicate: x => x.DocumentId == documentId
                    );
                    entry.LoanedQuantity += physicalCopies;
                    await DocumentEntryRepo.UpdateAsync(entity: entry);
                    var document = await LoansRepo.InsertAsync(
                        entity: new LibraryLoanEntry(
                            id: loanId,
                            tenantId: proposal.TenantId,
                            documentId: documentId,
                            personId: personId,
                            physicalCopies: physicalCopies,
                            returnDate: returnDate,
                            actualReturnDate: null
                        )
                    );

                    await PublishProposals(proposals: proposal);
                }

                break;
            case CreateAuthorTransactionInfo:
            case CreatePersonTransactionInfo:
                //process if at least 1 tenant (publisher) accepts transaction
                //this automatically succeeds
                if (acceptedVotes.Any(predicate: x => x.TenantId.HasValue))
                {
                    var p = info switch
                    {
                        CreateAuthorTransactionInfo(var authorId, var personInfo)
                            => new Author(id: authorId, info: personInfo),
                        CreatePersonTransactionInfo(var personId, var personInfo)
                            => new Person(id: personId, info: personInfo),
                        _ => throw new NotSupportedException()
                    };
                    p = await PeopleRepository.InsertAsync(entity: p);
                    await PublishProposals(proposals: proposal);
                }

                break;
            case CreateDocumentTransactionInfo(var documentId, var documentInfo, var hashSet):
                //process if at least 1 related tenant (publisher) accepts transaction
                //this automatically succeeds
                if (
                    acceptedVotes.Any()
                    && acceptedVotes.All(
                        predicate: x =>
                            x.TenantId.HasValue && hashSet.Contains(item: x.TenantId.Value)
                    )
                )
                {
                    var document = await DocumentsRepo.InsertAsync(
                        entity: new Document(
                            id: documentId,
                            info: documentInfo,
                            publisherOwners: hashSet
                        )
                    );
                    var entries = hashSet.Select(
                        selector: tenantId =>
                            new AppTenantDocumentEntry(
                                id: GuidGenerator.Create(),
                                tenantId: tenantId,
                                documentId: documentId,
                                ownedQuantity: 0,
                                loanedQuantity: 0,
                                isAvailableOnline: false
                            )
                    );
                    await DocumentEntryRepo.InsertManyAsync(entities: entries);

                    await PublishProposals(proposals: proposal);
                }

                break;
            case RegisterDocumentTransactionInfo(
                var documentId,
                var initialCount,
                var isAvailableOnline
            ):
                //process if at least 1 related tenant (library) accepts transaction
                if (acceptedVotes.Any(predicate: x => proposal.TenantId == x.TenantId))
                {
                    var document = await DocumentEntryRepo.InsertAsync(
                        entity: new AppTenantDocumentEntry(
                            id: GuidGenerator.Create(),
                            tenantId: proposal.TenantId,
                            documentId: documentId,
                            ownedQuantity: initialCount,
                            loanedQuantity: 0,
                            isAvailableOnline: isAvailableOnline
                        )
                    );
                    await PublishProposals(proposals: proposal);
                }

                break;
            case UpdateOwnEntryTransactionInfo(var documentId, var count, var isAvailableOnline):
                //process if at least 1 related tenant (library) accepts transaction
                if (acceptedVotes.Any(predicate: x => proposal.TenantId == x.TenantId))
                {
                    using (CurrentTenant.Change(proposal.TenantId))
                    {
                        var document = await DocumentEntryRepo.GetAsync(
                            x => x.DocumentId == documentId
                        );
                        if (count is { } c)
                        {
                            document.OwnedQuantity = c + document.LoanedQuantity;
                        }

                        if (isAvailableOnline is { } a)
                        {
                            document.IsAvailableOnline = a;
                        }

                        await DocumentEntryRepo.UpdateAsync(document);
                    }

                    await PublishProposals(proposals: proposal);
                }

                break;
            case UpdateDocumentTransactionInfo(var documentId, var documentInfo):
                //get all people who own this document
                using (MultiTenantDataFilter.Disable())
                {
                    var allEntriesByTenant = (
                        await DocumentEntryRepo.GetListAsync(x => x.DocumentId == documentId)
                    )
                        .Where(x => x.TenantId.HasValue)
                        .ToDictionary(x => x.TenantId!.Value);

                    var allTenantIds = allEntriesByTenant.Keys.ToHashSet();
                    var relevantAcceptedVotes = acceptedVotes
                        .IntersectBy(allTenantIds, x => x.TenantId!.Value)
                        .ToList();
                    var acceptedPercent = (double)relevantAcceptedVotes.Count / allTenantIds.Count;
                    if (acceptedPercent > 0.50)
                    {
                        var document = await DocumentsRepo.GetAsync(documentId);
                        document.Info = documentInfo;
                        await DocumentsRepo.UpdateAsync(document);

                        await PublishProposals(proposals: proposal);
                    }
                }

                break;
            case DeleteDocumentTransactionInfo(var documentId):
                //get all people who own this document
                using (MultiTenantDataFilter.Disable())
                {
                    var allEntriesByTenant = (
                        await DocumentEntryRepo.GetListAsync(x => x.DocumentId == documentId)
                    )
                        .Where(x => x.TenantId.HasValue)
                        .ToDictionary(x => x.TenantId!.Value);

                    var allTenantIds = allEntriesByTenant.Keys.ToHashSet();
                    var relevantAcceptedVotes = acceptedVotes
                        .IntersectBy(allTenantIds, x => x.TenantId!.Value)
                        .ToList();
                    var acceptedPercent = (double)relevantAcceptedVotes.Count / allTenantIds.Count;
                    if (acceptedPercent > 0.70)
                    {
                        var document = await DocumentsRepo.GetAsync(documentId);

                        await DocumentsRepo.DeleteAsync(document);

                        await PublishProposals(proposals: proposal);
                    }
                }

                break;
            case UpdatePersonTransactionInfo(var personId, var personInfo):
                using (MultiTenantDataFilter.Disable())
                {
                    var allEntriesByTenant = (
                        await LoansRepo.GetListAsync(x => x.PersonId == personId)
                    )
                        .Where(x => x.TenantId.HasValue)
                        .ToDictionary(x => x.TenantId!.Value);

                    var allTenantIds = allEntriesByTenant.Keys.ToHashSet();
                    var relevantAcceptedVotes = acceptedVotes
                        .IntersectBy(allTenantIds, x => x.TenantId!.Value)
                        .ToList();
                    var acceptedPercent = (double)relevantAcceptedVotes.Count / allTenantIds.Count;
                    if (acceptedPercent > 0.50)
                    {
                        var person = await PeopleRepository.GetAsync(personId);
                        person.Info = personInfo;
                        await PeopleRepository.UpdateAsync(person);

                        await PublishProposals(proposals: proposal);
                    }
                }

                break;
            case UpdateAuthorTransactionInfo(var personId, var personInfo):
                using (MultiTenantDataFilter.Disable())
                {
                    var allLoanEntriesByTenant = (
                        await LoansRepo.GetListAsync(x => x.PersonId == personId)
                    )
                        .Where(x => x.TenantId.HasValue)
                        .ToDictionary(x => x.TenantId!.Value);

                    var allDocumentsThatContainAuthor = (
                        await DocumentsRepo.GetListAsync(x => x.Info.Authors.Contains(personId))
                    )
                        .Select(x => x.Id)
                        .ToHashSet();
                    var allDocumentEntriesByTenant = (
                        await DocumentEntryRepo.GetListAsync(
                            x => allDocumentsThatContainAuthor.Contains(x.DocumentId)
                        )
                    )
                        .Where(x => x.TenantId.HasValue)
                        .ToDictionary(x => x.TenantId!.Value);

                    var allTenantIds = allLoanEntriesByTenant.Keys
                        .Concat(allDocumentEntriesByTenant.Keys)
                        .ToHashSet();
                    var relevantAcceptedVotes = acceptedVotes
                        .IntersectBy(allTenantIds, x => x.TenantId!.Value)
                        .ToList();
                    var acceptedPercent = (double)relevantAcceptedVotes.Count / allTenantIds.Count;
                    if (acceptedPercent > 0.50)
                    {
                        var person = await PeopleRepository.GetAsync(personId);
                        person.Info = personInfo;
                        await PeopleRepository.UpdateAsync(person);

                        await PublishProposals(proposals: proposal);
                    }
                }

                break;
            case DeletePersonTransactionInfo(var personId):
                using (MultiTenantDataFilter.Disable())
                {
                    var person = await PeopleRepository.GetAsync(personId);
                    var allLoanEntriesByTenant = (
                        await LoansRepo.GetListAsync(x => x.PersonId == personId)
                    )
                        .Where(x => x.TenantId.HasValue)
                        .ToDictionary(x => x.TenantId!.Value);

                    var allDocumentsThatContainAuthor = (
                        await DocumentsRepo.GetListAsync(x => x.Info.Authors.Contains(personId))
                    )
                        .Select(x => x.Id)
                        .ToHashSet();
                    var allDocumentEntriesByTenant = (
                        await DocumentEntryRepo.GetListAsync(
                            x => allDocumentsThatContainAuthor.Contains(x.DocumentId)
                        )
                    )
                        .Where(x => x.TenantId.HasValue)
                        .ToDictionary(x => x.TenantId!.Value);

                    var allTenantIds = allLoanEntriesByTenant.Keys
                        .Concat(allDocumentEntriesByTenant.Keys)
                        .ToHashSet();
                    var relevantAcceptedVotes = acceptedVotes
                        .IntersectBy(allTenantIds, x => x.TenantId!.Value)
                        .ToList();
                    var acceptedPercent = (double)relevantAcceptedVotes.Count / allTenantIds.Count;
                    if (acceptedPercent > 0.70)
                    {
                        await PeopleRepository.DeleteAsync(personId);

                        await PublishProposals(proposals: proposal);
                    }
                }

                break;
        }
    }

    private async Task<Block> PublishProposals(params TransactionProposal[] proposals)
    {
        var prevBlock = await BlocksRepo.GetLatestBlock();
        var initialHash = proposals.Select(selector: x => x.CalculatedHash);
        //calculate a hash based on the previous block's hash only (no nonce)
        var toHash = initialHash.Prepend(element: prevBlock?.PreviousBlockHash).WhereNotNull();
        var finalHash = TransactionInfo.QuickHash(input: toHash);
        var b = new Block(
            blockHash: finalHash,
            transactions: proposals.Select(selector: Transaction.FromProposal).ToList(),
            previousBlockHash: prevBlock?.Id,
            creationTime: Clock.Now
        );
        b = await BlocksRepo.InsertAsync(entity: b);
        foreach (var p in proposals)
        {
            p.CompletionResult = true;
            p.CompletedAt = Clock.Now;
        }

        await ProposalsRepo.UpdateManyAsync(entities: proposals);
        return b;
    }

    private async Task RejectProposal(params TransactionProposal[] proposals)
    {
        foreach (var p in proposals)
        {
            p.CompletionResult = false;
            p.CompletedAt = Clock.Now;
        }

        await ProposalsRepo.UpdateManyAsync(entities: proposals);
    }
}
