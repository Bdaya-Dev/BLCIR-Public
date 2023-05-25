namespace Bdaya.BLCIRM.State;
using System;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Domain.Entities.Auditing;

public class DocumentDto : FullAuditedEntityDto<Guid>
{
    public required DocumentInfoDto Info { get; set; }
}
