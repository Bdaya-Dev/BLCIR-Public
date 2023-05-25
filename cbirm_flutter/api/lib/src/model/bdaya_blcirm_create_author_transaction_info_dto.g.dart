// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_create_author_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMCreateAuthorTransactionInfoDto
    extends BdayaBLCIRMCreateAuthorTransactionInfoDto {
  @override
  final String? authorId;
  @override
  final BdayaBLCIRMStatePersonInfoDto? info;
  @override
  final String? dollarType;

  factory _$BdayaBLCIRMCreateAuthorTransactionInfoDto(
          [void Function(BdayaBLCIRMCreateAuthorTransactionInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMCreateAuthorTransactionInfoDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMCreateAuthorTransactionInfoDto._(
      {this.authorId, this.info, this.dollarType})
      : super._();

  @override
  BdayaBLCIRMCreateAuthorTransactionInfoDto rebuild(
          void Function(BdayaBLCIRMCreateAuthorTransactionInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMCreateAuthorTransactionInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMCreateAuthorTransactionInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMCreateAuthorTransactionInfoDto &&
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
            r'BdayaBLCIRMCreateAuthorTransactionInfoDto')
          ..add('authorId', authorId)
          ..add('info', info)
          ..add('dollarType', dollarType))
        .toString();
  }
}

class BdayaBLCIRMCreateAuthorTransactionInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMCreateAuthorTransactionInfoDto,
            BdayaBLCIRMCreateAuthorTransactionInfoDtoBuilder>,
        BdayaBLCIRMStateTransactionInfoDtoBuilder {
  _$BdayaBLCIRMCreateAuthorTransactionInfoDto? _$v;

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

  BdayaBLCIRMCreateAuthorTransactionInfoDtoBuilder() {
    BdayaBLCIRMCreateAuthorTransactionInfoDto._defaults(this);
  }

  BdayaBLCIRMCreateAuthorTransactionInfoDtoBuilder get _$this {
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
  void replace(covariant BdayaBLCIRMCreateAuthorTransactionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMCreateAuthorTransactionInfoDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMCreateAuthorTransactionInfoDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMCreateAuthorTransactionInfoDto build() => _build();

  _$BdayaBLCIRMCreateAuthorTransactionInfoDto _build() {
    _$BdayaBLCIRMCreateAuthorTransactionInfoDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMCreateAuthorTransactionInfoDto._(
              authorId: authorId, info: _info?.build(), dollarType: dollarType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMCreateAuthorTransactionInfoDto',
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
