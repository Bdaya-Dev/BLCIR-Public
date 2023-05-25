// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_delete_person_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMDeletePersonTransactionInfoDto
    extends BdayaBLCIRMDeletePersonTransactionInfoDto {
  @override
  final String? personId;
  @override
  final BdayaBLCIRMStatePersonInfoDto? info;
  @override
  final String? dollarType;

  factory _$BdayaBLCIRMDeletePersonTransactionInfoDto(
          [void Function(BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMDeletePersonTransactionInfoDto._(
      {this.personId, this.info, this.dollarType})
      : super._();

  @override
  BdayaBLCIRMDeletePersonTransactionInfoDto rebuild(
          void Function(BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMDeletePersonTransactionInfoDto &&
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
            r'BdayaBLCIRMDeletePersonTransactionInfoDto')
          ..add('personId', personId)
          ..add('info', info)
          ..add('dollarType', dollarType))
        .toString();
  }
}

class BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMDeletePersonTransactionInfoDto,
            BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder>,
        BdayaBLCIRMStateTransactionInfoDtoBuilder {
  _$BdayaBLCIRMDeletePersonTransactionInfoDto? _$v;

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

  BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder() {
    BdayaBLCIRMDeletePersonTransactionInfoDto._defaults(this);
  }

  BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder get _$this {
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
  void replace(covariant BdayaBLCIRMDeletePersonTransactionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMDeletePersonTransactionInfoDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMDeletePersonTransactionInfoDto build() => _build();

  _$BdayaBLCIRMDeletePersonTransactionInfoDto _build() {
    _$BdayaBLCIRMDeletePersonTransactionInfoDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMDeletePersonTransactionInfoDto._(
              personId: personId, info: _info?.build(), dollarType: dollarType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMDeletePersonTransactionInfoDto',
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
