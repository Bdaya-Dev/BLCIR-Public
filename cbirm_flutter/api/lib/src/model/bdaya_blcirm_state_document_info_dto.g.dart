// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_document_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStateDocumentInfoDto
    extends BdayaBLCIRMStateDocumentInfoDto {
  @override
  final String? title;
  @override
  final String? language6391Code;
  @override
  final BuiltSet<String>? coverImageContentHashes;
  @override
  final BuiltSet<String>? contentHashes;
  @override
  final BuiltList<BdayaBLCIRMStateAuthorDto>? authors;
  @override
  final BuiltMap<String, JsonObject?>? metadata;

  factory _$BdayaBLCIRMStateDocumentInfoDto(
          [void Function(BdayaBLCIRMStateDocumentInfoDtoBuilder)? updates]) =>
      (new BdayaBLCIRMStateDocumentInfoDtoBuilder()..update(updates))._build();

  _$BdayaBLCIRMStateDocumentInfoDto._(
      {this.title,
      this.language6391Code,
      this.coverImageContentHashes,
      this.contentHashes,
      this.authors,
      this.metadata})
      : super._();

  @override
  BdayaBLCIRMStateDocumentInfoDto rebuild(
          void Function(BdayaBLCIRMStateDocumentInfoDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStateDocumentInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMStateDocumentInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStateDocumentInfoDto &&
        title == other.title &&
        language6391Code == other.language6391Code &&
        coverImageContentHashes == other.coverImageContentHashes &&
        contentHashes == other.contentHashes &&
        authors == other.authors &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, language6391Code.hashCode);
    _$hash = $jc(_$hash, coverImageContentHashes.hashCode);
    _$hash = $jc(_$hash, contentHashes.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMStateDocumentInfoDto')
          ..add('title', title)
          ..add('language6391Code', language6391Code)
          ..add('coverImageContentHashes', coverImageContentHashes)
          ..add('contentHashes', contentHashes)
          ..add('authors', authors)
          ..add('metadata', metadata))
        .toString();
  }
}

class BdayaBLCIRMStateDocumentInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMStateDocumentInfoDto,
            BdayaBLCIRMStateDocumentInfoDtoBuilder> {
  _$BdayaBLCIRMStateDocumentInfoDto? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _language6391Code;
  String? get language6391Code => _$this._language6391Code;
  set language6391Code(String? language6391Code) =>
      _$this._language6391Code = language6391Code;

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

  ListBuilder<BdayaBLCIRMStateAuthorDto>? _authors;
  ListBuilder<BdayaBLCIRMStateAuthorDto> get authors =>
      _$this._authors ??= new ListBuilder<BdayaBLCIRMStateAuthorDto>();
  set authors(ListBuilder<BdayaBLCIRMStateAuthorDto>? authors) =>
      _$this._authors = authors;

  MapBuilder<String, JsonObject?>? _metadata;
  MapBuilder<String, JsonObject?> get metadata =>
      _$this._metadata ??= new MapBuilder<String, JsonObject?>();
  set metadata(MapBuilder<String, JsonObject?>? metadata) =>
      _$this._metadata = metadata;

  BdayaBLCIRMStateDocumentInfoDtoBuilder() {
    BdayaBLCIRMStateDocumentInfoDto._defaults(this);
  }

  BdayaBLCIRMStateDocumentInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _language6391Code = $v.language6391Code;
      _coverImageContentHashes = $v.coverImageContentHashes?.toBuilder();
      _contentHashes = $v.contentHashes?.toBuilder();
      _authors = $v.authors?.toBuilder();
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStateDocumentInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStateDocumentInfoDto;
  }

  @override
  void update(void Function(BdayaBLCIRMStateDocumentInfoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStateDocumentInfoDto build() => _build();

  _$BdayaBLCIRMStateDocumentInfoDto _build() {
    _$BdayaBLCIRMStateDocumentInfoDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMStateDocumentInfoDto._(
              title: title,
              language6391Code: language6391Code,
              coverImageContentHashes: _coverImageContentHashes?.build(),
              contentHashes: _contentHashes?.build(),
              authors: _authors?.build(),
              metadata: _metadata?.build());
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
            r'BdayaBLCIRMStateDocumentInfoDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
