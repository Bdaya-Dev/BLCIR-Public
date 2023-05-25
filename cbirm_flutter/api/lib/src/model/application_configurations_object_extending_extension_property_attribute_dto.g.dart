// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_extension_property_attribute_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto
    extends ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto {
  @override
  final String? typeSimple;
  @override
  final BuiltMap<String, JsonObject?>? config;

  factory _$ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto._(
      {this.typeSimple, this.config})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto &&
        typeSimple == other.typeSimple &&
        config == other.config;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, typeSimple.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto')
          ..add('typeSimple', typeSimple)
          ..add('config', config))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder
    implements
        Builder<
            ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto? _$v;

  String? _typeSimple;
  String? get typeSimple => _$this._typeSimple;
  set typeSimple(String? typeSimple) => _$this._typeSimple = typeSimple;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= new MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder() {
    ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto
        ._defaults(this);
  }

  ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeSimple = $v.typeSimple;
      _config = $v.config?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto
      build() => _build();

  _$ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto
      _build() {
    _$ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto
        _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto
              ._(typeSimple: typeSimple, config: _config?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsObjectExtendingExtensionPropertyAttributeDto',
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
