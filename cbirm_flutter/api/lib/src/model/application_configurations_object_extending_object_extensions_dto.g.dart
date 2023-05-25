// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_object_extending_object_extensions_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsObjectExtendingObjectExtensionsDto
    extends ApplicationConfigurationsObjectExtendingObjectExtensionsDto {
  @override
  final BuiltMap<String,
      ApplicationConfigurationsObjectExtendingModuleExtensionDto>? modules;
  @override
  final BuiltMap<String,
      ApplicationConfigurationsObjectExtendingExtensionEnumDto>? enums;

  factory _$ApplicationConfigurationsObjectExtendingObjectExtensionsDto(
          [void Function(
                  ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsObjectExtendingObjectExtensionsDto._(
      {this.modules, this.enums})
      : super._();

  @override
  ApplicationConfigurationsObjectExtendingObjectExtensionsDto rebuild(
          void Function(
                  ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsObjectExtendingObjectExtensionsDto &&
        modules == other.modules &&
        enums == other.enums;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, modules.hashCode);
    _$hash = $jc(_$hash, enums.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsObjectExtendingObjectExtensionsDto')
          ..add('modules', modules)
          ..add('enums', enums))
        .toString();
  }
}

class ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder
    implements
        Builder<ApplicationConfigurationsObjectExtendingObjectExtensionsDto,
            ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder> {
  _$ApplicationConfigurationsObjectExtendingObjectExtensionsDto? _$v;

  MapBuilder<String,
      ApplicationConfigurationsObjectExtendingModuleExtensionDto>? _modules;
  MapBuilder<String, ApplicationConfigurationsObjectExtendingModuleExtensionDto>
      get modules => _$this._modules ??= new MapBuilder<String,
          ApplicationConfigurationsObjectExtendingModuleExtensionDto>();
  set modules(
          MapBuilder<String,
                  ApplicationConfigurationsObjectExtendingModuleExtensionDto>?
              modules) =>
      _$this._modules = modules;

  MapBuilder<String, ApplicationConfigurationsObjectExtendingExtensionEnumDto>?
      _enums;
  MapBuilder<String, ApplicationConfigurationsObjectExtendingExtensionEnumDto>
      get enums => _$this._enums ??= new MapBuilder<String,
          ApplicationConfigurationsObjectExtendingExtensionEnumDto>();
  set enums(
          MapBuilder<String,
                  ApplicationConfigurationsObjectExtendingExtensionEnumDto>?
              enums) =>
      _$this._enums = enums;

  ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder() {
    ApplicationConfigurationsObjectExtendingObjectExtensionsDto._defaults(this);
  }

  ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _modules = $v.modules?.toBuilder();
      _enums = $v.enums?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsObjectExtendingObjectExtensionsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$ApplicationConfigurationsObjectExtendingObjectExtensionsDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsObjectExtendingObjectExtensionsDto build() =>
      _build();

  _$ApplicationConfigurationsObjectExtendingObjectExtensionsDto _build() {
    _$ApplicationConfigurationsObjectExtendingObjectExtensionsDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsObjectExtendingObjectExtensionsDto._(
              modules: _modules?.build(), enums: _enums?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'modules';
        _modules?.build();
        _$failedField = 'enums';
        _enums?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsObjectExtendingObjectExtensionsDto',
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
