// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_extension_property_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyDto
    extends ApplicationConfigurationsObjectExtendingExtensionPropertyDto {
  @override
  final String? type;
  @override
  final String? typeSimple;
  @override
  final ApplicationConfigurationsObjectExtendingLocalizableStringDto?
      displayName;
  @override
  final ApplicationConfigurationsObjectExtendingExtensionPropertyApiDto? api;
  @override
  final ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto? ui;
  @override
  final BuiltList<
          ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto>?
      attributes;
  @override
  final BuiltMap<String, JsonObject?>? configuration;
  @override
  final JsonObject? defaultValue;

  factory _$ApplicationConfigurationsObjectExtendingExtensionPropertyDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyDto._(
      {this.type,
      this.typeSimple,
      this.displayName,
      this.api,
      this.ui,
      this.attributes,
      this.configuration,
      this.defaultValue})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingExtensionPropertyDto &&
        type == other.type &&
        typeSimple == other.typeSimple &&
        displayName == other.displayName &&
        api == other.api &&
        ui == other.ui &&
        attributes == other.attributes &&
        configuration == other.configuration &&
        defaultValue == other.defaultValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeSimple.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, api.hashCode);
    _$hash = $jc(_$hash, ui.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsObjectExtendingExtensionPropertyDto')
          ..add('type', type)
          ..add('typeSimple', typeSimple)
          ..add('displayName', displayName)
          ..add('api', api)
          ..add('ui', ui)
          ..add('attributes', attributes)
          ..add('configuration', configuration)
          ..add('defaultValue', defaultValue))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder
    implements
        Builder<ApplicationConfigurationsObjectExtendingExtensionPropertyDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingExtensionPropertyDto? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _typeSimple;
  String? get typeSimple => _$this._typeSimple;
  set typeSimple(String? typeSimple) => _$this._typeSimple = typeSimple;

  ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder?
      _displayName;
  ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder
      get displayName => _$this._displayName ??=
          new ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder();
  set displayName(
          ApplicationConfigurationsObjectExtendingLocalizableStringDtoBuilder?
              displayName) =>
      _$this._displayName = displayName;

  ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder? _api;
  ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder
      get api => _$this._api ??=
          new ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder();
  set api(
          ApplicationConfigurationsObjectExtendingExtensionPropertyApiDtoBuilder?
              api) =>
      _$this._api = api;

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder? _ui;
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder
      get ui => _$this._ui ??=
          new ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder();
  set ui(
          ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder?
              ui) =>
      _$this._ui = ui;

  ListBuilder<
          ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto>?
      _attributes;
  ListBuilder<
          ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto>
      get attributes => _$this._attributes ??= new ListBuilder<
          ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto>();
  set attributes(
          ListBuilder<
                  ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto>?
              attributes) =>
      _$this._attributes = attributes;

  MapBuilder<String, JsonObject?>? _configuration;
  MapBuilder<String, JsonObject?> get configuration =>
      _$this._configuration ??= new MapBuilder<String, JsonObject?>();
  set configuration(MapBuilder<String, JsonObject?>? configuration) =>
      _$this._configuration = configuration;

  JsonObject? _defaultValue;
  JsonObject? get defaultValue => _$this._defaultValue;
  set defaultValue(JsonObject? defaultValue) =>
      _$this._defaultValue = defaultValue;

  ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder() {
    ApplicationConfigurationsObjectExtendingExtensionPropertyDto._defaults(
        this);
  }

  ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _typeSimple = $v.typeSimple;
      _displayName = $v.displayName?.toBuilder();
      _api = $v.api?.toBuilder();
      _ui = $v.ui?.toBuilder();
      _attributes = $v.attributes?.toBuilder();
      _configuration = $v.configuration?.toBuilder();
      _defaultValue = $v.defaultValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsObjectExtendingExtensionPropertyDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$ApplicationConfigurationsObjectExtendingExtensionPropertyDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingExtensionPropertyDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyDto build() =>
      _build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyDto _build() {
    _$ApplicationConfigurationsObjectExtendingExtensionPropertyDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsObjectExtendingExtensionPropertyDto._(
              type: type,
              typeSimple: typeSimple,
              displayName: _displayName?.build(),
              api: _api?.build(),
              ui: _ui?.build(),
              attributes: _attributes?.build(),
              configuration: _configuration?.build(),
              defaultValue: defaultValue);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'displayName';
        _displayName?.build();
        _$failedField = 'api';
        _api?.build();
        _$failedField = 'ui';
        _ui?.build();
        _$failedField = 'attributes';
        _attributes?.build();
        _$failedField = 'configuration';
        _configuration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsObjectExtendingExtensionPropertyDto',
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
