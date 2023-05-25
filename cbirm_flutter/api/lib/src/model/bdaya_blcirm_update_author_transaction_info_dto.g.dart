// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_update_author_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMUpdateAuthorTransactionInfoDto
    extends BdayaBLCIRMUpdateAuthorTransactionInfoDto {
  @override
  final String? authorId;
  @override
  final BdayaBLCIRMStatePersonInfoDto? info;
  @override
  final String? dollarType;

  factory _$BdayaBLCIRMUpdateAuthorTransactionInfoDto(
          [void Function(BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMUpdateAuthorTransactionInfoDto._(
      {this.authorId, this.info, this.dollarType})
      : super._();

  @override
  BdayaBLCIRMUpdateAuthorTransactionInfoDto rebuild(
          void Function(BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMUpdateAuthorTransactionInfoDto &&
        authorId == other.authorId &&
        info == other.info &&
        dollarType == other.dollarType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorId.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, dollarType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMUpdateAuthorTransactionInfoDto')
          ..add('authorId', authorId)
          ..add('info', info)
          ..add('dollarType', dollarType))
        .toString();
  }
}

class BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMUpdateAuthorTransactionInfoDto,
            BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder>,
        BdayaBLCIRMStateTransactionInfoDtoBuilder {
  _$BdayaBLCIRMUpdateAuthorTransactionInfoDto? _$v;

  String? _authorId;
  String? get authorId => _$this._authorId;
  set authorId(covariant String? authorId) => _$this._authorId = authorId;

  BdayaBLCIRMStatePersonInfoDtoBuilder? _info;
  BdayaBLCIRMStatePersonInfoDtoBuilder get info =>
      _$this._info ??= new BdayaBLCIRMStatePersonInfoDtoBuilder();
  set info(covariant BdayaBLCIRMStatePersonInfoDtoBuilder? info) =>
      _$this._info = info;

  String? _dollarType;
  String? get dollarType => _$this._dollarType;
  set dollarType(covariant String? dollarType) =>
      _$this._dollarType = dollarType;

  BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder() {
    BdayaBLCIRMUpdateAuthorTransactionInfoDto._defaults(this);
  }

  BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorId = $v.authorId;
      _info = $v.info?.toBuilder();
      _dollarType = $v.dollarType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BdayaBLCIRMUpdateAuthorTransactionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMUpdateAuthorTransactionInfoDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMUpdateAuthorTransactionInfoDto build() => _build();

  _$BdayaBLCIRMUpdateAuthorTransactionInfoDto _build() {
    _$BdayaBLCIRMUpdateAuthorTransactionInfoDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMUpdateAuthorTransactionInfoDto._(
              authorId: authorId, info: _info?.build(), dollarType: dollarType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMUpdateAuthorTransactionInfoDto',
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
