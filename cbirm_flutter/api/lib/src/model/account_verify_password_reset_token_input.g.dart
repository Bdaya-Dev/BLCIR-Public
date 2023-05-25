// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_verify_password_reset_token_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountVerifyPasswordResetTokenInput
    extends AccountVerifyPasswordResetTokenInput {
  @override
  final String? userId;
  @override
  final String resetToken;

  factory _$AccountVerifyPasswordResetTokenInput(
          [void Function(AccountVerifyPasswordResetTokenInputBuilder)?
              updates]) =>
      (new AccountVerifyPasswordResetTokenInputBuilder()..update(updates))
          ._build();

  _$AccountVerifyPasswordResetTokenInput._(
      {this.userId, required this.resetToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resetToken, r'AccountVerifyPasswordResetTokenInput', 'resetToken');
  }

  @override
  AccountVerifyPasswordResetTokenInput rebuild(
          void Function(AccountVerifyPasswordResetTokenInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountVerifyPasswordResetTokenInputBuilder toBuilder() =>
      new AccountVerifyPasswordResetTokenInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountVerifyPasswordResetTokenInput &&
        userId == other.userId &&
        resetToken == other.resetToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, resetToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountVerifyPasswordResetTokenInput')
          ..add('userId', userId)
          ..add('resetToken', resetToken))
        .toString();
  }
}

class AccountVerifyPasswordResetTokenInputBuilder
    implements
        Builder<AccountVerifyPasswordResetTokenInput,
            AccountVerifyPasswordResetTokenInputBuilder> {
  _$AccountVerifyPasswordResetTokenInput? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _resetToken;
  String? get resetToken => _$this._resetToken;
  set resetToken(String? resetToken) => _$this._resetToken = resetToken;

  AccountVerifyPasswordResetTokenInputBuilder() {
    AccountVerifyPasswordResetTokenInput._defaults(this);
  }

  AccountVerifyPasswordResetTokenInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _resetToken = $v.resetToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountVerifyPasswordResetTokenInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountVerifyPasswordResetTokenInput;
  }

  @override
  void update(
      void Function(AccountVerifyPasswordResetTokenInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountVerifyPasswordResetTokenInput build() => _build();

  _$AccountVerifyPasswordResetTokenInput _build() {
    final _$result = _$v ??
        new _$AccountVerifyPasswordResetTokenInput._(
            userId: userId,
            resetToken: BuiltValueNullFieldError.checkNotNull(resetToken,
                r'AccountVerifyPasswordResetTokenInput', 'resetToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
