// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_user_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsersUserData extends UsersUserData {
  @override
  final String? id;
  @override
  final String? tenantId;
  @override
  final String? userName;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final bool? isActive;
  @override
  final String? email;
  @override
  final bool? emailConfirmed;
  @override
  final String? phoneNumber;
  @override
  final bool? phoneNumberConfirmed;

  factory _$UsersUserData([void Function(UsersUserDataBuilder)? updates]) =>
      (new UsersUserDataBuilder()..update(updates))._build();

  _$UsersUserData._(
      {this.id,
      this.tenantId,
      this.userName,
      this.name,
      this.surname,
      this.isActive,
      this.email,
      this.emailConfirmed,
      this.phoneNumber,
      this.phoneNumberConfirmed})
      : super._();

  @override
  UsersUserData rebuild(void Function(UsersUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersUserDataBuilder toBuilder() => new UsersUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersUserData &&
        id == other.id &&
        tenantId == other.tenantId &&
        userName == other.userName &&
        name == other.name &&
        surname == other.surname &&
        isActive == other.isActive &&
        email == other.email &&
        emailConfirmed == other.emailConfirmed &&
        phoneNumber == other.phoneNumber &&
        phoneNumberConfirmed == other.phoneNumberConfirmed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, surname.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, emailConfirmed.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, phoneNumberConfirmed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersUserData')
          ..add('id', id)
          ..add('tenantId', tenantId)
          ..add('userName', userName)
          ..add('name', name)
          ..add('surname', surname)
          ..add('isActive', isActive)
          ..add('email', email)
          ..add('emailConfirmed', emailConfirmed)
          ..add('phoneNumber', phoneNumber)
          ..add('phoneNumberConfirmed', phoneNumberConfirmed))
        .toString();
  }
}

class UsersUserDataBuilder
    implements Builder<UsersUserData, UsersUserDataBuilder> {
  _$UsersUserData? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(String? surname) => _$this._surname = surname;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _emailConfirmed;
  bool? get emailConfirmed => _$this._emailConfirmed;
  set emailConfirmed(bool? emailConfirmed) =>
      _$this._emailConfirmed = emailConfirmed;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool? _phoneNumberConfirmed;
  bool? get phoneNumberConfirmed => _$this._phoneNumberConfirmed;
  set phoneNumberConfirmed(bool? phoneNumberConfirmed) =>
      _$this._phoneNumberConfirmed = phoneNumberConfirmed;

  UsersUserDataBuilder() {
    UsersUserData._defaults(this);
  }

  UsersUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tenantId = $v.tenantId;
      _userName = $v.userName;
      _name = $v.name;
      _surname = $v.surname;
      _isActive = $v.isActive;
      _email = $v.email;
      _emailConfirmed = $v.emailConfirmed;
      _phoneNumber = $v.phoneNumber;
      _phoneNumberConfirmed = $v.phoneNumberConfirmed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersUserData;
  }

  @override
  void update(void Function(UsersUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersUserData build() => _build();

  _$UsersUserData _build() {
    final _$result = _$v ??
        new _$UsersUserData._(
            id: id,
            tenantId: tenantId,
            userName: userName,
            name: name,
            surname: surname,
            isActive: isActive,
            email: email,
            emailConfirmed: emailConfirmed,
            phoneNumber: phoneNumber,
            phoneNumberConfirmed: phoneNumberConfirmed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
