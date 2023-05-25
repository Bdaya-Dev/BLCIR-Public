// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_tenants_meili_search_config_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMTenantsMeiliSearchConfigDto
    extends BdayaBLCIRMTenantsMeiliSearchConfigDto {
  @override
  final String? url;
  @override
  final String? apiKey;
  @override
  final BdayaBLCIRMMeiliSearchMeiliSearchIndexNames? indexNames;

  factory _$BdayaBLCIRMTenantsMeiliSearchConfigDto(
          [void Function(BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder)?
              updates]) =>
      (new BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder()..update(updates))
          ._build();

  _$BdayaBLCIRMTenantsMeiliSearchConfigDto._(
      {this.url, this.apiKey, this.indexNames})
      : super._();

  @override
  BdayaBLCIRMTenantsMeiliSearchConfigDto rebuild(
          void Function(BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder toBuilder() =>
      new BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMTenantsMeiliSearchConfigDto &&
        url == other.url &&
        apiKey == other.apiKey &&
        indexNames == other.indexNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jc(_$hash, indexNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BdayaBLCIRMTenantsMeiliSearchConfigDto')
          ..add('url', url)
          ..add('apiKey', apiKey)
          ..add('indexNames', indexNames))
        .toString();
  }
}

class BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder
    implements
        Builder<BdayaBLCIRMTenantsMeiliSearchConfigDto,
            BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder> {
  _$BdayaBLCIRMTenantsMeiliSearchConfigDto? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder? _indexNames;
  BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder get indexNames =>
      _$this._indexNames ??=
          new BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder();
  set indexNames(
          BdayaBLCIRMMeiliSearchMeiliSearchIndexNamesBuilder? indexNames) =>
      _$this._indexNames = indexNames;

  BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder() {
    BdayaBLCIRMTenantsMeiliSearchConfigDto._defaults(this);
  }

  BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _apiKey = $v.apiKey;
      _indexNames = $v.indexNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMTenantsMeiliSearchConfigDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMTenantsMeiliSearchConfigDto;
  }

  @override
  void update(
      void Function(BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMTenantsMeiliSearchConfigDto build() => _build();

  _$BdayaBLCIRMTenantsMeiliSearchConfigDto _build() {
    _$BdayaBLCIRMTenantsMeiliSearchConfigDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMTenantsMeiliSearchConfigDto._(
              url: url, apiKey: apiKey, indexNames: _indexNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'indexNames';
        _indexNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMTenantsMeiliSearchConfigDto',
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
