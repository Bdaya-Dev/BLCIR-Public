// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_web_areas_account_controllers_models_abp_login_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountWebAreasAccountControllersModelsAbpLoginResult
    extends AccountWebAreasAccountControllersModelsAbpLoginResult {
  @override
  final AccountWebAreasAccountControllersModelsLoginResultType? result;
  @override
  final String? description;

  factory _$AccountWebAreasAccountControllersModelsAbpLoginResult(
          [void Function(
                  AccountWebAreasAccountControllersModelsAbpLoginResultBuilder)?
              updates]) =>
      (new AccountWebAreasAccountControllersModelsAbpLoginResultBuilder()
            ..update(updates))
          ._build();

  _$AccountWebAreasAccountControllersModelsAbpLoginResult._(
      {this.result, this.description})
      : super._();

  @override
  AccountWebAreasAccountControllersModelsAbpLoginResult rebuild(
          void Function(
                  AccountWebAreasAccountControllersModelsAbpLoginResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountWebAreasAccountControllersModelsAbpLoginResultBuilder toBuilder() =>
      new AccountWebAreasAccountControllersModelsAbpLoginResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountWebAreasAccountControllersModelsAbpLoginResult &&
        result == other.result &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'AccountWebAreasAccountControllersModelsAbpLoginResult')
          ..add('result', result)
          ..add('description', description))
        .toString();
  }
}

class AccountWebAreasAccountControllersModelsAbpLoginResultBuilder
    implements
        Builder<AccountWebAreasAccountControllersModelsAbpLoginResult,
            AccountWebAreasAccountControllersModelsAbpLoginResultBuilder> {
  _$AccountWebAreasAccountControllersModelsAbpLoginResult? _$v;

  AccountWebAreasAccountControllersModelsLoginResultType? _result;
  AccountWebAreasAccountControllersModelsLoginResultType? get result =>
      _$this._result;
  set result(AccountWebAreasAccountControllersModelsLoginResultType? result) =>
      _$this._result = result;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  AccountWebAreasAccountControllersModelsAbpLoginResultBuilder() {
    AccountWebAreasAccountControllersModelsAbpLoginResult._defaults(this);
  }

  AccountWebAreasAccountControllersModelsAbpLoginResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountWebAreasAccountControllersModelsAbpLoginResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountWebAreasAccountControllersModelsAbpLoginResult;
  }

  @override
  void update(
      void Function(
              AccountWebAreasAccountControllersModelsAbpLoginResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountWebAreasAccountControllersModelsAbpLoginResult build() => _build();

  _$AccountWebAreasAccountControllersModelsAbpLoginResult _build() {
    final _$result = _$v ??
        new _$AccountWebAreasAccountControllersModelsAbpLoginResult._(
            result: result, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
