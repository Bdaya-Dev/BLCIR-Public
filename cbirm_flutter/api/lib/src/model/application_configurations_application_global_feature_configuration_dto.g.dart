// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_application_global_feature_configuration_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto
    extends ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto {
  @override
  final BuiltSet<String>? enabledFeatures;

  factory _$ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto(
          [void Function(
                  ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto._(
      {this.enabledFeatures})
      : super._();

  @override
  ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto rebuild(
          void Function(
                  ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto &&
        enabledFeatures == other.enabledFeatures;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabledFeatures.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto')
          ..add('enabledFeatures', enabledFeatures))
        .toString();
  }
}

class ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder
    implements
        Builder<
            ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto,
            ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder> {
  _$ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto? _$v;

  SetBuilder<String>? _enabledFeatures;
  SetBuilder<String> get enabledFeatures =>
      _$this._enabledFeatures ??= new SetBuilder<String>();
  set enabledFeatures(SetBuilder<String>? enabledFeatures) =>
      _$this._enabledFeatures = enabledFeatures;

  ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder() {
    ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto._defaults(
        this);
  }

  ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabledFeatures = $v.enabledFeatures?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto build() =>
      _build();

  _$ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto _build() {
    _$ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto
        _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto
              ._(enabledFeatures: _enabledFeatures?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enabledFeatures';
        _enabledFeatures?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto',
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
