// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_return_loan_physical_documents_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto
    extends BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto {
  @override
  final DateTime? returnDate;
  @override
  final String? loanId;
  @override
  final int? physicalCopies;
  @override
  final String? dollarType;

  factory _$BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto(
          [void Function(
                  BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder()
            ..update(updates))
          ._build();

  _$BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto._(
      {this.returnDate, this.loanId, this.physicalCopies, this.dollarType})
      : super._();

  @override
  BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto rebuild(
          void Function(
                  BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto &&
        returnDate == other.returnDate &&
        loanId == other.loanId &&
        physicalCopies == other.physicalCopies &&
        dollarType == other.dollarType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, returnDate.hashCode);
    _$hash = $jc(_$hash, loanId.hashCode);
    _$hash = $jc(_$hash, physicalCopies.hashCode);
    _$hash = $jc(_$hash, dollarType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto')
          ..add('returnDate', returnDate)
          ..add('loanId', loanId)
          ..add('physicalCopies', physicalCopies)
          ..add('dollarType', dollarType))
        .toString();
  }
}

class BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto,
            BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder>,
        BdayaBLCIRMStateTransactionInfoDtoBuilder {
  _$BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto? _$v;

  DateTime? _returnDate;
  DateTime? get returnDate => _$this._returnDate;
  set returnDate(covariant DateTime? returnDate) =>
      _$this._returnDate = returnDate;

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

  BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder() {
    BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto._defaults(this);
  }

  BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _returnDate = $v.returnDate;
      _loanId = $v.loanId;
      _physicalCopies = $v.physicalCopies;
      _dollarType = $v.dollarType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      covariant BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto;
  }

  @override
  void update(
      void Function(
              BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto build() => _build();

  _$BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto._(
            returnDate: returnDate,
            loanId: loanId,
            physicalCopies: physicalCopies,
            dollarType: dollarType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
