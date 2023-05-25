// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_send_password_reset_code_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountSendPasswordResetCodeDto
    extends AccountSendPasswordResetCodeDto {
  @override
  final String email;
  @override
  final String appName;
  @override
  final String? returnUrl;
  @override
  final String? returnUrlHash;

  factory _$AccountSendPasswordResetCodeDto(
          [void Function(AccountSendPasswordResetCodeDtoBuilder)? updates]) =>
      (new AccountSendPasswordResetCodeDtoBuilder()..update(updates))._build();

  _$AccountSendPasswordResetCodeDto._(
      {required this.email,
      required this.appName,
      this.returnUrl,
      this.returnUrlHash})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'AccountSendPasswordResetCodeDto', 'email');
    BuiltValueNullFieldError.checkNotNull(
        appName, r'AccountSendPasswordResetCodeDto', 'appName');
  }

  @override
  AccountSendPasswordResetCodeDto rebuild(
          void Function(AccountSendPasswordResetCodeDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountSendPasswordResetCodeDtoBuilder toBuilder() =>
      new AccountSendPasswordResetCodeDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountSendPasswordResetCodeDto &&
        email == other.email &&
        appName == other.appName &&
        returnUrl == other.returnUrl &&
        returnUrlHash == other.returnUrlHash;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, appName.hashCode);
    _$hash = $jc(_$hash, returnUrl.hashCode);
    _$hash = $jc(_$hash, returnUrlHash.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountSendPasswordResetCodeDto')
          ..add('email', email)
          ..add('appName', appName)
          ..add('returnUrl', returnUrl)
          ..add('returnUrlHash', returnUrlHash))
        .toString();
  }
}

class AccountSendPasswordResetCodeDtoBuilder
    implements
        Builder<AccountSendPasswordResetCodeDto,
            AccountSendPasswordResetCodeDtoBuilder> {
  _$AccountSendPasswordResetCodeDto? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _appName;
  String? get appName => _$this._appName;
  set appName(String? appName) => _$this._appName = appName;

  String? _returnUrl;
  String? get returnUrl => _$this._returnUrl;
  set returnUrl(String? returnUrl) => _$this._returnUrl = returnUrl;

  String? _returnUrlHash;
  String? get returnUrlHash => _$this._returnUrlHash;
  set returnUrlHash(String? returnUrlHash) =>
      _$this._returnUrlHash = returnUrlHash;

  AccountSendPasswordResetCodeDtoBuilder() {
    AccountSendPasswordResetCodeDto._defaults(this);
  }

  AccountSendPasswordResetCodeDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _appName = $v.appName;
      _returnUrl = $v.returnUrl;
      _returnUrlHash = $v.returnUrlHash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountSendPasswordResetCodeDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountSendPasswordResetCodeDto;
  }

  @override
  void update(void Function(AccountSendPasswordResetCodeDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountSendPasswordResetCodeDto build() => _build();

  _$AccountSendPasswordResetCodeDto _build() {
    final _$result = _$v ??
        new _$AccountSendPasswordResetCodeDto._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'AccountSendPasswordResetCodeDto', 'email'),
            appName: BuiltValueNullFieldError.checkNotNull(
                appName, r'AccountSendPasswordResetCodeDto', 'appName'),
            returnUrl: returnUrl,
            returnUrlHash: returnUrlHash);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
