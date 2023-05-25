// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_identity_user_create_or_update_dto_base.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class IdentityIdentityUserCreateOrUpdateDtoBaseBuilder {
  void replace(IdentityIdentityUserCreateOrUpdateDtoBase other);
  void update(
      void Function(IdentityIdentityUserCreateOrUpdateDtoBaseBuilder) updates);
  MapBuilder<String, JsonObject?> get extraProperties;
  set extraProperties(MapBuilder<String, JsonObject?>? extraProperties);

  String? get userName;
  set userName(String? userName);

  String? get name;
  set name(String? name);

  String? get surname;
  set surname(String? surname);

  String? get email;
  set email(String? email);

  String? get phoneNumber;
  set phoneNumber(String? phoneNumber);

  bool? get isActive;
  set isActive(bool? isActive);

  bool? get lockoutEnabled;
  set lockoutEnabled(bool? lockoutEnabled);

  ListBuilder<String> get roleNames;
  set roleNames(ListBuilder<String>? roleNames);
}

class _$$IdentityIdentityUserCreateOrUpdateDtoBase
    extends $IdentityIdentityUserCreateOrUpdateDtoBase {
  @override
  final BuiltMap<String, JsonObject?>? extraProperties;
  @override
  final String userName;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String email;
  @override
  final String? phoneNumber;
  @override
  final bool? isActive;
  @override
  final bool? lockoutEnabled;
  @override
  final BuiltList<String>? roleNames;

  factory _$$IdentityIdentityUserCreateOrUpdateDtoBase(
          [void Function($IdentityIdentityUserCreateOrUpdateDtoBaseBuilder)?
              updates]) =>
      (new $IdentityIdentityUserCreateOrUpdateDtoBaseBuilder()..update(updates))
          ._build();

  _$$IdentityIdentityUserCreateOrUpdateDtoBase._(
      {this.extraProperties,
      required this.userName,
      this.name,
      this.surname,
      required this.email,
      this.phoneNumber,
      this.isActive,
      this.lockoutEnabled,
      this.roleNames})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'$IdentityIdentityUserCreateOrUpdateDtoBase', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        email, r'$IdentityIdentityUserCreateOrUpdateDtoBase', 'email');
  }

  @override
  $IdentityIdentityUserCreateOrUpdateDtoBase rebuild(
          void Function($IdentityIdentityUserCreateOrUpdateDtoBaseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $IdentityIdentityUserCreateOrUpdateDtoBaseBuilder toBuilder() =>
      new $IdentityIdentityUserCreateOrUpdateDtoBaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $IdentityIdentityUserCreateOrUpdateDtoBase &&
        extraProperties == other.extraProperties &&
        userName == other.userName &&
        name == other.name &&
        surname == other.surname &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        isActive == other.isActive &&
        lockoutEnabled == other.lockoutEnabled &&
        roleNames == other.roleNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, extraProperties.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, surname.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, lockoutEnabled.hashCode);
    _$hash = $jc(_$hash, roleNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'$IdentityIdentityUserCreateOrUpdateDtoBase')
          ..add('extraProperties', extraProperties)
          ..add('userName', userName)
          ..add('name', name)
          ..add('surname', surname)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('isActive', isActive)
          ..add('lockoutEnabled', lockoutEnabled)
          ..add('roleNames', roleNames))
        .toString();
  }
}

class $IdentityIdentityUserCreateOrUpdateDtoBaseBuilder
    implements
        Builder<$IdentityIdentityUserCreateOrUpdateDtoBase,
            $IdentityIdentityUserCreateOrUpdateDtoBaseBuilder>,
        IdentityIdentityUserCreateOrUpdateDtoBaseBuilder {
  _$$IdentityIdentityUserCreateOrUpdateDtoBase? _$v;

  MapBuilder<String, JsonObject?>? _extraProperties;
  MapBuilder<String, JsonObject?> get extraProperties =>
      _$this._extraProperties ??= new MapBuilder<String, JsonObject?>();
  set extraProperties(
          covariant MapBuilder<String, JsonObject?>? extraProperties) =>
      _$this._extraProperties = extraProperties;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(covariant String? userName) => _$this._userName = userName;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(covariant String? surname) => _$this._surname = surname;

  String? _email;
  String? get email => _$this._email;
  set email(covariant String? email) => _$this._email = email;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(covariant String? phoneNumber) =>
      _$this._phoneNumber = phoneNumber;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(covariant bool? isActive) => _$this._isActive = isActive;

  bool? _lockoutEnabled;
  bool? get lockoutEnabled => _$this._lockoutEnabled;
  set lockoutEnabled(covariant bool? lockoutEnabled) =>
      _$this._lockoutEnabled = lockoutEnabled;

  ListBuilder<String>? _roleNames;
  ListBuilder<String> get roleNames =>
      _$this._roleNames ??= new ListBuilder<String>();
  set roleNames(covariant ListBuilder<String>? roleNames) =>
      _$this._roleNames = roleNames;

  $IdentityIdentityUserCreateOrUpdateDtoBaseBuilder() {
    $IdentityIdentityUserCreateOrUpdateDtoBase._defaults(this);
  }

  $IdentityIdentityUserCreateOrUpdateDtoBaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _extraProperties = $v.extraProperties?.toBuilder();
      _userName = $v.userName;
      _name = $v.name;
      _surname = $v.surname;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _isActive = $v.isActive;
      _lockoutEnabled = $v.lockoutEnabled;
      _roleNames = $v.roleNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $IdentityIdentityUserCreateOrUpdateDtoBase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$IdentityIdentityUserCreateOrUpdateDtoBase;
  }

  @override
  void update(
      void Function($IdentityIdentityUserCreateOrUpdateDtoBaseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  $IdentityIdentityUserCreateOrUpdateDtoBase build() => _build();

  _$$IdentityIdentityUserCreateOrUpdateDtoBase _build() {
    _$$IdentityIdentityUserCreateOrUpdateDtoBase _$result;
    try {
      _$result = _$v ??
          new _$$IdentityIdentityUserCreateOrUpdateDtoBase._(
              extraProperties: _extraProperties?.build(),
              userName: BuiltValueNullFieldError.checkNotNull(userName,
                  r'$IdentityIdentityUserCreateOrUpdateDtoBase', 'userName'),
              name: name,
              surname: surname,
              email: BuiltValueNullFieldError.checkNotNull(email,
                  r'$IdentityIdentityUserCreateOrUpdateDtoBase', 'email'),
              phoneNumber: phoneNumber,
              isActive: isActive,
              lockoutEnabled: lockoutEnabled,
              roleNames: _roleNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraProperties';
        _extraProperties?.build();

        _$failedField = 'roleNames';
        _roleNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$IdentityIdentityUserCreateOrUpdateDtoBase',
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
