// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_management_update_email_settings_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SettingManagementUpdateEmailSettingsDto
    extends SettingManagementUpdateEmailSettingsDto {
  @override
  final String? smtpHost;
  @override
  final int? smtpPort;
  @override
  final String? smtpUserName;
  @override
  final String? smtpPassword;
  @override
  final String? smtpDomain;
  @override
  final bool? smtpEnableSsl;
  @override
  final bool? smtpUseDefaultCredentials;
  @override
  final String defaultFromAddress;
  @override
  final String defaultFromDisplayName;

  factory _$SettingManagementUpdateEmailSettingsDto(
          [void Function(SettingManagementUpdateEmailSettingsDtoBuilder)?
              updates]) =>
      (new SettingManagementUpdateEmailSettingsDtoBuilder()..update(updates))
          ._build();

  _$SettingManagementUpdateEmailSettingsDto._(
      {this.smtpHost,
      this.smtpPort,
      this.smtpUserName,
      this.smtpPassword,
      this.smtpDomain,
      this.smtpEnableSsl,
      this.smtpUseDefaultCredentials,
      required this.defaultFromAddress,
      required this.defaultFromDisplayName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(defaultFromAddress,
        r'SettingManagementUpdateEmailSettingsDto', 'defaultFromAddress');
    BuiltValueNullFieldError.checkNotNull(defaultFromDisplayName,
        r'SettingManagementUpdateEmailSettingsDto', 'defaultFromDisplayName');
  }

  @override
  SettingManagementUpdateEmailSettingsDto rebuild(
          void Function(SettingManagementUpdateEmailSettingsDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingManagementUpdateEmailSettingsDtoBuilder toBuilder() =>
      new SettingManagementUpdateEmailSettingsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingManagementUpdateEmailSettingsDto &&
        smtpHost == other.smtpHost &&
        smtpPort == other.smtpPort &&
        smtpUserName == other.smtpUserName &&
        smtpPassword == other.smtpPassword &&
        smtpDomain == other.smtpDomain &&
        smtpEnableSsl == other.smtpEnableSsl &&
        smtpUseDefaultCredentials == other.smtpUseDefaultCredentials &&
        defaultFromAddress == other.defaultFromAddress &&
        defaultFromDisplayName == other.defaultFromDisplayName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, smtpHost.hashCode);
    _$hash = $jc(_$hash, smtpPort.hashCode);
    _$hash = $jc(_$hash, smtpUserName.hashCode);
    _$hash = $jc(_$hash, smtpPassword.hashCode);
    _$hash = $jc(_$hash, smtpDomain.hashCode);
    _$hash = $jc(_$hash, smtpEnableSsl.hashCode);
    _$hash = $jc(_$hash, smtpUseDefaultCredentials.hashCode);
    _$hash = $jc(_$hash, defaultFromAddress.hashCode);
    _$hash = $jc(_$hash, defaultFromDisplayName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SettingManagementUpdateEmailSettingsDto')
          ..add('smtpHost', smtpHost)
          ..add('smtpPort', smtpPort)
          ..add('smtpUserName', smtpUserName)
          ..add('smtpPassword', smtpPassword)
          ..add('smtpDomain', smtpDomain)
          ..add('smtpEnableSsl', smtpEnableSsl)
          ..add('smtpUseDefaultCredentials', smtpUseDefaultCredentials)
          ..add('defaultFromAddress', defaultFromAddress)
          ..add('defaultFromDisplayName', defaultFromDisplayName))
        .toString();
  }
}

class SettingManagementUpdateEmailSettingsDtoBuilder
    implements
        Builder<SettingManagementUpdateEmailSettingsDto,
            SettingManagementUpdateEmailSettingsDtoBuilder> {
  _$SettingManagementUpdateEmailSettingsDto? _$v;

  String? _smtpHost;
  String? get smtpHost => _$this._smtpHost;
  set smtpHost(String? smtpHost) => _$this._smtpHost = smtpHost;

  int? _smtpPort;
  int? get smtpPort => _$this._smtpPort;
  set smtpPort(int? smtpPort) => _$this._smtpPort = smtpPort;

  String? _smtpUserName;
  String? get smtpUserName => _$this._smtpUserName;
  set smtpUserName(String? smtpUserName) => _$this._smtpUserName = smtpUserName;

  String? _smtpPassword;
  String? get smtpPassword => _$this._smtpPassword;
  set smtpPassword(String? smtpPassword) => _$this._smtpPassword = smtpPassword;

  String? _smtpDomain;
  String? get smtpDomain => _$this._smtpDomain;
  set smtpDomain(String? smtpDomain) => _$this._smtpDomain = smtpDomain;

  bool? _smtpEnableSsl;
  bool? get smtpEnableSsl => _$this._smtpEnableSsl;
  set smtpEnableSsl(bool? smtpEnableSsl) =>
      _$this._smtpEnableSsl = smtpEnableSsl;

  bool? _smtpUseDefaultCredentials;
  bool? get smtpUseDefaultCredentials => _$this._smtpUseDefaultCredentials;
  set smtpUseDefaultCredentials(bool? smtpUseDefaultCredentials) =>
      _$this._smtpUseDefaultCredentials = smtpUseDefaultCredentials;

  String? _defaultFromAddress;
  String? get defaultFromAddress => _$this._defaultFromAddress;
  set defaultFromAddress(String? defaultFromAddress) =>
      _$this._defaultFromAddress = defaultFromAddress;

  String? _defaultFromDisplayName;
  String? get defaultFromDisplayName => _$this._defaultFromDisplayName;
  set defaultFromDisplayName(String? defaultFromDisplayName) =>
      _$this._defaultFromDisplayName = defaultFromDisplayName;

  SettingManagementUpdateEmailSettingsDtoBuilder() {
    SettingManagementUpdateEmailSettingsDto._defaults(this);
  }

  SettingManagementUpdateEmailSettingsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _smtpHost = $v.smtpHost;
      _smtpPort = $v.smtpPort;
      _smtpUserName = $v.smtpUserName;
      _smtpPassword = $v.smtpPassword;
      _smtpDomain = $v.smtpDomain;
      _smtpEnableSsl = $v.smtpEnableSsl;
      _smtpUseDefaultCredentials = $v.smtpUseDefaultCredentials;
      _defaultFromAddress = $v.defaultFromAddress;
      _defaultFromDisplayName = $v.defaultFromDisplayName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingManagementUpdateEmailSettingsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SettingManagementUpdateEmailSettingsDto;
  }

  @override
  void update(
      void Function(SettingManagementUpdateEmailSettingsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SettingManagementUpdateEmailSettingsDto build() => _build();

  _$SettingManagementUpdateEmailSettingsDto _build() {
    final _$result = _$v ??
        new _$SettingManagementUpdateEmailSettingsDto._(
            smtpHost: smtpHost,
            smtpPort: smtpPort,
            smtpUserName: smtpUserName,
            smtpPassword: smtpPassword,
            smtpDomain: smtpDomain,
            smtpEnableSsl: smtpEnableSsl,
            smtpUseDefaultCredentials: smtpUseDefaultCredentials,
            defaultFromAddress: BuiltValueNullFieldError.checkNotNull(
                defaultFromAddress,
                r'SettingManagementUpdateEmailSettingsDto',
                'defaultFromAddress'),
            defaultFromDisplayName: BuiltValueNullFieldError.checkNotNull(
                defaultFromDisplayName,
                r'SettingManagementUpdateEmailSettingsDto',
                'defaultFromDisplayName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
