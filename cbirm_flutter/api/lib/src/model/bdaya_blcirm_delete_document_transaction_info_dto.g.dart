// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_delete_document_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMDeleteDocumentTransactionInfoDto
    extends BdayaBLCIRMDeleteDocumentTransactionInfoDto {
  @override
  final String? documentId;
  @override
  final String? dollarType;

  factory _$BdayaBLCIRMDeleteDocumentTransactionInfoDto(
          [void Function(BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder()
            ..update(updates))
          ._build();

  _$BdayaBLCIRMDeleteDocumentTransactionInfoDto._(
      {this.documentId, this.dollarType})
      : super._();

  @override
  BdayaBLCIRMDeleteDocumentTransactionInfoDto rebuild(
          void Function(BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMDeleteDocumentTransactionInfoDto &&
        documentId == other.documentId &&
        dollarType == other.dollarType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, dollarType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMDeleteDocumentTransactionInfoDto')
          ..add('documentId', documentId)
          ..add('dollarType', dollarType))
        .toString();
  }
}

class BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMDeleteDocumentTransactionInfoDto,
            BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder>,
        BdayaBLCIRMStateTransactionInfoDtoBuilder {
  _$BdayaBLCIRMDeleteDocumentTransactionInfoDto? _$v;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(covariant String? documentId) =>
      _$this._documentId = documentId;

  String? _dollarType;
  String? get dollarType => _$this._dollarType;
  set dollarType(covariant String? dollarType) =>
      _$this._dollarType = dollarType;

  BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder() {
    BdayaBLCIRMDeleteDocumentTransactionInfoDto._defaults(this);
  }

  BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentId = $v.documentId;
      _dollarType = $v.dollarType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BdayaBLCIRMDeleteDocumentTransactionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMDeleteDocumentTransactionInfoDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMDeleteDocumentTransactionInfoDto build() => _build();

  _$BdayaBLCIRMDeleteDocumentTransactionInfoDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMDeleteDocumentTransactionInfoDto._(
            documentId: documentId, dollarType: dollarType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
