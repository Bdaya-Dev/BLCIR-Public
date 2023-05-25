// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_change_password_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountChangePasswordInput extends AccountChangePasswordInput {
  @override
  final String? currentPassword;
  @override
  final String newPassword;

  factory _$AccountChangePasswordInput(
          [void Function(AccountChangePasswordInputBuilder)? updates]) =>
      (new AccountChangePasswordInputBuilder()..update(updates))._build();

  _$AccountChangePasswordInput._(
      {this.currentPassword, required this.newPassword})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        newPassword, r'AccountChangePasswordInput', 'newPassword');
  }

  @override
  AccountChangePasswordInput rebuild(
          void Function(AccountChangePasswordInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountChangePasswordInputBuilder toBuilder() =>
      new AccountChangePasswordInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountChangePasswordInput &&
        currentPassword == other.currentPassword &&
        newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentPassword.hashCode);
    _$hash = $jc(_$hash, newPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountChangePasswordInput')
          ..add('currentPassword', currentPassword)
          ..add('newPassword', newPassword))
        .toString();
  }
}

class AccountChangePasswordInputBuilder
    implements
        Builder<AccountChangePasswordInput, AccountChangePasswordInputBuilder> {
  _$AccountChangePasswordInput? _$v;

  String? _currentPassword;
  String? get currentPassword => _$this._currentPassword;
  set currentPassword(String? currentPassword) =>
      _$this._currentPassword = currentPassword;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  AccountChangePasswordInputBuilder() {
    AccountChangePasswordInput._defaults(this);
  }

  AccountChangePasswordInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentPassword = $v.currentPassword;
      _newPassword = $v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountChangePasswordInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountChangePasswordInput;
  }

  @override
  void update(void Function(AccountChangePasswordInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountChangePasswordInput build() => _build();

  _$AccountChangePasswordInput _build() {
    final _$result = _$v ??
        new _$AccountChangePasswordInput._(
            currentPassword: currentPassword,
            newPassword: BuiltValueNullFieldError.checkNotNull(
                newPassword, r'AccountChangePasswordInput', 'newPassword'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
