using System.Collections.Generic;
using System.Linq;
using System.Linq.Dynamic.Core;
using System.Threading.Tasks;
using Bdaya.BLCIRM.Permissions;
using JetBrains.Annotations;
using Microsoft.AspNetCore.Authorization;
using Volo.Abp.Application.Dtos;
using Volo.Abp.MultiTenancy;
using Volo.Abp.Users;

namespace Bdaya.BLCIRM;

using System;
using Volo.Abp.Domain.Repositories;
using State;
using Volo.Abp.Application.Services;

public class VotingAppService
    : ReadOnlyAppService<TransactionProposal, TransactionProposalDto, Guid>,
        IUpdateAppService<TransactionProposalDto, Guid, VoteForTransactionProposalDto>
{
    private IBLCIRMAsyncMapper AsyncMapper { get; }

    public VotingAppService(
        IRepository<TransactionProposal, Guid> repository,
        IBLCIRMAsyncMapper asyncMapper
    )
        : base(repository: repository)
    {
        AsyncMapper = asyncMapper;
    }

    private new IRepository<TransactionProposal, Guid> Repository =>
        (IRepository<TransactionProposal, Guid>)base.Repository;

    protected override Task<List<TransactionProposalDto>> MapToGetListOutputDtosAsync(
        List<TransactionProposal> entities
    )
    {
        return AsyncMapper.MapAsync(input: entities);
    }

    protected override Task<TransactionProposalDto> MapToGetOutputDtoAsync(
        TransactionProposal entity
    )
    {
        return AsyncMapper.MapAsync(input: entity);
    }

    [UsedImplicitly]
    public async Task<PagedResultDto<TransactionProposalDto>> GetPendingTransactionsAsync(
        PagedAndSortedResultRequestDto input
    )
    {
        using var _ = DataFilter.Disable<IMultiTenant>();
        var query = await CreateFilteredQueryAsync(input: input);
        query = query.Where(predicate: z => z.CompletionResult == null);
        var totalCount = await AsyncExecuter.CountAsync(queryable: query);

        var entityDtos = new List<TransactionProposalDto>();

        // ReSharper disable once InvertIf
        if (totalCount > 0)
        {
            query = ApplySorting(query: query, input: input);
            query = ApplyPaging(query: query, input: input);

            var entities = await AsyncExecuter.ToListAsync(queryable: query);
            entityDtos = await MapToGetListOutputDtosAsync(entities: entities);
        }

        return new PagedResultDto<TransactionProposalDto>(totalCount: totalCount, items: entityDtos);
    }

    [Authorize(policy: BLCIRMPermissions.Voting.Default)]
    public async Task<TransactionProposalDto> UpdateAsync(
        Guid id,
        VoteForTransactionProposalDto input
    )
    {
        using var _ = DataFilter.Disable<IMultiTenant>();
        var proposal = await Repository.GetAsync(id: id);
        proposal.AddVote(
            id: GuidGenerator.Create(),
            tenantId: CurrentTenant.GetId(),
            result: input.Result,
            notes: input.Notes,
            userId: CurrentUser.GetId(),
            now: Clock.Now
        );
        await Repository.UpdateAsync(entity: proposal);
        return await MapToGetOutputDtoAsync(entity: proposal);
    }
}