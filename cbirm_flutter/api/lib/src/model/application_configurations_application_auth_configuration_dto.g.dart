// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_application_auth_configuration_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsApplicationAuthConfigurationDto
    extends ApplicationConfigurationsApplicationAuthConfigurationDto {
  @override
  final BuiltMap<String, bool?>? grantedPolicies;

  factory _$ApplicationConfigurationsApplicationAuthConfigurationDto(
          [void Function(
                  ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsApplicationAuthConfigurationDto._(
      {this.grantedPolicies})
      : super._();

  @override
  ApplicationConfigurationsApplicationAuthConfigurationDto rebuild(
          void Function(
                  ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder toBuilder() =>
      new ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationConfigurationsApplicationAuthConfigurationDto &&
        grantedPolicies == other.grantedPolicies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, grantedPolicies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsApplicationAuthConfigurationDto')
          ..add('grantedPolicies', grantedPolicies))
        .toString();
  }
}

class ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder
    implements
        Builder<ApplicationConfigurationsApplicationAuthConfigurationDto,
            ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder> {
  _$ApplicationConfigurationsApplicationAuthConfigurationDto? _$v;

  MapBuilder<String, bool?>? _grantedPolicies;
  MapBuilder<String, bool?> get grantedPolicies =>
      _$this._grantedPolicies ??= new MapBuilder<String, bool?>();
  set grantedPolicies(MapBuilder<String, bool?>? grantedPolicies) =>
      _$this._grantedPolicies = grantedPolicies;

  ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder() {
    ApplicationConfigurationsApplicationAuthConfigurationDto._defaults(this);
  }

  ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grantedPolicies = $v.grantedPolicies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationConfigurationsApplicationAuthConfigurationDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationConfigurationsApplicationAuthConfigurationDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsApplicationAuthConfigurationDto build() => _build();

  _$ApplicationConfigurationsApplicationAuthConfigurationDto _build() {
    _$ApplicationConfigurationsApplicationAuthConfigurationDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsApplicationAuthConfigurationDto._(
              grantedPolicies: _grantedPolicies?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'grantedPolicies';
        _grantedPolicies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsApplicationAuthConfigurationDto',
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
