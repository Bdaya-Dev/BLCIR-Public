// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_create_document_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMCreateDocumentTransactionInfoDto
    extends BdayaBLCIRMCreateDocumentTransactionInfoDto {
  @override
  final String? documentId;
  @override
  final BdayaBLCIRMStateDocumentInfoDto? info;
  @override
  final String? dollarType;

  factory _$BdayaBLCIRMCreateDocumentTransactionInfoDto(
          [void Function(BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder()
            ..update(updates))
          ._build();

  _$BdayaBLCIRMCreateDocumentTransactionInfoDto._(
      {this.documentId, this.info, this.dollarType})
      : super._();

  @override
  BdayaBLCIRMCreateDocumentTransactionInfoDto rebuild(
          void Function(BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMCreateDocumentTransactionInfoDto &&
        documentId == other.documentId &&
        info == other.info &&
        dollarType == other.dollarType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, dollarType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMCreateDocumentTransactionInfoDto')
          ..add('documentId', documentId)
          ..add('info', info)
          ..add('dollarType', dollarType))
        .toString();
  }
}

class BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMCreateDocumentTransactionInfoDto,
            BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder>,
        BdayaBLCIRMStateTransactionInfoDtoBuilder {
  _$BdayaBLCIRMCreateDocumentTransactionInfoDto? _$v;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(covariant String? documentId) =>
      _$this._documentId = documentId;

  BdayaBLCIRMStateDocumentInfoDtoBuilder? _info;
  BdayaBLCIRMStateDocumentInfoDtoBuilder get info =>
      _$this._info ??= new BdayaBLCIRMStateDocumentInfoDtoBuilder();
  set info(covariant BdayaBLCIRMStateDocumentInfoDtoBuilder? info) =>
      _$this._info = info;

  String? _dollarType;
  String? get dollarType => _$this._dollarType;
  set dollarType(covariant String? dollarType) =>
      _$this._dollarType = dollarType;

  BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder() {
    BdayaBLCIRMCreateDocumentTransactionInfoDto._defaults(this);
  }

  BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentId = $v.documentId;
      _info = $v.info?.toBuilder();
      _dollarType = $v.dollarType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BdayaBLCIRMCreateDocumentTransactionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMCreateDocumentTransactionInfoDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMCreateDocumentTransactionInfoDto build() => _build();

  _$BdayaBLCIRMCreateDocumentTransactionInfoDto _build() {
    _$BdayaBLCIRMCreateDocumentTransactionInfoDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMCreateDocumentTransactionInfoDto._(
              documentId: documentId,
              info: _info?.build(),
              dollarType: dollarType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMCreateDocumentTransactionInfoDto',
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
