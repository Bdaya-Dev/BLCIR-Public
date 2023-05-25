// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_document_metadata_def_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateDocumentMetadataDefDto
    extends BdayaBLCIRMStateDocumentMetadataDefDto {
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
  final BdayaBLCIRMStateDocumentMetadataType? type;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? isSearchable;
  @override
  final bool? isFilterable;
  @override
  final bool? isFacet;
  @override
  final bool? disableTypoTolerance;

  factory _$BdayaBLCIRMStateDocumentMetadataDefDto(
          [void Function(BdayaBLCIRMStateDocumentMetadataDefDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMStateDocumentMetadataDefDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMStateDocumentMetadataDefDto._(
      {this.id,
      this.creationTime,
      this.creatorId,
      this.lastModificationTime,
      this.lastModifierId,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.type,
      this.title,
      this.description,
      this.isSearchable,
      this.isFilterable,
      this.isFacet,
      this.disableTypoTolerance})
      : super._();

  @override
  BdayaBLCIRMStateDocumentMetadataDefDto rebuild(
          void Function(BdayaBLCIRMStateDocumentMetadataDefDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateDocumentMetadataDefDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateDocumentMetadataDefDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateDocumentMetadataDefDto &&
        id == other.id &&
        creationTime == other.creationTime &&
        creatorId == other.creatorId &&
        lastModificationTime == other.lastModificationTime &&
        lastModifierId == other.lastModifierId &&
        isDeleted == other.isDeleted &&
        deleterId == other.deleterId &&
        deletionTime == other.deletionTime &&
        type == other.type &&
        title == other.title &&
        description == other.description &&
        isSearchable == other.isSearchable &&
        isFilterable == other.isFilterable &&
        isFacet == other.isFacet &&
        disableTypoTolerance == other.disableTypoTolerance;
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
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isSearchable.hashCode);
    _$hash = $jc(_$hash, isFilterable.hashCode);
    _$hash = $jc(_$hash, isFacet.hashCode);
    _$hash = $jc(_$hash, disableTypoTolerance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMStateDocumentMetadataDefDto')
          ..add('id', id)
          ..add('creationTime', creationTime)
          ..add('creatorId', creatorId)
          ..add('lastModificationTime', lastModificationTime)
          ..add('lastModifierId', lastModifierId)
          ..add('isDeleted', isDeleted)
          ..add('deleterId', deleterId)
          ..add('deletionTime', deletionTime)
          ..add('type', type)
          ..add('title', title)
          ..add('description', description)
          ..add('isSearchable', isSearchable)
          ..add('isFilterable', isFilterable)
          ..add('isFacet', isFacet)
          ..add('disableTypoTolerance', disableTypoTolerance))
        .toString();
  }
}

class BdayaBLCIRMStateDocumentMetadataDefDtoBuilder
    implements
        Builder<BdayaBLCIRMStateDocumentMetadataDefDto,
            BdayaBLCIRMStateDocumentMetadataDefDtoBuilder> {
  _$BdayaBLCIRMStateDocumentMetadataDefDto? _$v;

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

  BdayaBLCIRMStateDocumentMetadataType? _type;
  BdayaBLCIRMStateDocumentMetadataType? get type => _$this._type;
  set type(BdayaBLCIRMStateDocumentMetadataType? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isSearchable;
  bool? get isSearchable => _$this._isSearchable;
  set isSearchable(bool? isSearchable) => _$this._isSearchable = isSearchable;

  bool? _isFilterable;
  bool? get isFilterable => _$this._isFilterable;
  set isFilterable(bool? isFilterable) => _$this._isFilterable = isFilterable;

  bool? _isFacet;
  bool? get isFacet => _$this._isFacet;
  set isFacet(bool? isFacet) => _$this._isFacet = isFacet;

  bool? _disableTypoTolerance;
  bool? get disableTypoTolerance => _$this._disableTypoTolerance;
  set disableTypoTolerance(bool? disableTypoTolerance) =>
      _$this._disableTypoTolerance = disableTypoTolerance;

  BdayaBLCIRMStateDocumentMetadataDefDtoBuilder() {
    BdayaBLCIRMStateDocumentMetadataDefDto._defaults(this);
  }

  BdayaBLCIRMStateDocumentMetadataDefDtoBuilder get _$this {
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
      _type = $v.type;
      _title = $v.title;
      _description = $v.description;
      _isSearchable = $v.isSearchable;
      _isFilterable = $v.isFilterable;
      _isFacet = $v.isFacet;
      _disableTypoTolerance = $v.disableTypoTolerance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateDocumentMetadataDefDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateDocumentMetadataDefDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMStateDocumentMetadataDefDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateDocumentMetadataDefDto build() => _build();

  _$BdayaBLCIRMStateDocumentMetadataDefDto _build() {
    final _$result = _$v ??
        new _$BdayaBLCIRMStateDocumentMetadataDefDto._(
            id: id,
            creationTime: creationTime,
            creatorId: creatorId,
            lastModificationTime: lastModificationTime,
            lastModifierId: lastModifierId,
            isDeleted: isDeleted,
            deleterId: deleterId,
            deletionTime: deletionTime,
            type: type,
            title: title,
            description: description,
            isSearchable: isSearchable,
            isFilterable: isFilterable,
            isFacet: isFacet,
            disableTypoTolerance: disableTypoTolerance);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
