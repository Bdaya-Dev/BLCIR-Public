// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_app_tenant_document_entry_dto_for_documents.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments
    extends BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments {
  @override
  final String? id;
  @override
  final DateTime? creationTime;
  @override
  final String? creatorId;
  @override
  final DateTime? lastModificationTime;
  @override
  final String? lastModifierId;
  @override
  final bool? isDeleted;
  @override
  final String? deleterId;
  @override
  final DateTime? deletionTime;
  @override
  final BdayaBLCIRMTenantsAppTenantDto? tenant;
  @override
  final String? documentId;
  @override
  final int? ownedQuantity;
  @override
  final int? loanedQuantity;
  @override
  final int? availableQuantity;
  @override
  final bool? isAvailableOnline;

  factory _$BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments(
          [void Function(
                  BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocumentsBuilder)?
              updates]) =>
      (new BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocumentsBuilder()
            ..update(updates))
          ._build();

  _$BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments._(
      {this.id,
      this.creationTime,
      this.creatorId,
      this.lastModificationTime,
      this.lastModifierId,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.tenant,
      this.documentId,
      this.ownedQuantity,
      this.loanedQuantity,
      this.availableQuantity,
      this.isAvailableOnline})
      : super._();

  @override
  BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments rebuild(
          void Function(
                  BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocumentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocumentsBuilder toBuilder() =>
      new BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocumentsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments &&
        id == other.id &&
        creationTime == other.creationTime &&
        creatorId == other.creatorId &&
        lastModificationTime == other.lastModificationTime &&
        lastModifierId == other.lastModifierId &&
        isDeleted == other.isDeleted &&
        deleterId == other.deleterId &&
        deletionTime == other.deletionTime &&
        tenant == other.tenant &&
        documentId == other.documentId &&
        ownedQuantity == other.ownedQuantity &&
        loanedQuantity == other.loanedQuantity &&
        availableQuantity == other.availableQuantity &&
        isAvailableOnline == other.isAvailableOnline;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, lastModificationTime.hashCode);
    _$hash = $jc(_$hash, lastModifierId.hashCode);
    _$hash = $jc(_$hash, isDeleted.hashCode);
    _$hash = $jc(_$hash, deleterId.hashCode);
    _$hash = $jc(_$hash, deletionTime.hashCode);
    _$hash = $jc(_$hash, tenant.hashCode);
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, ownedQuantity.hashCode);
    _$hash = $jc(_$hash, loanedQuantity.hashCode);
    _$hash = $jc(_$hash, availableQuantity.hashCode);
    _$hash = $jc(_$hash, isAvailableOnline.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments')
          ..add('id', id)
          ..add('creationTime', creationTime)
          ..add('creatorId', creatorId)
          ..add('lastModificationTime', lastModificationTime)
          ..add('lastModifierId', lastModifierId)
          ..add('isDeleted', isDeleted)
          ..add('deleterId', deleterId)
          ..add('deletionTime', deletionTime)
          ..add('tenant', tenant)
          ..add('documentId', documentId)
          ..add('ownedQuantity', ownedQuantity)
          ..add('loanedQuantity', loanedQuantity)
          ..add('availableQuantity', availableQuantity)
          ..add('isAvailableOnline', isAvailableOnline))
        .toString();
  }
}

class BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocumentsBuilder
    implements
        Builder<BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments,
            BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocumentsBuilder> {
  _$BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  String? _creatorId;
  String? get creatorId => _$this._creatorId;
  set creatorId(String? creatorId) => _$this._creatorId = creatorId;

  DateTime? _lastModificationTime;
  DateTime? get lastModificationTime => _$this._lastModificationTime;
  set lastModificationTime(DateTime? lastModificationTime) =>
      _$this._lastModificationTime = lastModificationTime;

  String? _lastModifierId;
  String? get lastModifierId => _$this._lastModifierId;
  set lastModifierId(String? lastModifierId) =>
      _$this._lastModifierId = lastModifierId;

  bool? _isDeleted;
  bool? get isDeleted => _$this._isDeleted;
  set isDeleted(bool? isDeleted) => _$this._isDeleted = isDeleted;

  String? _deleterId;
  String? get deleterId => _$this._deleterId;
  set deleterId(String? deleterId) => _$this._deleterId = deleterId;

  DateTime? _deletionTime;
  DateTime? get deletionTime => _$this._deletionTime;
  set deletionTime(DateTime? deletionTime) =>
      _$this._deletionTime = deletionTime;

  BdayaBLCIRMTenantsAppTenantDtoBuilder? _tenant;
  BdayaBLCIRMTenantsAppTenantDtoBuilder get tenant =>
      _$this._tenant ??= new BdayaBLCIRMTenantsAppTenantDtoBuilder();
  set tenant(BdayaBLCIRMTenantsAppTenantDtoBuilder? tenant) =>
      _$this._tenant = tenant;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(String? documentId) => _$this._documentId = documentId;

  int? _ownedQuantity;
  int? get ownedQuantity => _$this._ownedQuantity;
  set ownedQuantity(int? ownedQuantity) =>
      _$this._ownedQuantity = ownedQuantity;

  int? _loanedQuantity;
  int? get loanedQuantity => _$this._loanedQuantity;
  set loanedQuantity(int? loanedQuantity) =>
      _$this._loanedQuantity = loanedQuantity;

  int? _availableQuantity;
  int? get availableQuantity => _$this._availableQuantity;
  set availableQuantity(int? availableQuantity) =>
      _$this._availableQuantity = availableQuantity;

  bool? _isAvailableOnline;
  bool? get isAvailableOnline => _$this._isAvailableOnline;
  set isAvailableOnline(bool? isAvailableOnline) =>
      _$this._isAvailableOnline = isAvailableOnline;

  BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocumentsBuilder() {
    BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments._defaults(this);
  }

  BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocumentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _creationTime = $v.creationTime;
      _creatorId = $v.creatorId;
      _lastModificationTime = $v.lastModificationTime;
      _lastModifierId = $v.lastModifierId;
      _isDeleted = $v.isDeleted;
      _deleterId = $v.deleterId;
      _deletionTime = $v.deletionTime;
      _tenant = $v.tenant?.toBuilder();
      _documentId = $v.documentId;
      _ownedQuantity = $v.ownedQuantity;
      _loanedQuantity = $v.loanedQuantity;
      _availableQuantity = $v.availableQuantity;
      _isAvailableOnline = $v.isAvailableOnline;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments;
  }

  @override
  void update(
      void Function(
              BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocumentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments build() => _build();

  _$BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments _build() {
    _$BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments._(
              id: id,
              creationTime: creationTime,
              creatorId: creatorId,
              lastModificationTime: lastModificationTime,
              lastModifierId: lastModifierId,
              isDeleted: isDeleted,
              deleterId: deleterId,
              deletionTime: deletionTime,
              tenant: _tenant?.build(),
              documentId: documentId,
              ownedQuantity: ownedQuantity,
              loanedQuantity: loanedQuantity,
              availableQuantity: availableQuantity,
              isAvailableOnline: isAvailableOnline);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tenant';
        _tenant?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMStateAppTenantDocumentEntryDtoForDocuments',
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
