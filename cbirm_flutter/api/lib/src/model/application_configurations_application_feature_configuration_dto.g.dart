// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_application_feature_configuration_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsApplicationFeatureConfigurationDto
    extends ApplicationConfigurationsApplicationFeatureConfigurationDto {
  @override
  final BuiltMap<String, String?>? values;

  factory _$ApplicationConfigurationsApplicationFeatureConfigurationDto(
          [void Function(
                  ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsApplicationFeatureConfigurationDto._({this.values})
      : super._();

  @override
  ApplicationConfigurationsApplicationFeatureConfigurationDto rebuild(
          void Function(
                  ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsApplicationFeatureConfigurationDto &&
        values == other.values;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsApplicationFeatureConfigurationDto')
          ..add('values', values))
        .toString();
  }
}

class ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder
    implements
        Builder<ApplicationConfigurationsApplicationFeatureConfigurationDto,
            ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder> {
  _$ApplicationConfigurationsApplicationFeatureConfigurationDto? _$v;

  MapBuilder<String, String?>? _values;
  MapBuilder<String, String?> get values =>
      _$this._values ??= new MapBuilder<String, String?>();
  set values(MapBuilder<String, String?>? values) => _$this._values = values;

  ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder() {
    ApplicationConfigurationsApplicationFeatureConfigurationDto._defaults(this);
  }

  ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _values = $v.values?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApplicationConfigurationsApplicationFeatureConfigurationDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$ApplicationConfigurationsApplicationFeatureConfigurationDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsApplicationFeatureConfigurationDto build() =>
      _build();

  _$ApplicationConfigurationsApplicationFeatureConfigurationDto _build() {
    _$ApplicationConfigurationsApplicationFeatureConfigurationDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsApplicationFeatureConfigurationDto._(
              values: _values?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        _values?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsApplicationFeatureConfigurationDto',
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
