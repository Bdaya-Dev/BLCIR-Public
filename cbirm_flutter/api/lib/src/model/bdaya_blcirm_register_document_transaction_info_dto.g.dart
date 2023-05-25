// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_register_document_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMRegisterDocumentTransactionInfoDto
    extends BdayaBLCIRMRegisterDocumentTransactionInfoDto {
  @override
  final int? initialCount;
  @override
  final bool? isAvailableOnline;
  @override
  final String? documentId;
  @override
  final String? dollarType;

  factory _$BdayaBLCIRMRegisterDocumentTransactionInfoDto(
          [void Function(BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder()
            ..update(updates))
          ._build();

  _$BdayaBLCIRMRegisterDocumentTransactionInfoDto._(
      {this.initialCount,
      this.isAvailableOnline,
      this.documentId,
      this.dollarType})
      : super._();

  @override
  BdayaBLCIRMRegisterDocumentTransactionInfoDto rebuild(
          void Function(BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMRegisterDocumentTransactionInfoDto &&
        initialCount == other.initialCount &&
        isAvailableOnline == other.isAvailableOnline &&
        documentId == other.documentId &&
        dollarType == other.dollarType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, initialCount.hashCode);
    _$hash = $jc(_$hash, isAvailableOnline.hashCode);
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, dollarType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMRegisterDocumentTransactionInfoDto')
          ..add('initialCount', initialCount)
          ..add('isAvailableOnline', isAvailableOnline)
          ..add('documentId', documentId)
          ..add('dollarType', dollarType))
        .toString();
  }
}

class BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMRegisterDocumentTransactionInfoDto,
            BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder>,
        BdayaBLCIRMStateTransactionInfoDtoBuilder {
  _$BdayaBLCIRMRegisterDocumentTransactionInfoDto? _$v;

  int? _initialCount;
  int? get initialCount => _$this._initialCount;
  set initialCount(covariant int? initialCount) =>
      _$this._initialCount = initialCount;

  bool? _isAvailableOnline;
  bool? get isAvailableOnline => _$this._isAvailableOnline;
  set isAvailableOnline(covariant bool? isAvailableOnline) =>
      _$this._isAvailableOnline = isAvailableOnline;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(covariant String? documentId) =>
      _$this._documentId = documentId;

  String? _dollarType;
  String? get dollarType => _$this._dollarType;
  set dollarType(covariant String? dollarType) =>
      _$this._dollarType = dollarType;

  BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder() {
    BdayaBLCIRMRegisterDocumentTransactionInfoDto._defaults(this);
  }

  BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _initialCount = $v.initialCount;
      _isAvailableOnline = $v.isAvailableOnline;
      _documentId = $v.documentId;
      _dollarType = $v.dollarType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BdayaBLCIRMRegisterDocumentTransactionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMRegisterDocumentTransactionInfoDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMRegisterDocumentTransactionInfoDto build() => _build();

  _$BdayaBLCIRMRegisterDocumentTransactionInfoDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMRegisterDocumentTransactionInfoDto._(
            initialCount: initialCount,
            isAvailableOnline: isAvailableOnline,
            documentId: documentId,
            dollarType: dollarType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
