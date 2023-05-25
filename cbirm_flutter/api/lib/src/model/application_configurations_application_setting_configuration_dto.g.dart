// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_application_setting_configuration_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsApplicationSettingConfigurationDto
    extends ApplicationConfigurationsApplicationSettingConfigurationDto {
  @override
  final BuiltMap<String, String?>? values;

  factory _$ApplicationConfigurationsApplicationSettingConfigurationDto(
          [void Function(
                  ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsApplicationSettingConfigurationDto._({this.values})
      : super._();

  @override
  ApplicationConfigurationsApplicationSettingConfigurationDto rebuild(
          void Function(
                  ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder
      toBuilder() =>
          new ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApplicationConfigurationsApplicationSettingConfigurationDto &&
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
            r'ApplicationConfigurationsApplicationSettingConfigurationDto')
          ..add('values', values))
        .toString();
  }
}

class ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder
    implements
        Builder<ApplicationConfigurationsApplicationSettingConfigurationDto,
            ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder> {
  _$ApplicationConfigurationsApplicationSettingConfigurationDto? _$v;

  MapBuilder<String, String?>? _values;
  MapBuilder<String, String?> get values =>
      _$this._values ??= new MapBuilder<String, String?>();
  set values(MapBuilder<String, String?>? values) => _$this._values = values;

  ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder() {
    ApplicationConfigurationsApplicationSettingConfigurationDto._defaults(this);
  }

  ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder
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
      ApplicationConfigurationsApplicationSettingConfigurationDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$ApplicationConfigurationsApplicationSettingConfigurationDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsApplicationSettingConfigurationDto build() =>
      _build();

  _$ApplicationConfigurationsApplicationSettingConfigurationDto _build() {
    _$ApplicationConfigurationsApplicationSettingConfigurationDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsApplicationSettingConfigurationDto._(
              values: _values?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        _values?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsApplicationSettingConfigurationDto',
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
