// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_transfer_physical_documents_transaction_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto
    extends BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto {
  @override
  final int? quantity;
  @override
  final String? notes;
  @override
  final double? pricePerItem;
  @override
  final BdayaBLCIRMStateDocumentDto? document;
  @override
  final String? documentId;
  @override
  final BdayaBLCIRMTenantsAppTenantDto? targetTenant;
  @override
  final String? targetTenantId;
  @override
  final String? dollarType;

  factory _$BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto(
          [void Function(
                  BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder()
            ..update(updates))
          ._build();

  _$BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto._(
      {this.quantity,
      this.notes,
      this.pricePerItem,
      this.document,
      this.documentId,
      this.targetTenant,
      this.targetTenantId,
      this.dollarType})
      : super._();

  @override
  BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto rebuild(
          void Function(
                  BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto &&
        quantity == other.quantity &&
        notes == other.notes &&
        pricePerItem == other.pricePerItem &&
        document == other.document &&
        documentId == other.documentId &&
        targetTenant == other.targetTenant &&
        targetTenantId == other.targetTenantId &&
        dollarType == other.dollarType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, pricePerItem.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, targetTenant.hashCode);
    _$hash = $jc(_$hash, targetTenantId.hashCode);
    _$hash = $jc(_$hash, dollarType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto')
          ..add('quantity', quantity)
          ..add('notes', notes)
          ..add('pricePerItem', pricePerItem)
          ..add('document', document)
          ..add('documentId', documentId)
          ..add('targetTenant', targetTenant)
          ..add('targetTenantId', targetTenantId)
          ..add('dollarType', dollarType))
        .toString();
  }
}

class BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto,
            BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder>,
        BdayaBLCIRMStateTransactionInfoDtoBuilder {
  _$BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto? _$v;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(covariant int? quantity) => _$this._quantity = quantity;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(covariant String? notes) => _$this._notes = notes;

  double? _pricePerItem;
  double? get pricePerItem => _$this._pricePerItem;
  set pricePerItem(covariant double? pricePerItem) =>
      _$this._pricePerItem = pricePerItem;

  BdayaBLCIRMStateDocumentDto? _document;
  BdayaBLCIRMStateDocumentDto? get document => _$this._document;
  set document(covariant BdayaBLCIRMStateDocumentDto? document) =>
      _$this._document = document;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(covariant String? documentId) =>
      _$this._documentId = documentId;

  BdayaBLCIRMTenantsAppTenantDtoBuilder? _targetTenant;
  BdayaBLCIRMTenantsAppTenantDtoBuilder get targetTenant =>
      _$this._targetTenant ??= new BdayaBLCIRMTenantsAppTenantDtoBuilder();
  set targetTenant(
          covariant BdayaBLCIRMTenantsAppTenantDtoBuilder? targetTenant) =>
      _$this._targetTenant = targetTenant;

  String? _targetTenantId;
  String? get targetTenantId => _$this._targetTenantId;
  set targetTenantId(covariant String? targetTenantId) =>
      _$this._targetTenantId = targetTenantId;

  String? _dollarType;
  String? get dollarType => _$this._dollarType;
  set dollarType(covariant String? dollarType) =>
      _$this._dollarType = dollarType;

  BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder() {
    BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto._defaults(this);
  }

  BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quantity = $v.quantity;
      _notes = $v.notes;
      _pricePerItem = $v.pricePerItem;
      _document = $v.document;
      _documentId = $v.documentId;
      _targetTenant = $v.targetTenant?.toBuilder();
      _targetTenantId = $v.targetTenantId;
      _dollarType = $v.dollarType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      covariant BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto;
  }

  @override
  void update(
      void Function(
              BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto build() => _build();

  _$BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto _build() {
    _$BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto._(
              quantity: quantity,
              notes: notes,
              pricePerItem: pricePerItem,
              document: document,
              documentId: documentId,
              targetTenant: _targetTenant?.build(),
              targetTenantId: targetTenantId,
              dollarType: dollarType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetTenant';
        _targetTenant?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto',
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
