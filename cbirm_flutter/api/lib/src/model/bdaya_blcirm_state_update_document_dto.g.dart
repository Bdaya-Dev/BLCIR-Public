// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_update_document_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateUpdateDocumentDto
    extends BdayaBLCIRMStateUpdateDocumentDto {
  @override
  final String? title;
  @override
  final BuiltSet<String>? coverImageContentHashes;
  @override
  final BuiltSet<String>? contentHashes;
  @override
  final BuiltSet<String>? authors;
  @override
  final BuiltMap<String, JsonObject?>? metadata;
  @override
  final String? language6391Code;

  factory _$BdayaBLCIRMStateUpdateDocumentDto(
          [void Function(BdayaBLCIRMStateUpdateDocumentDtoBuilder)? updates]) =>
      (new BdayaBLCIRMStateUpdateDocumentDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMStateUpdateDocumentDto._(
      {this.title,
      this.coverImageContentHashes,
      this.contentHashes,
      this.authors,
      this.metadata,
      this.language6391Code})
      : super._();

  @override
  BdayaBLCIRMStateUpdateDocumentDto rebuild(
          void Function(BdayaBLCIRMStateUpdateDocumentDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateUpdateDocumentDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateUpdateDocumentDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateUpdateDocumentDto &&
        title == other.title &&
        coverImageContentHashes == other.coverImageContentHashes &&
        contentHashes == other.contentHashes &&
        authors == other.authors &&
        metadata == other.metadata &&
        language6391Code == other.language6391Code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImageContentHashes.hashCode);
    _$hash = $jc(_$hash, contentHashes.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, language6391Code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMStateUpdateDocumentDto')
          ..add('title', title)
          ..add('coverImageContentHashes', coverImageContentHashes)
          ..add('contentHashes', contentHashes)
          ..add('authors', authors)
          ..add('metadata', metadata)
          ..add('language6391Code', language6391Code))
        .toString();
  }
}

class BdayaBLCIRMStateUpdateDocumentDtoBuilder
    implements
        Builder<BdayaBLCIRMStateUpdateDocumentDto,
            BdayaBLCIRMStateUpdateDocumentDtoBuilder> {
  _$BdayaBLCIRMStateUpdateDocumentDto? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  SetBuilder<String>? _coverImageContentHashes;
  SetBuilder<String> get coverImageContentHashes =>
      _$this._coverImageContentHashes ??= new SetBuilder<String>();
  set coverImageContentHashes(SetBuilder<String>? coverImageContentHashes) =>
      _$this._coverImageContentHashes = coverImageContentHashes;

  SetBuilder<String>? _contentHashes;
  SetBuilder<String> get contentHashes =>
      _$this._contentHashes ??= new SetBuilder<String>();
  set contentHashes(SetBuilder<String>? contentHashes) =>
      _$this._contentHashes = contentHashes;

  SetBuilder<String>? _authors;
  SetBuilder<String> get authors =>
      _$this._authors ??= new SetBuilder<String>();
  set authors(SetBuilder<String>? authors) => _$this._authors = authors;

  MapBuilder<String, JsonObject?>? _metadata;
  MapBuilder<String, JsonObject?> get metadata =>
      _$this._metadata ??= new MapBuilder<String, JsonObject?>();
  set metadata(MapBuilder<String, JsonObject?>? metadata) =>
      _$this._metadata = metadata;

  String? _language6391Code;
  String? get language6391Code => _$this._language6391Code;
  set language6391Code(String? language6391Code) =>
      _$this._language6391Code = language6391Code;

  BdayaBLCIRMStateUpdateDocumentDtoBuilder() {
    BdayaBLCIRMStateUpdateDocumentDto._defaults(this);
  }

  BdayaBLCIRMStateUpdateDocumentDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _coverImageContentHashes = $v.coverImageContentHashes?.toBuilder();
      _contentHashes = $v.contentHashes?.toBuilder();
      _authors = $v.authors?.toBuilder();
      _metadata = $v.metadata?.toBuilder();
      _language6391Code = $v.language6391Code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateUpdateDocumentDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateUpdateDocumentDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMStateUpdateDocumentDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateUpdateDocumentDto build() => _build();

  _$BdayaBLCIRMStateUpdateDocumentDto _build() {
    _$BdayaBLCIRMStateUpdateDocumentDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMStateUpdateDocumentDto._(
              title: title,
              coverImageContentHashes: _coverImageContentHashes?.build(),
              contentHashes: _contentHashes?.build(),
              authors: _authors?.build(),
              metadata: _metadata?.build(),
              language6391Code: language6391Code);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coverImageContentHashes';
        _coverImageContentHashes?.build();
        _$failedField = 'contentHashes';
        _contentHashes?.build();
        _$failedField = 'authors';
        _authors?.build();
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMStateUpdateDocumentDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
