namespace Bdaya.BLCIRM.State;

using System.Text.Json.Serialization;

[JsonPolymorphic(
    TypeDiscriminatorPropertyName = "$type",
    UnknownDerivedTypeHandling = JsonUnknownDerivedTypeHandling.FailSerialization,
    IgnoreUnrecognizedTypeDiscriminators = false
)]
[JsonDerivedType(
    derivedType: typeof(CreateAuthorTransactionInfoDto),
    typeDiscriminator: "create-author"
)]
[JsonDerivedType(
    derivedType: typeof(UpdateAuthorTransactionInfoDto),
    typeDiscriminator: "update-author"
)]
[JsonDerivedType(
    derivedType: typeof(CreateDocumentTransactionInfoDto),
    typeDiscriminator: "create-document"
)]
[JsonDerivedType(
    derivedType: typeof(UpdateDocumentTransactionInfoDto),
    typeDiscriminator: "update-document"
)]
[JsonDerivedType(
    derivedType: typeof(DeleteDocumentTransactionInfoDto),
    typeDiscriminator: "delete-document"
)]
[JsonDerivedType(
    derivedType: typeof(UpdateOwnEntryTransactionInfoDto),
    typeDiscriminator: "update-own-entry"
)]
[JsonDerivedType(
    derivedType: typeof(LoanPhysicalDocumentsTransactionInfoDto),
    typeDiscriminator: "loan-document"
)]
[JsonDerivedType(
    derivedType: typeof(ReturnLoanPhysicalDocumentsTransactionInfoDto),
    typeDiscriminator: "return-loan-document"
)]
[JsonDerivedType(
    derivedType: typeof(CreatePersonTransactionInfoDto),
    typeDiscriminator: "create-person"
)]
[JsonDerivedType(
    derivedType: typeof(UpdatePersonTransactionInfoDto),
    typeDiscriminator: "update-person"
)]
[JsonDerivedType(
    derivedType: typeof(DeletePersonTransactionInfoDto),
    typeDiscriminator: "delete-person"
)]
[JsonDerivedType(
    derivedType: typeof(TransferPhysicalDocumentsTransactionInfoDto),
    typeDiscriminator: "transfer-document"
)]
[JsonDerivedType(
    derivedType: typeof(RegisterDocumentTransactionInfoDto),
    typeDiscriminator: "register-document"
)]
public class TransactionInfoDto { }
