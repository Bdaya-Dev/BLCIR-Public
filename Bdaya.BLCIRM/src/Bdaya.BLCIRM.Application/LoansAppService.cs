using Microsoft.AspNetCore.Authorization;
using Volo.Abp.Authorization;
using Volo.Abp.Data;
using Volo.Abp.MultiTenancy;
using Volo.Abp.Users;

namespace Bdaya.BLCIRM;

using System;
using Volo.Abp.Domain.Repositories;
using Bdaya.BLCIRM.State;
using System.Threading.Tasks;
using Volo.Abp.Application.Services;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using Volo.Abp.Application.Dtos;
using System.Linq;

public class LoansAppService
    : ReadOnlyAppService<LibraryLoanEntry, LoanDetailsDto, Guid>,
        ILoansAppService
{
    private IAppTenantRepository AppTenantRepository { get; }
    private IDataFilter<IMultiTenant> MultiTenantFilter { get; }
    private IRepository<TransactionProposal, Guid> TransactionsRepo { get; }
    private IBLCIRMAsyncMapper AsyncMapper { get; }

    public LoansAppService(
        IRepository<LibraryLoanEntry, Guid> repository,
        IAppTenantRepository appTenantRepository,
        IDataFilter<IMultiTenant> multiTenantFilter,
        IRepository<TransactionProposal, Guid> transactionsRepo,
        IBLCIRMAsyncMapper asyncMapper
    )
        : base(repository: repository)
    {
        AppTenantRepository = appTenantRepository;
        MultiTenantFilter = multiTenantFilter;
        TransactionsRepo = transactionsRepo;
        AsyncMapper = asyncMapper;
    }

    [Authorize]
    public async Task<PagedResultDto<LoanDetailsDto>> GetRelatedLoansAsync(
        [FromQuery] GetLoansRelatedToDocumentDto input
    )
    {
        var query = await CreateFilteredQueryAsync(input: input);
        var totalCount = await AsyncExecuter.CountAsync(queryable: query);

        var entityDtos = new List<LoanDetailsDto>();

        if (totalCount <= 0)
        {
            return new PagedResultDto<LoanDetailsDto>(totalCount: totalCount, items: entityDtos);
        }

        query = query.Where(predicate: x => x.DocumentId == input.DocumentId);
        query = ApplySorting(query: query, input: input);
        query = ApplyPaging(query: query, input: input);

        var entities = await AsyncExecuter.ToListAsync(queryable: query);
        entityDtos = await MapToGetListOutputDtosAsync(entities: entities);
        return new PagedResultDto<LoanDetailsDto>(totalCount: totalCount, items: entityDtos);
    }

    [Authorize]
    public async Task<TransactionProposalDto> CreateAsync([FromBody] CreateLoanDto input)
    {
        var tenantId = CurrentTenant.GetId();
        var tenant = await AppTenantRepository.GetAsync(id: tenantId);
        var uid = CurrentUser.GetId();
        //anyone can loan
        var proposal = new TransactionProposal(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            info: new LoanPhysicalDocumentsTransactionInfo(
                LoanId: GuidGenerator.Create(),
                DocumentId: input.DocumentId,
                PersonId: input.PersonId,
                PhysicalCopies: input.PhysicalCopies,
                ReturnDate: input.ReturnDate.HasValue
                    ? DateOnly.FromDateTime(input.ReturnDate.Value)
                    : default
            )
        );
        proposal.AddVote(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            result: true,
            notes: null,
            userId: uid,
            now: Clock.Now
        );
        proposal = await TransactionsRepo.InsertAsync(entity: proposal);

        return await AsyncMapper.MapAsync(input: proposal);
    }
    
    [Authorize]
    public async Task<TransactionProposalDto> ReturnLoanAsync(
        [FromRoute] Guid loanId,
        [FromBody] ReturnLoanDto input)
    {
        var tenantId = CurrentTenant.GetId();
        var tenant = await AppTenantRepository.GetAsync(id: tenantId);
        var uid = CurrentUser.GetId();
        var loan = await Repository.GetAsync(loanId);

        var proposal = new TransactionProposal(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            info: new ReturnLoanPhysicalDocumentsTransactionInfo(
                LoanId: loanId,
                PhysicalCopies: input.PhysicalCopies,
                ReturnDate: input.ReturnDate
            )
        );
        proposal.AddVote(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            result: true,
            notes: null,
            userId: uid,
            now: Clock.Now
        );
        proposal = await TransactionsRepo.InsertAsync(entity: proposal);

        return await AsyncMapper.MapAsync(input: proposal);
    }

    public async Task<FullLoanDetailsDto> GetFullLoanDetails(Guid loanId)
    {
        var loan = await Repository.GetAsync(id: loanId);
        return (await AsyncMapper.MapAsync(docs: new[] { loan })).First();
    }
}