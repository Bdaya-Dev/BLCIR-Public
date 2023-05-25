// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_person_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BdayaBLCIRMStatePersonInfoDto extends BdayaBLCIRMStatePersonInfoDto {
  @override
  final String? name;
  @override
  final String? countryCodeIso3166;
  @override
  final String? nationalId;
  @override
  final DateTime? birthday;
  @override
  final BuiltMap<String, JsonObject?>? metadata;

  factory _$BdayaBLCIRMStatePersonInfoDto(
          [void Function(BdayaBLCIRMStatePersonInfoDtoBuilder)? updates]) =>
      (new BdayaBLCIRMStatePersonInfoDtoBuilder()..update(updates))._build();

  _$BdayaBLCIRMStatePersonInfoDto._(
      {this.name,
      this.countryCodeIso3166,
      this.nationalId,
      this.birthday,
      this.metadata})
      : super._();

  @override
  BdayaBLCIRMStatePersonInfoDto rebuild(
          void Function(BdayaBLCIRMStatePersonInfoDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BdayaBLCIRMStatePersonInfoDtoBuilder toBuilder() =>
      new BdayaBLCIRMStatePersonInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BdayaBLCIRMStatePersonInfoDto &&
        name == other.name &&
        countryCodeIso3166 == other.countryCodeIso3166 &&
        nationalId == other.nationalId &&
        birthday == other.birthday &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, countryCodeIso3166.hashCode);
    _$hash = $jc(_$hash, nationalId.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BdayaBLCIRMStatePersonInfoDto')
          ..add('name', name)
          ..add('countryCodeIso3166', countryCodeIso3166)
          ..add('nationalId', nationalId)
          ..add('birthday', birthday)
          ..add('metadata', metadata))
        .toString();
  }
}

class BdayaBLCIRMStatePersonInfoDtoBuilder
    implements
        Builder<BdayaBLCIRMStatePersonInfoDto,
            BdayaBLCIRMStatePersonInfoDtoBuilder> {
  _$BdayaBLCIRMStatePersonInfoDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _countryCodeIso3166;
  String? get countryCodeIso3166 => _$this._countryCodeIso3166;
  set countryCodeIso3166(String? countryCodeIso3166) =>
      _$this._countryCodeIso3166 = countryCodeIso3166;

  String? _nationalId;
  String? get nationalId => _$this._nationalId;
  set nationalId(String? nationalId) => _$this._nationalId = nationalId;

  DateTime? _birthday;
  DateTime? get birthday => _$this._birthday;
  set birthday(DateTime? birthday) => _$this._birthday = birthday;

  MapBuilder<String, JsonObject?>? _metadata;
  MapBuilder<String, JsonObject?> get metadata =>
      _$this._metadata ??= new MapBuilder<String, JsonObject?>();
  set metadata(MapBuilder<String, JsonObject?>? metadata) =>
      _$this._metadata = metadata;

  BdayaBLCIRMStatePersonInfoDtoBuilder() {
    BdayaBLCIRMStatePersonInfoDto._defaults(this);
  }

  BdayaBLCIRMStatePersonInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _countryCodeIso3166 = $v.countryCodeIso3166;
      _nationalId = $v.nationalId;
      _birthday = $v.birthday;
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BdayaBLCIRMStatePersonInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BdayaBLCIRMStatePersonInfoDto;
  }

  @override
  void update(void Function(BdayaBLCIRMStatePersonInfoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BdayaBLCIRMStatePersonInfoDto build() => _build();

  _$BdayaBLCIRMStatePersonInfoDto _build() {
    _$BdayaBLCIRMStatePersonInfoDto _$result;
    try {
      _$result = _$v ??
          new _$BdayaBLCIRMStatePersonInfoDto._(
              name: name,
              countryCodeIso3166: countryCodeIso3166,
              nationalId: nationalId,
              birthday: birthday,
              metadata: _metadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BdayaBLCIRMStatePersonInfoDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
