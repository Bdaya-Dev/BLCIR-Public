// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_meili_document_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateMeiliDocumentDto
    extends BdayaBLCIRMStateMeiliDocumentDto {
  @override
  final BuiltList<BdayaBLCIRMStateCompcatTenantEntryDto>? entries;
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
  final BdayaBLCIRMStateDocumentInfoDto? info;

  factory _$BdayaBLCIRMStateMeiliDocumentDto(
          [void Function(BdayaBLCIRMStateMeiliDocumentDtoBuilder)? updates]) =>
      (new BdayaBLCIRMStateMeiliDocumentDtoBuilder()..update(updates))._build();

  _$BdayaBLCIRMStateMeiliDocumentDto._(
      {this.entries,
      this.id,
      this.creationTime,
      this.creatorId,
      this.lastModificationTime,
      this.lastModifierId,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.info})
      : super._();

  @override
  BdayaBLCIRMStateMeiliDocumentDto rebuild(
          void Function(BdayaBLCIRMStateMeiliDocumentDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateMeiliDocumentDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateMeiliDocumentDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateMeiliDocumentDto &&
        entries == other.entries &&
        id == other.id &&
        creationTime == other.creationTime &&
        creatorId == other.creatorId &&
        lastModificationTime == other.lastModificationTime &&
        lastModifierId == other.lastModifierId &&
        isDeleted == other.isDeleted &&
        deleterId == other.deleterId &&
        deletionTime == other.deletionTime &&
        info == other.info;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entries.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, lastModificationTime.hashCode);
    _$hash = $jc(_$hash, lastModifierId.hashCode);
    _$hash = $jc(_$hash, isDeleted.hashCode);
    _$hash = $jc(_$hash, deleterId.hashCode);
    _$hash = $jc(_$hash, deletionTime.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMStateMeiliDocumentDto')
          ..add('entries', entries)
          ..add('id', id)
          ..add('creationTime', creationTime)
          ..add('creatorId', creatorId)
          ..add('lastModificationTime', lastModificationTime)
          ..add('lastModifierId', lastModifierId)
          ..add('isDeleted', isDeleted)
          ..add('deleterId', deleterId)
          ..add('deletionTime', deletionTime)
          ..add('info', info))
        .toString();
  }
}

class BdayaBLCIRMStateMeiliDocumentDtoBuilder
    implements
        Builder<BdayaBLCIRMStateMeiliDocumentDto,
            BdayaBLCIRMStateMeiliDocumentDtoBuilder>,
        BdayaBLCIRMStateDocumentDtoBuilder {
  _$BdayaBLCIRMStateMeiliDocumentDto? _$v;

  ListBuilder<BdayaBLCIRMStateCompcatTenantEntryDto>? _entries;
  ListBuilder<BdayaBLCIRMStateCompcatTenantEntryDto> get entries =>
      _$this._entries ??=
          new ListBuilder<BdayaBLCIRMStateCompcatTenantEntryDto>();
  set entries(
          covariant ListBuilder<BdayaBLCIRMStateCompcatTenantEntryDto>?
              entries) =>
      _$this._entries = entries;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(covariant DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  String? _creatorId;
  String? get creatorId => _$this._creatorId;
  set creatorId(covariant String? creatorId) => _$this._creatorId = creatorId;

  DateTime? _lastModificationTime;
  DateTime? get lastModificationTime => _$this._lastModificationTime;
  set lastModificationTime(covariant DateTime? lastModificationTime) =>
      _$this._lastModificationTime = lastModificationTime;

  String? _lastModifierId;
  String? get lastModifierId => _$this._lastModifierId;
  set lastModifierId(covariant String? lastModifierId) =>
      _$this._lastModifierId = lastModifierId;

  bool? _isDeleted;
  bool? get isDeleted => _$this._isDeleted;
  set isDeleted(covariant bool? isDeleted) => _$this._isDeleted = isDeleted;

  String? _deleterId;
  String? get deleterId => _$this._deleterId;
  set deleterId(covariant String? deleterId) => _$this._deleterId = deleterId;

  DateTime? _deletionTime;
  DateTime? get deletionTime => _$this._deletionTime;
  set deletionTime(covariant DateTime? deletionTime) =>
      _$this._deletionTime = deletionTime;

  BdayaBLCIRMStateDocumentInfoDtoBuilder? _info;
  BdayaBLCIRMStateDocumentInfoDtoBuilder get info =>
      _$this._info ??= new BdayaBLCIRMStateDocumentInfoDtoBuilder();
  set info(covariant BdayaBLCIRMStateDocumentInfoDtoBuilder? info) =>
      _$this._info = info;

  BdayaBLCIRMStateMeiliDocumentDtoBuilder() {
    BdayaBLCIRMStateMeiliDocumentDto._defaults(this);
  }

  BdayaBLCIRMStateMeiliDocumentDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entries = $v.entries?.toBuilder();
      _id = $v.id;
      _creationTime = $v.creationTime;
      _creatorId = $v.creatorId;
      _lastModificationTime = $v.lastModificationTime;
      _lastModifierId = $v.lastModifierId;
      _isDeleted = $v.isDeleted;
      _deleterId = $v.deleterId;
      _deletionTime = $v.deletionTime;
      _info = $v.info?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BdayaBLCIRMStateMeiliDocumentDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateMeiliDocumentDto;
  }

  @override
  void update(void Function(BdayaBLCIRMStateMeiliDocumentDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateMeiliDocumentDto build() => _build();

  _$BdayaBLCIRMStateMeiliDocumentDto _build() {
    _$BdayaBLCIRMStateMeiliDocumentDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMStateMeiliDocumentDto._(
              entries: _entries?.build(),
              id: id,
              creationTime: creationTime,
              creatorId: creatorId,
              lastModificationTime: lastModificationTime,
              lastModifierId: lastModifierId,
              isDeleted: isDeleted,
              deleterId: deleterId,
              deletionTime: deletionTime,
              info: _info?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entries';
        _entries?.build();

        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMStateMeiliDocumentDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
