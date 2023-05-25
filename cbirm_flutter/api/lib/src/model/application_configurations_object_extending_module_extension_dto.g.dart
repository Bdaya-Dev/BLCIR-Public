// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_module_extension_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingModuleExtensionDto
    extends ApplicationConfigurationsObjectExtendingModuleExtensionDto {
  @override
  final BuiltMap<String,
      ApplicationConfigurationsObjectExtendingEntityExtensionDto>? entities;
  @override
  final BuiltMap<String, JsonObject?>? configuration;

  factory _$ApplicationConfigurationsObjectExtendingModuleExtensionDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingModuleExtensionDto._(
      {this.entities, this.configuration})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingModuleExtensionDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingModuleExtensionDto &&
        entities == other.entities &&
        configuration == other.configuration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entities.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsObjectExtendingModuleExtensionDto')
          ..add('entities', entities)
          ..add('configuration', configuration))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder
    implements
        Builder<ApplicationConfigurationsObjectExtendingModuleExtensionDto,
            ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingModuleExtensionDto? _$v;

  MapBuilder<String,
      ApplicationConfigurationsObjectExtendingEntityExtensionDto>? _entities;
  MapBuilder<String, ApplicationConfigurationsObjectExtendingEntityExtensionDto>
      get entities => _$this._entities ??= new MapBuilder<String,
          ApplicationConfigurationsObjectExtendingEntityExtensionDto>();
  set entities(
          MapBuilder<String,
                  ApplicationConfigurationsObjectExtendingEntityExtensionDto>?
              entities) =>
      _$this._entities = entities;

  MapBuilder<String, JsonObject?>? _configuration;
  MapBuilder<String, JsonObject?> get configuration =>
      _$this._configuration ??= new MapBuilder<String, JsonObject?>();
  set configuration(MapBuilder<String, JsonObject?>? configuration) =>
      _$this._configuration = configuration;

  ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder() {
    ApplicationConfigurationsObjectExtendingModuleExtensionDto._defaults(this);
  }

  ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entities = $v.entities?.toBuilder();
      _configuration = $v.configuration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsObjectExtendingModuleExtensionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationConfigurationsObjectExtendingModuleExtensionDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingModuleExtensionDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingModuleExtensionDto build() =>
      _build();

  _$ApplicationConfigurationsObjectExtendingModuleExtensionDto _build() {
    _$ApplicationConfigurationsObjectExtendingModuleExtensionDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsObjectExtendingModuleExtensionDto._(
              entities: _entities?.build(),
              configuration: _configuration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entities';
        _entities?.build();
        _$failedField = 'configuration';
        _configuration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsObjectExtendingModuleExtensionDto',
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
