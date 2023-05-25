// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_return_loan_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateReturnLoanDto extends BdayaBLCIRMStateReturnLoanDto {
  @override
  final int? physicalCopies;
  @override
  final DateTime? returnDate;

  factory _$BdayaBLCIRMStateReturnLoanDto(
          [void Function(BdayaBLCIRMStateReturnLoanDtoBuilder)? updates]) =>
      (new BdayaBLCIRMStateReturnLoanDtoBuilder()..update(updates))._build();

  _$BdayaBLCIRMStateReturnLoanDto._({this.physicalCopies, this.returnDate})
      : super._();

  @override
  BdayaBLCIRMStateReturnLoanDto rebuild(
          void Function(BdayaBLCIRMStateReturnLoanDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateReturnLoanDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateReturnLoanDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateReturnLoanDto &&
        physicalCopies == other.physicalCopies &&
        returnDate == other.returnDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, physicalCopies.hashCode);
    _$hash = $jc(_$hash, returnDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMStateReturnLoanDto')
          ..add('physicalCopies', physicalCopies)
          ..add('returnDate', returnDate))
        .toString();
  }
}

class BdayaBLCIRMStateReturnLoanDtoBuilder
    implements
        Builder<BdayaBLCIRMStateReturnLoanDto,
            BdayaBLCIRMStateReturnLoanDtoBuilder> {
  _$BdayaBLCIRMStateReturnLoanDto? _$v;

  int? _physicalCopies;
  int? get physicalCopies => _$this._physicalCopies;
  set physicalCopies(int? physicalCopies) =>
      _$this._physicalCopies = physicalCopies;

  DateTime? _returnDate;
  DateTime? get returnDate => _$this._returnDate;
  set returnDate(DateTime? returnDate) => _$this._returnDate = returnDate;

  BdayaBLCIRMStateReturnLoanDtoBuilder() {
    BdayaBLCIRMStateReturnLoanDto._defaults(this);
  }

  BdayaBLCIRMStateReturnLoanDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _physicalCopies = $v.physicalCopies;
      _returnDate = $v.returnDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateReturnLoanDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateReturnLoanDto;
  }

  @override
  void update(void Function(BdayaBLCIRMStateReturnLoanDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateReturnLoanDto build() => _build();

  _$BdayaBLCIRMStateReturnLoanDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMStateReturnLoanDto._(
            physicalCopies: physicalCopies, returnDate: returnDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
