// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_configurations_application_configuration_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationConfigurationsApplicationConfigurationDto
    extends ApplicationConfigurationsApplicationConfigurationDto {
  @override
  final ApplicationConfigurationsApplicationLocalizationConfigurationDto?
      localization;
  @override
  final ApplicationConfigurationsApplicationAuthConfigurationDto? auth;
  @override
  final ApplicationConfigurationsApplicationSettingConfigurationDto? setting;
  @override
  final ApplicationConfigurationsCurrentUserDto? currentUser;
  @override
  final ApplicationConfigurationsApplicationFeatureConfigurationDto? features;
  @override
  final ApplicationConfigurationsApplicationGlobalFeatureConfigurationDto?
      globalFeatures;
  @override
  final MultiTenancyMultiTenancyInfoDto? multiTenancy;
  @override
  final MultiTenancyCurrentTenantDto? currentTenant;
  @override
  final ApplicationConfigurationsTimingDto? timing;
  @override
  final ApplicationConfigurationsClockDto? clock;
  @override
  final ApplicationConfigurationsObjectExtendingObjectExtensionsDto?
      objectExtensions;
  @override
  final BuiltMap<String, JsonObject?>? extraProperties;

  factory _$ApplicationConfigurationsApplicationConfigurationDto(
          [void Function(
                  ApplicationConfigurationsApplicationConfigurationDtoBuilder)?
              updates]) =>
      (new ApplicationConfigurationsApplicationConfigurationDtoBuilder()
            ..update(updates))
          ._build();

  _$ApplicationConfigurationsApplicationConfigurationDto._(
      {this.localization,
      this.auth,
      this.setting,
      this.currentUser,
      this.features,
      this.globalFeatures,
      this.multiTenancy,
      this.currentTenant,
      this.timing,
      this.clock,
      this.objectExtensions,
      this.extraProperties})
      : super._();

  @override
  ApplicationConfigurationsApplicationConfigurationDto rebuild(
          void Function(
                  ApplicationConfigurationsApplicationConfigurationDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationConfigurationsApplicationConfigurationDtoBuilder toBuilder() =>
      new ApplicationConfigurationsApplicationConfigurationDtoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationConfigurationsApplicationConfigurationDto &&
        localization == other.localization &&
        auth == other.auth &&
        setting == other.setting &&
        currentUser == other.currentUser &&
        features == other.features &&
        globalFeatures == other.globalFeatures &&
        multiTenancy == other.multiTenancy &&
        currentTenant == other.currentTenant &&
        timing == other.timing &&
        clock == other.clock &&
        objectExtensions == other.objectExtensions &&
        extraProperties == other.extraProperties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localization.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, setting.hashCode);
    _$hash = $jc(_$hash, currentUser.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jc(_$hash, globalFeatures.hashCode);
    _$hash = $jc(_$hash, multiTenancy.hashCode);
    _$hash = $jc(_$hash, currentTenant.hashCode);
    _$hash = $jc(_$hash, timing.hashCode);
    _$hash = $jc(_$hash, clock.hashCode);
    _$hash = $jc(_$hash, objectExtensions.hashCode);
    _$hash = $jc(_$hash, extraProperties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationConfigurationsApplicationConfigurationDto')
          ..add('localization', localization)
          ..add('auth', auth)
          ..add('setting', setting)
          ..add('currentUser', currentUser)
          ..add('features', features)
          ..add('globalFeatures', globalFeatures)
          ..add('multiTenancy', multiTenancy)
          ..add('currentTenant', currentTenant)
          ..add('timing', timing)
          ..add('clock', clock)
          ..add('objectExtensions', objectExtensions)
          ..add('extraProperties', extraProperties))
        .toString();
  }
}

class ApplicationConfigurationsApplicationConfigurationDtoBuilder
    implements
        Builder<ApplicationConfigurationsApplicationConfigurationDto,
            ApplicationConfigurationsApplicationConfigurationDtoBuilder> {
  _$ApplicationConfigurationsApplicationConfigurationDto? _$v;

  ApplicationConfigurationsApplicationLocalizationConfigurationDtoBuilder?
      _localization;
  ApplicationConfigurationsApplicationLocalizationConfigurationDtoBuilder
      get localization => _$this._localization ??=
          new ApplicationConfigurationsApplicationLocalizationConfigurationDtoBuilder();
  set localization(
          ApplicationConfigurationsApplicationLocalizationConfigurationDtoBuilder?
              localization) =>
      _$this._localization = localization;

  ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder? _auth;
  ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder get auth =>
      _$this._auth ??=
          new ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder();
  set auth(
          ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder?
              auth) =>
      _$this._auth = auth;

  ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder? _setting;
  ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder
      get setting => _$this._setting ??=
          new ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder();
  set setting(
          ApplicationConfigurationsApplicationSettingConfigurationDtoBuilder?
              setting) =>
      _$this._setting = setting;

  ApplicationConfigurationsCurrentUserDtoBuilder? _currentUser;
  ApplicationConfigurationsCurrentUserDtoBuilder get currentUser =>
      _$this._currentUser ??=
          new ApplicationConfigurationsCurrentUserDtoBuilder();
  set currentUser(
          ApplicationConfigurationsCurrentUserDtoBuilder? currentUser) =>
      _$this._currentUser = currentUser;

  ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder? _features;
  ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder
      get features => _$this._features ??=
          new ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder();
  set features(
          ApplicationConfigurationsApplicationFeatureConfigurationDtoBuilder?
              features) =>
      _$this._features = features;

  ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder?
      _globalFeatures;
  ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder
      get globalFeatures => _$this._globalFeatures ??=
          new ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder();
  set globalFeatures(
          ApplicationConfigurationsApplicationGlobalFeatureConfigurationDtoBuilder?
              globalFeatures) =>
      _$this._globalFeatures = globalFeatures;

  MultiTenancyMultiTenancyInfoDtoBuilder? _multiTenancy;
  MultiTenancyMultiTenancyInfoDtoBuilder get multiTenancy =>
      _$this._multiTenancy ??= new MultiTenancyMultiTenancyInfoDtoBuilder();
  set multiTenancy(MultiTenancyMultiTenancyInfoDtoBuilder? multiTenancy) =>
      _$this._multiTenancy = multiTenancy;

  MultiTenancyCurrentTenantDtoBuilder? _currentTenant;
  MultiTenancyCurrentTenantDtoBuilder get currentTenant =>
      _$this._currentTenant ??= new MultiTenancyCurrentTenantDtoBuilder();
  set currentTenant(MultiTenancyCurrentTenantDtoBuilder? currentTenant) =>
      _$this._currentTenant = currentTenant;

  ApplicationConfigurationsTimingDtoBuilder? _timing;
  ApplicationConfigurationsTimingDtoBuilder get timing =>
      _$this._timing ??= new ApplicationConfigurationsTimingDtoBuilder();
  set timing(ApplicationConfigurationsTimingDtoBuilder? timing) =>
      _$this._timing = timing;

  ApplicationConfigurationsClockDtoBuilder? _clock;
  ApplicationConfigurationsClockDtoBuilder get clock =>
      _$this._clock ??= new ApplicationConfigurationsClockDtoBuilder();
  set clock(ApplicationConfigurationsClockDtoBuilder? clock) =>
      _$this._clock = clock;

  ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder?
      _objectExtensions;
  ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder
      get objectExtensions => _$this._objectExtensions ??=
          new ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder();
  set objectExtensions(
          ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder?
              objectExtensions) =>
      _$this._objectExtensions = objectExtensions;

  MapBuilder<String, JsonObject?>? _extraProperties;
  MapBuilder<String, JsonObject?> get extraProperties =>
      _$this._extraProperties ??= new MapBuilder<String, JsonObject?>();
  set extraProperties(MapBuilder<String, JsonObject?>? extraProperties) =>
      _$this._extraProperties = extraProperties;

  ApplicationConfigurationsApplicationConfigurationDtoBuilder() {
    ApplicationConfigurationsApplicationConfigurationDto._defaults(this);
  }

  ApplicationConfigurationsApplicationConfigurationDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localization = $v.localization?.toBuilder();
      _auth = $v.auth?.toBuilder();
      _setting = $v.setting?.toBuilder();
      _currentUser = $v.currentUser?.toBuilder();
      _features = $v.features?.toBuilder();
      _globalFeatures = $v.globalFeatures?.toBuilder();
      _multiTenancy = $v.multiTenancy?.toBuilder();
      _currentTenant = $v.currentTenant?.toBuilder();
      _timing = $v.timing?.toBuilder();
      _clock = $v.clock?.toBuilder();
      _objectExtensions = $v.objectExtensions?.toBuilder();
      _extraProperties = $v.extraProperties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationConfigurationsApplicationConfigurationDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationConfigurationsApplicationConfigurationDto;
  }

  @override
  void update(
      void Function(
              ApplicationConfigurationsApplicationConfigurationDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationConfigurationsApplicationConfigurationDto build() => _build();

  _$ApplicationConfigurationsApplicationConfigurationDto _build() {
    _$ApplicationConfigurationsApplicationConfigurationDto _$result;
    try {
      _$result = _$v ??
          new _$ApplicationConfigurationsApplicationConfigurationDto._(
              localization: _localization?.build(),
              auth: _auth?.build(),
              setting: _setting?.build(),
              currentUser: _currentUser?.build(),
              features: _features?.build(),
              globalFeatures: _globalFeatures?.build(),
              multiTenancy: _multiTenancy?.build(),
              currentTenant: _currentTenant?.build(),
              timing: _timing?.build(),
              clock: _clock?.build(),
              objectExtensions: _objectExtensions?.build(),
              extraProperties: _extraProperties?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localization';
        _localization?.build();
        _$failedField = 'auth';
        _auth?.build();
        _$failedField = 'setting';
        _setting?.build();
        _$failedField = 'currentUser';
        _currentUser?.build();
        _$failedField = 'features';
        _features?.build();
        _$failedField = 'globalFeatures';
        _globalFeatures?.build();
        _$failedField = 'multiTenancy';
        _multiTenancy?.build();
        _$failedField = 'currentTenant';
        _currentTenant?.build();
        _$failedField = 'timing';
        _timing?.build();
        _$failedField = 'clock';
        _clock?.build();
        _$failedField = 'objectExtensions';
        _objectExtensions?.build();
        _$failedField = 'extraProperties';
        _extraProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationConfigurationsApplicationConfigurationDto',
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
