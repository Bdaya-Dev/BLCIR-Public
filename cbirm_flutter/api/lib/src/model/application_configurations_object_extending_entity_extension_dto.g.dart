// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_entity_extension_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingEntityExtensionDto
    extends ApplicationConfigurationsObjectExtendingEntityExtensionDto {
  @override
  final BuiltMap<String,
      ApplicationConfigurationsObjectExtendingExtensionPropertyDto>? properties;
  @override
  final BuiltMap<String, JsonObject?>? configuration;

  factory _$ApplicationConfigurationsObjectExtendingEntityExtensionDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingEntityExtensionDto._(
      {this.properties, this.configuration})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingEntityExtensionDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingEntityExtensionDto &&
        properties == other.properties &&
        configuration == other.configuration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsObjectExtendingEntityExtensionDto')
          ..add('properties', properties)
          ..add('configuration', configuration))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder
    implements
        Builder<ApplicationConfigurationsObjectExtendingEntityExtensionDto,
            ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingEntityExtensionDto? _$v;

  MapBuilder<String,
          ApplicationConfigurationsObjectExtendingExtensionPropertyDto>?
      _properties;
  MapBuilder<String,
          ApplicationConfigurationsObjectExtendingExtensionPropertyDto>
      get properties => _$this._properties ??= new MapBuilder<String,
          ApplicationConfigurationsObjectExtendingExtensionPropertyDto>();
  set properties(
          MapBuilder<String,
                  ApplicationConfigurationsObjectExtendingExtensionPropertyDto>?
              properties) =>
      _$this._properties = properties;

  MapBuilder<String, JsonObject?>? _configuration;
  MapBuilder<String, JsonObject?> get configuration =>
      _$this._configuration ??= new MapBuilder<String, JsonObject?>();
  set configuration(MapBuilder<String, JsonObject?>? configuration) =>
      _$this._configuration = configuration;

  ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder() {
    ApplicationConfigurationsObjectExtendingEntityExtensionDto._defaults(this);
  }

  ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _properties = $v.properties?.toBuilder();
      _configuration = $v.configuration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsObjectExtendingEntityExtensionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationConfigurationsObjectExtendingEntityExtensionDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingEntityExtensionDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingEntityExtensionDto build() =>
      _build();

  _$ApplicationConfigurationsObjectExtendingEntityExtensionDto _build() {
    _$ApplicationConfigurationsObjectExtendingEntityExtensionDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsObjectExtendingEntityExtensionDto._(
              properties: _properties?.build(),
              configuration: _configuration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();
        _$failedField = 'configuration';
        _configuration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsObjectExtendingEntityExtensionDto',
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
