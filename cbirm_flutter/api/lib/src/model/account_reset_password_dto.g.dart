// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_reset_password_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountResetPasswordDto extends AccountResetPasswordDto {
  @override
  final String? userId;
  @override
  final String resetToken;
  @override
  final String password;

  factory _$AccountResetPasswordDto(
          [void Function(AccountResetPasswordDtoBuilder)? updates]) =>
      (new AccountResetPasswordDtoBuilder()..update(updates))._build();

  _$AccountResetPasswordDto._(
      {this.userId, required this.resetToken, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resetToken, r'AccountResetPasswordDto', 'resetToken');
    BuiltValueNullFieldError.checkNotNull(
        password, r'AccountResetPasswordDto', 'password');
  }

  @override
  AccountResetPasswordDto rebuild(
          void Function(AccountResetPasswordDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountResetPasswordDtoBuilder toBuilder() =>
      new AccountResetPasswordDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountResetPasswordDto &&
        userId == other.userId &&
        resetToken == other.resetToken &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, resetToken.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountResetPasswordDto')
          ..add('userId', userId)
          ..add('resetToken', resetToken)
          ..add('password', password))
        .toString();
  }
}

class AccountResetPasswordDtoBuilder
    implements
        Builder<AccountResetPasswordDto, AccountResetPasswordDtoBuilder> {
  _$AccountResetPasswordDto? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _resetToken;
  String? get resetToken => _$this._resetToken;
  set resetToken(String? resetToken) => _$this._resetToken = resetToken;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  AccountResetPasswordDtoBuilder() {
    AccountResetPasswordDto._defaults(this);
  }

  AccountResetPasswordDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _resetToken = $v.resetToken;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountResetPasswordDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountResetPasswordDto;
  }

  @override
  void update(void Function(AccountResetPasswordDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountResetPasswordDto build() => _build();

  _$AccountResetPasswordDto _build() {
    final _$result = _$v ??
        new _$AccountResetPasswordDto._(
            userId: userId,
            resetToken: BuiltValueNullFieldError.checkNotNull(
                resetToken, r'AccountResetPasswordDto', 'resetToken'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'AccountResetPasswordDto', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
