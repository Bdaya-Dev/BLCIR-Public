using System.Text.Json.Serialization;

namespace Bdaya.BLCIRM.State.People;

[JsonPolymorphic(
    TypeDiscriminatorPropertyName = "type",
    UnknownDerivedTypeHandling = JsonUnknownDerivedTypeHandling.FailSerialization,
    IgnoreUnrecognizedTypeDiscriminators = false
)]
[JsonDerivedType(derivedType: typeof(CreatePersonDto), typeDiscriminator: "person")]
[JsonDerivedType(derivedType: typeof(CreateAuthorDto), typeDiscriminator: "author")]
public class CreatePersonDto
{
    public required PersonInfoDto Info { get; set; }
}

public class CreateAuthorDto : CreatePersonDto
{
    
}