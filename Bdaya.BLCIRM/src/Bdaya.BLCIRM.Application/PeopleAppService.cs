using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Bdaya.BLCIRM.State;
using Bdaya.BLCIRM.State.People;
using JetBrains.Annotations;
using Microsoft.AspNetCore.Authorization;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;
using Volo.Abp.Authorization;
using Volo.Abp.Domain.Repositories;
using Volo.Abp.MultiTenancy;

namespace Bdaya.BLCIRM;

[UsedImplicitly]
public class PeopleAppService
    : ReadOnlyAppService<Person, PersonDto, Guid, PagedAndSortedResultRequestDto>,
        ICreateAppService<TransactionProposalDto, CreatePersonDto>,
        IUpdateAppService<TransactionProposalDto, Guid, CreatePersonDto>
        
{
    private IRepository<TransactionProposal, Guid> ProposalsRepository { get; }
    private IAppTenantRepository AppTenantRepository { get; }
    private IBLCIRMAsyncMapper AsyncMapper { get; }

    public PeopleAppService(
        IRepository<Person, Guid> repository,
        IAppTenantRepository appTenantRepository,
        IRepository<TransactionProposal, Guid> proposalsRepository,
        IBLCIRMAsyncMapper asyncMapper
    )
        : base(repository: repository)
    {
        AppTenantRepository = appTenantRepository;
        ProposalsRepository = proposalsRepository;
        AsyncMapper = asyncMapper;
    }

    protected override PersonDto MapToGetOutputDto(Person entity)
    {
        var result = base.MapToGetOutputDto(entity: entity);
        return result;
    }

    [Authorize]
    public async Task<TransactionProposalDto> CreateAsync(CreatePersonDto input)
    {
        var tenantId = CurrentTenant.GetId();
        var tenant = await AppTenantRepository.GetAsync(id: tenantId);
        var uid = CurrentUser.Id!.Value;

        if (input is CreateAuthorDto && tenant is not (PublisherTenant or TrustedTenant))
        {
            throw new AbpAuthorizationException(
                message: "Tenant must be either a publisher or a trusted tenant to create an author"
            );
        }

        if (tenant is not (LibraryTenant or PublisherTenant or TrustedTenant))
        {
            throw new AbpAuthorizationException(
                message: "Tenant must be either a publisher or a trusted or a library tenant"
            );
        }

        var mapped = ObjectMapper.Map<CreatePersonDto, PersonInfo>(source: input);
        var newId = GuidGenerator.Create();

        var proposal = new TransactionProposal(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            info: input is CreateAuthorDto
                ? new CreateAuthorTransactionInfo(AuthorId: newId, Info: mapped)
                : new CreatePersonTransactionInfo(PersonId: newId, Info: mapped)
        );
        proposal.AddVote(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            result: true,
            notes: null,
            userId: uid,
            now: Clock.Now
        );
        proposal = await ProposalsRepository.InsertAsync(entity: proposal);

        return await AsyncMapper.MapAsync(input: proposal);
    }

    [Authorize]
    public async Task<TransactionProposalDto> UpdateAsync(Guid id, CreatePersonDto input)
    {
        var tenantId = CurrentTenant.GetId();
        var tenant = await AppTenantRepository.GetAsync(id: tenantId);
        var uid = CurrentUser.Id!.Value;

        if (input is CreateAuthorDto && tenant is not (PublisherTenant or TrustedTenant))
        {
            throw new AbpAuthorizationException(
                message: "Tenant must be either a publisher or a trusted tenant to update an author"
            );
        }

        if (tenant is not (LibraryTenant or PublisherTenant or TrustedTenant))
        {
            throw new AbpAuthorizationException(
                message: "Tenant must be either a publisher or a trusted or a library tenant"
            );
        }

        var mapped = ObjectMapper.Map<CreatePersonDto, PersonInfo>(source: input);

        var proposal = new TransactionProposal(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            info: input is CreateAuthorDto
                ? new UpdateAuthorTransactionInfo(AuthorId: id, Info: mapped)
                : new UpdatePersonTransactionInfo(PersonId: id, Info: mapped)
        );
        proposal.AddVote(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            result: true,
            notes: null,
            userId: uid,
            now: Clock.Now
        );
        proposal = await ProposalsRepository.InsertAsync(entity: proposal);

        return await AsyncMapper.MapAsync(input: proposal);
    }

    public async Task<TransactionProposalDto> DeleteAsync(Guid id)
    {
        var tenantId = CurrentTenant.GetId();
        var tenant = await AppTenantRepository.GetAsync(id: tenantId);
        var uid = CurrentUser.Id!.Value;

        if (tenant is not (PublisherTenant or TrustedTenant))
        {
            throw new AbpAuthorizationException(
                message: "Tenant must be either a publisher or a trusted tenant to update an author"
            );
        }

        if (tenant is not (LibraryTenant or PublisherTenant or TrustedTenant))
        {
            throw new AbpAuthorizationException(
                message: "Tenant must be either a publisher or a trusted or a library tenant"
            );
        }

        var proposal = new TransactionProposal(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            info: new DeletePersonTransactionInfo(PersonId: id)
        );
        proposal.AddVote(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            result: true,
            notes: null,
            userId: uid,
            now: Clock.Now
        );
        proposal = await ProposalsRepository.InsertAsync(entity: proposal);

        return await AsyncMapper.MapAsync(input: proposal);
    }
}
