using System.Text.Json.Serialization;

namespace Bdaya.BLCIRM.State;

using System;
using Volo.Abp.Application.Dtos;

[JsonPolymorphic(
    TypeDiscriminatorPropertyName = "type",
    UnknownDerivedTypeHandling = JsonUnknownDerivedTypeHandling.FailSerialization,
    IgnoreUnrecognizedTypeDiscriminators = false
)]
[JsonDerivedType(derivedType: typeof(PersonDto), typeDiscriminator: "person")]
[JsonDerivedType(derivedType: typeof(AuthorDto), typeDiscriminator: "author")]
public class PersonDto : FullAuditedEntityDto<Guid>
{
    public required PersonInfoDto Info { get; set; }
}