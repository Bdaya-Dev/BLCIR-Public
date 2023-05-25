// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_register_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountRegisterDto extends AccountRegisterDto {
  @override
  final BuiltMap<String, JsonObject?>? extraProperties;
  @override
  final String userName;
  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final String appName;

  factory _$AccountRegisterDto(
          [void Function(AccountRegisterDtoBuilder)? updates]) =>
      (new AccountRegisterDtoBuilder()..update(updates))._build();

  _$AccountRegisterDto._(
      {this.extraProperties,
      required this.userName,
      required this.emailAddress,
      required this.password,
      required this.appName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'AccountRegisterDto', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        emailAddress, r'AccountRegisterDto', 'emailAddress');
    BuiltValueNullFieldError.checkNotNull(
        password, r'AccountRegisterDto', 'password');
    BuiltValueNullFieldError.checkNotNull(
        appName, r'AccountRegisterDto', 'appName');
  }

  @override
  AccountRegisterDto rebuild(
          void Function(AccountRegisterDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountRegisterDtoBuilder toBuilder() =>
      new AccountRegisterDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountRegisterDto &&
        extraProperties == other.extraProperties &&
        userName == other.userName &&
        emailAddress == other.emailAddress &&
        password == other.password &&
        appName == other.appName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, extraProperties.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, appName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountRegisterDto')
          ..add('extraProperties', extraProperties)
          ..add('userName', userName)
          ..add('emailAddress', emailAddress)
          ..add('password', password)
          ..add('appName', appName))
        .toString();
  }
}

class AccountRegisterDtoBuilder
    implements Builder<AccountRegisterDto, AccountRegisterDtoBuilder> {
  _$AccountRegisterDto? _$v;

  MapBuilder<String, JsonObject?>? _extraProperties;
  MapBuilder<String, JsonObject?> get extraProperties =>
      _$this._extraProperties ??= new MapBuilder<String, JsonObject?>();
  set extraProperties(MapBuilder<String, JsonObject?>? extraProperties) =>
      _$this._extraProperties = extraProperties;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _appName;
  String? get appName => _$this._appName;
  set appName(String? appName) => _$this._appName = appName;

  AccountRegisterDtoBuilder() {
    AccountRegisterDto._defaults(this);
  }

  AccountRegisterDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _extraProperties = $v.extraProperties?.toBuilder();
      _userName = $v.userName;
      _emailAddress = $v.emailAddress;
      _password = $v.password;
      _appName = $v.appName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountRegisterDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountRegisterDto;
  }

  @override
  void update(void Function(AccountRegisterDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountRegisterDto build() => _build();

  _$AccountRegisterDto _build() {
    _$AccountRegisterDto _$result;
    try {
      _$result = _$v ??
          new _$AccountRegisterDto._(
              extraProperties: _extraProperties?.build(),
              userName: BuiltValueNullFieldError.checkNotNull(
                  userName, r'AccountRegisterDto', 'userName'),
              emailAddress: BuiltValueNullFieldError.checkNotNull(
                  emailAddress, r'AccountRegisterDto', 'emailAddress'),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, r'AccountRegisterDto', 'password'),
              appName: BuiltValueNullFieldError.checkNotNull(
                  appName, r'AccountRegisterDto', 'appName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraProperties';
        _extraProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountRegisterDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
