// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_create_loan_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateCreateLoanDto extends BdayaBLCIRMStateCreateLoanDto {
  @override
  final String? documentId;
  @override
  final String? personId;
  @override
  final int? physicalCopies;
  @override
  final DateTime? returnDate;

  factory _$BdayaBLCIRMStateCreateLoanDto(
          [void Function(BdayaBLCIRMStateCreateLoanDtoBuilder)? updates]) =>
      (new BdayaBLCIRMStateCreateLoanDtoBuilder()..update(updates))._build();

  _$BdayaBLCIRMStateCreateLoanDto._(
      {this.documentId, this.personId, this.physicalCopies, this.returnDate})
      : super._();

  @override
  BdayaBLCIRMStateCreateLoanDto rebuild(
          void Function(BdayaBLCIRMStateCreateLoanDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateCreateLoanDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateCreateLoanDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateCreateLoanDto &&
        documentId == other.documentId &&
        personId == other.personId &&
        physicalCopies == other.physicalCopies &&
        returnDate == other.returnDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, physicalCopies.hashCode);
    _$hash = $jc(_$hash, returnDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMStateCreateLoanDto')
          ..add('documentId', documentId)
          ..add('personId', personId)
          ..add('physicalCopies', physicalCopies)
          ..add('returnDate', returnDate))
        .toString();
  }
}

class BdayaBLCIRMStateCreateLoanDtoBuilder
    implements
        Builder<BdayaBLCIRMStateCreateLoanDto,
            BdayaBLCIRMStateCreateLoanDtoBuilder> {
  _$BdayaBLCIRMStateCreateLoanDto? _$v;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(String? documentId) => _$this._documentId = documentId;

  String? _personId;
  String? get personId => _$this._personId;
  set personId(String? personId) => _$this._personId = personId;

  int? _physicalCopies;
  int? get physicalCopies => _$this._physicalCopies;
  set physicalCopies(int? physicalCopies) =>
      _$this._physicalCopies = physicalCopies;

  DateTime? _returnDate;
  DateTime? get returnDate => _$this._returnDate;
  set returnDate(DateTime? returnDate) => _$this._returnDate = returnDate;

  BdayaBLCIRMStateCreateLoanDtoBuilder() {
    BdayaBLCIRMStateCreateLoanDto._defaults(this);
  }

  BdayaBLCIRMStateCreateLoanDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentId = $v.documentId;
      _personId = $v.personId;
      _physicalCopies = $v.physicalCopies;
      _returnDate = $v.returnDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateCreateLoanDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateCreateLoanDto;
  }

  @override
  void update(void Function(BdayaBLCIRMStateCreateLoanDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateCreateLoanDto build() => _build();

  _$BdayaBLCIRMStateCreateLoanDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMStateCreateLoanDto._(
            documentId: documentId,
            personId: personId,
            physicalCopies: physicalCopies,
            returnDate: returnDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
