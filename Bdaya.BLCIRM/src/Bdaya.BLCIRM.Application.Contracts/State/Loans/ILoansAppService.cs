using System;
using System.Threading.Tasks;
using Bdaya.BLCIRM.State;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;

namespace Bdaya.BLCIRM;

public interface ILoansAppService
    : IReadOnlyAppService<LoanDetailsDto, Guid>,
        ICreateAppService<TransactionProposalDto, CreateLoanDto>
{
    Task<PagedResultDto<LoanDetailsDto>> GetRelatedLoansAsync(GetLoansRelatedToDocumentDto input);

    Task<FullLoanDetailsDto> GetFullLoanDetails(Guid loanId);
}
