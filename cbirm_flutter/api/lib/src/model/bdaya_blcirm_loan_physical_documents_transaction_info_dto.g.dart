// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_loan_physical_documents_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto
    extends BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto {
  @override
  final DateTime? returnDate;
  @override
  final String? documentId;
  @override
  final String? personId;
  @override
  final String? loanId;
  @override
  final int? physicalCopies;
  @override
  final String? dollarType;

  factory _$BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto(
          [void Function(
                  BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder()
            ..update(updates))
          ._build();

  _$BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto._(
      {this.returnDate,
      this.documentId,
      this.personId,
      this.loanId,
      this.physicalCopies,
      this.dollarType})
      : super._();

  @override
  BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto rebuild(
          void Function(
                  BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto &&
        returnDate == other.returnDate &&
        documentId == other.documentId &&
        personId == other.personId &&
        loanId == other.loanId &&
        physicalCopies == other.physicalCopies &&
        dollarType == other.dollarType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, returnDate.hashCode);
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, loanId.hashCode);
    _$hash = $jc(_$hash, physicalCopies.hashCode);
    _$hash = $jc(_$hash, dollarType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto')
          ..add('returnDate', returnDate)
          ..add('documentId', documentId)
          ..add('personId', personId)
          ..add('loanId', loanId)
          ..add('physicalCopies', physicalCopies)
          ..add('dollarType', dollarType))
        .toString();
  }
}

class BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto,
            BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder>,
        BdayaBLCIRMStateTransactionInfoDtoBuilder {
  _$BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto? _$v;

  DateTime? _returnDate;
  DateTime? get returnDate => _$this._returnDate;
  set returnDate(covariant DateTime? returnDate) =>
      _$this._returnDate = returnDate;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(covariant String? documentId) =>
      _$this._documentId = documentId;

  String? _personId;
  String? get personId => _$this._personId;
  set personId(covariant String? personId) => _$this._personId = personId;

  String? _loanId;
  String? get loanId => _$this._loanId;
  set loanId(covariant String? loanId) => _$this._loanId = loanId;

  int? _physicalCopies;
  int? get physicalCopies => _$this._physicalCopies;
  set physicalCopies(covariant int? physicalCopies) =>
      _$this._physicalCopies = physicalCopies;

  String? _dollarType;
  String? get dollarType => _$this._dollarType;
  set dollarType(covariant String? dollarType) =>
      _$this._dollarType = dollarType;

  BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder() {
    BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto._defaults(this);
  }

  BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _returnDate = $v.returnDate;
      _documentId = $v.documentId;
      _personId = $v.personId;
      _loanId = $v.loanId;
      _physicalCopies = $v.physicalCopies;
      _dollarType = $v.dollarType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      covariant BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto build() => _build();

  _$BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto._(
            returnDate: returnDate,
            documentId: documentId,
            personId: personId,
            loanId: loanId,
            physicalCopies: physicalCopies,
            dollarType: dollarType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
