// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_update_person_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMUpdatePersonTransactionInfoDto
    extends BdayaBLCIRMUpdatePersonTransactionInfoDto {
  @override
  final String? personId;
  @override
  final BdayaBLCIRMStatePersonInfoDto? info;
  @override
  final String? dollarType;

  factory _$BdayaBLCIRMUpdatePersonTransactionInfoDto(
          [void Function(BdayaBLCIRMUpdatePersonTransactionInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMUpdatePersonTransactionInfoDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMUpdatePersonTransactionInfoDto._(
      {this.personId, this.info, this.dollarType})
      : super._();

  @override
  BdayaBLCIRMUpdatePersonTransactionInfoDto rebuild(
          void Function(BdayaBLCIRMUpdatePersonTransactionInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMUpdatePersonTransactionInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMUpdatePersonTransactionInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMUpdatePersonTransactionInfoDto &&
        personId == other.personId &&
        info == other.info &&
        dollarType == other.dollarType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, dollarType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMUpdatePersonTransactionInfoDto')
          ..add('personId', personId)
          ..add('info', info)
          ..add('dollarType', dollarType))
        .toString();
  }
}

class BdayaBLCIRMUpdatePersonTransactionInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMUpdatePersonTransactionInfoDto,
            BdayaBLCIRMUpdatePersonTransactionInfoDtoBuilder>,
        BdayaBLCIRMStateTransactionInfoDtoBuilder {
  _$BdayaBLCIRMUpdatePersonTransactionInfoDto? _$v;

  String? _personId;
  String? get personId => _$this._personId;
  set personId(covariant String? personId) => _$this._personId = personId;

  BdayaBLCIRMStatePersonInfoDtoBuilder? _info;
  BdayaBLCIRMStatePersonInfoDtoBuilder get info =>
      _$this._info ??= new BdayaBLCIRMStatePersonInfoDtoBuilder();
  set info(covariant BdayaBLCIRMStatePersonInfoDtoBuilder? info) =>
      _$this._info = info;

  String? _dollarType;
  String? get dollarType => _$this._dollarType;
  set dollarType(covariant String? dollarType) =>
      _$this._dollarType = dollarType;

  BdayaBLCIRMUpdatePersonTransactionInfoDtoBuilder() {
    BdayaBLCIRMUpdatePersonTransactionInfoDto._defaults(this);
  }

  BdayaBLCIRMUpdatePersonTransactionInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _personId = $v.personId;
      _info = $v.info?.toBuilder();
      _dollarType = $v.dollarType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BdayaBLCIRMUpdatePersonTransactionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMUpdatePersonTransactionInfoDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMUpdatePersonTransactionInfoDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMUpdatePersonTransactionInfoDto build() => _build();

  _$BdayaBLCIRMUpdatePersonTransactionInfoDto _build() {
    _$BdayaBLCIRMUpdatePersonTransactionInfoDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMUpdatePersonTransactionInfoDto._(
              personId: personId, info: _info?.build(), dollarType: dollarType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMUpdatePersonTransactionInfoDto',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
