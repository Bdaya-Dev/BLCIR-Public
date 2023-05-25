// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_web_areas_account_controllers_models_user_login_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountWebAreasAccountControllersModelsUserLoginInfo
    extends AccountWebAreasAccountControllersModelsUserLoginInfo {
  @override
  final String userNameOrEmailAddress;
  @override
  final String password;
  @override
  final bool? rememberMe;

  factory _$AccountWebAreasAccountControllersModelsUserLoginInfo(
          [void Function(
                  AccountWebAreasAccountControllersModelsUserLoginInfoBuilder)?
              updates]) =>
      (new AccountWebAreasAccountControllersModelsUserLoginInfoBuilder()
            ..update(updates))
          ._build();

  _$AccountWebAreasAccountControllersModelsUserLoginInfo._(
      {required this.userNameOrEmailAddress,
      required this.password,
      this.rememberMe})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userNameOrEmailAddress,
        r'AccountWebAreasAccountControllersModelsUserLoginInfo',
        'userNameOrEmailAddress');
    BuiltValueNullFieldError.checkNotNull(password,
        r'AccountWebAreasAccountControllersModelsUserLoginInfo', 'password');
  }

  @override
  AccountWebAreasAccountControllersModelsUserLoginInfo rebuild(
          void Function(
                  AccountWebAreasAccountControllersModelsUserLoginInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountWebAreasAccountControllersModelsUserLoginInfoBuilder toBuilder() =>
      new AccountWebAreasAccountControllersModelsUserLoginInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountWebAreasAccountControllersModelsUserLoginInfo &&
        userNameOrEmailAddress == other.userNameOrEmailAddress &&
        password == other.password &&
        rememberMe == other.rememberMe;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userNameOrEmailAddress.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, rememberMe.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'AccountWebAreasAccountControllersModelsUserLoginInfo')
          ..add('userNameOrEmailAddress', userNameOrEmailAddress)
          ..add('password', password)
          ..add('rememberMe', rememberMe))
        .toString();
  }
}

class AccountWebAreasAccountControllersModelsUserLoginInfoBuilder
    implements
        Builder<AccountWebAreasAccountControllersModelsUserLoginInfo,
            AccountWebAreasAccountControllersModelsUserLoginInfoBuilder> {
  _$AccountWebAreasAccountControllersModelsUserLoginInfo? _$v;

  String? _userNameOrEmailAddress;
  String? get userNameOrEmailAddress => _$this._userNameOrEmailAddress;
  set userNameOrEmailAddress(String? userNameOrEmailAddress) =>
      _$this._userNameOrEmailAddress = userNameOrEmailAddress;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _rememberMe;
  bool? get rememberMe => _$this._rememberMe;
  set rememberMe(bool? rememberMe) => _$this._rememberMe = rememberMe;

  AccountWebAreasAccountControllersModelsUserLoginInfoBuilder() {
    AccountWebAreasAccountControllersModelsUserLoginInfo._defaults(this);
  }

  AccountWebAreasAccountControllersModelsUserLoginInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userNameOrEmailAddress = $v.userNameOrEmailAddress;
      _password = $v.password;
      _rememberMe = $v.rememberMe;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountWebAreasAccountControllersModelsUserLoginInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountWebAreasAccountControllersModelsUserLoginInfo;
  }

  @override
  void update(
      void Function(
              AccountWebAreasAccountControllersModelsUserLoginInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountWebAreasAccountControllersModelsUserLoginInfo build() => _build();

  _$AccountWebAreasAccountControllersModelsUserLoginInfo _build() {
    final _$result = _$v ??
        new _$AccountWebAreasAccountControllersModelsUserLoginInfo._(
            userNameOrEmailAddress: BuiltValueNullFieldError.checkNotNull(
                userNameOrEmailAddress,
                r'AccountWebAreasAccountControllersModelsUserLoginInfo',
                'userNameOrEmailAddress'),
            password: BuiltValueNullFieldError.checkNotNull(
                password,
                r'AccountWebAreasAccountControllersModelsUserLoginInfo',
                'password'),
            rememberMe: rememberMe);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
