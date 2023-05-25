// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_identity_user_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdentityIdentityUserDto extends IdentityIdentityUserDto {
  @override
  final BuiltMap<String, JsonObject?>? extraProperties;
  @override
  final String? id;
  @override
  final DateTime? creationTime;
  @override
  final String? creatorId;
  @override
  final DateTime? lastModificationTime;
  @override
  final String? lastModifierId;
  @override
  final bool? isDeleted;
  @override
  final String? deleterId;
  @override
  final DateTime? deletionTime;
  @override
  final String? tenantId;
  @override
  final String? userName;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? email;
  @override
  final bool? emailConfirmed;
  @override
  final String? phoneNumber;
  @override
  final bool? phoneNumberConfirmed;
  @override
  final bool? isActive;
  @override
  final bool? lockoutEnabled;
  @override
  final DateTime? lockoutEnd;
  @override
  final String? concurrencyStamp;
  @override
  final int? entityVersion;

  factory _$IdentityIdentityUserDto(
          [void Function(IdentityIdentityUserDtoBuilder)? updates]) =>
      (new IdentityIdentityUserDtoBuilder()..update(updates))._build();

  _$IdentityIdentityUserDto._(
      {this.extraProperties,
      this.id,
      this.creationTime,
      this.creatorId,
      this.lastModificationTime,
      this.lastModifierId,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.tenantId,
      this.userName,
      this.name,
      this.surname,
      this.email,
      this.emailConfirmed,
      this.phoneNumber,
      this.phoneNumberConfirmed,
      this.isActive,
      this.lockoutEnabled,
      this.lockoutEnd,
      this.concurrencyStamp,
      this.entityVersion})
      : super._();

  @override
  IdentityIdentityUserDto rebuild(
          void Function(IdentityIdentityUserDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentityIdentityUserDtoBuilder toBuilder() =>
      new IdentityIdentityUserDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentityIdentityUserDto &&
        extraProperties == other.extraProperties &&
        id == other.id &&
        creationTime == other.creationTime &&
        creatorId == other.creatorId &&
        lastModificationTime == other.lastModificationTime &&
        lastModifierId == other.lastModifierId &&
        isDeleted == other.isDeleted &&
        deleterId == other.deleterId &&
        deletionTime == other.deletionTime &&
        tenantId == other.tenantId &&
        userName == other.userName &&
        name == other.name &&
        surname == other.surname &&
        email == other.email &&
        emailConfirmed == other.emailConfirmed &&
        phoneNumber == other.phoneNumber &&
        phoneNumberConfirmed == other.phoneNumberConfirmed &&
        isActive == other.isActive &&
        lockoutEnabled == other.lockoutEnabled &&
        lockoutEnd == other.lockoutEnd &&
        concurrencyStamp == other.concurrencyStamp &&
        entityVersion == other.entityVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, extraProperties.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, lastModificationTime.hashCode);
    _$hash = $jc(_$hash, lastModifierId.hashCode);
    _$hash = $jc(_$hash, isDeleted.hashCode);
    _$hash = $jc(_$hash, deleterId.hashCode);
    _$hash = $jc(_$hash, deletionTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, surname.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, emailConfirmed.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, phoneNumberConfirmed.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, lockoutEnabled.hashCode);
    _$hash = $jc(_$hash, lockoutEnd.hashCode);
    _$hash = $jc(_$hash, concurrencyStamp.hashCode);
    _$hash = $jc(_$hash, entityVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdentityIdentityUserDto')
          ..add('extraProperties', extraProperties)
          ..add('id', id)
          ..add('creationTime', creationTime)
          ..add('creatorId', creatorId)
          ..add('lastModificationTime', lastModificationTime)
          ..add('lastModifierId', lastModifierId)
          ..add('isDeleted', isDeleted)
          ..add('deleterId', deleterId)
          ..add('deletionTime', deletionTime)
          ..add('tenantId', tenantId)
          ..add('userName', userName)
          ..add('name', name)
          ..add('surname', surname)
          ..add('email', email)
          ..add('emailConfirmed', emailConfirmed)
          ..add('phoneNumber', phoneNumber)
          ..add('phoneNumberConfirmed', phoneNumberConfirmed)
          ..add('isActive', isActive)
          ..add('lockoutEnabled', lockoutEnabled)
          ..add('lockoutEnd', lockoutEnd)
          ..add('concurrencyStamp', concurrencyStamp)
          ..add('entityVersion', entityVersion))
        .toString();
  }
}

class IdentityIdentityUserDtoBuilder
    implements
        Builder<IdentityIdentityUserDto, IdentityIdentityUserDtoBuilder> {
  _$IdentityIdentityUserDto? _$v;

  MapBuilder<String, JsonObject?>? _extraProperties;
  MapBuilder<String, JsonObject?> get extraProperties =>
      _$this._extraProperties ??= new MapBuilder<String, JsonObject?>();
  set extraProperties(MapBuilder<String, JsonObject?>? extraProperties) =>
      _$this._extraProperties = extraProperties;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  String? _creatorId;
  String? get creatorId => _$this._creatorId;
  set creatorId(String? creatorId) => _$this._creatorId = creatorId;

  DateTime? _lastModificationTime;
  DateTime? get lastModificationTime => _$this._lastModificationTime;
  set lastModificationTime(DateTime? lastModificationTime) =>
      _$this._lastModificationTime = lastModificationTime;

  String? _lastModifierId;
  String? get lastModifierId => _$this._lastModifierId;
  set lastModifierId(String? lastModifierId) =>
      _$this._lastModifierId = lastModifierId;

  bool? _isDeleted;
  bool? get isDeleted => _$this._isDeleted;
  set isDeleted(bool? isDeleted) => _$this._isDeleted = isDeleted;

  String? _deleterId;
  String? get deleterId => _$this._deleterId;
  set deleterId(String? deleterId) => _$this._deleterId = deleterId;

  DateTime? _deletionTime;
  DateTime? get deletionTime => _$this._deletionTime;
  set deletionTime(DateTime? deletionTime) =>
      _$this._deletionTime = deletionTime;

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

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _lockoutEnabled;
  bool? get lockoutEnabled => _$this._lockoutEnabled;
  set lockoutEnabled(bool? lockoutEnabled) =>
      _$this._lockoutEnabled = lockoutEnabled;

  DateTime? _lockoutEnd;
  DateTime? get lockoutEnd => _$this._lockoutEnd;
  set lockoutEnd(DateTime? lockoutEnd) => _$this._lockoutEnd = lockoutEnd;

  String? _concurrencyStamp;
  String? get concurrencyStamp => _$this._concurrencyStamp;
  set concurrencyStamp(String? concurrencyStamp) =>
      _$this._concurrencyStamp = concurrencyStamp;

  int? _entityVersion;
  int? get entityVersion => _$this._entityVersion;
  set entityVersion(int? entityVersion) =>
      _$this._entityVersion = entityVersion;

  IdentityIdentityUserDtoBuilder() {
    IdentityIdentityUserDto._defaults(this);
  }

  IdentityIdentityUserDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _extraProperties = $v.extraProperties?.toBuilder();
      _id = $v.id;
      _creationTime = $v.creationTime;
      _creatorId = $v.creatorId;
      _lastModificationTime = $v.lastModificationTime;
      _lastModifierId = $v.lastModifierId;
      _isDeleted = $v.isDeleted;
      _deleterId = $v.deleterId;
      _deletionTime = $v.deletionTime;
      _tenantId = $v.tenantId;
      _userName = $v.userName;
      _name = $v.name;
      _surname = $v.surname;
      _email = $v.email;
      _emailConfirmed = $v.emailConfirmed;
      _phoneNumber = $v.phoneNumber;
      _phoneNumberConfirmed = $v.phoneNumberConfirmed;
      _isActive = $v.isActive;
      _lockoutEnabled = $v.lockoutEnabled;
      _lockoutEnd = $v.lockoutEnd;
      _concurrencyStamp = $v.concurrencyStamp;
      _entityVersion = $v.entityVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdentityIdentityUserDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdentityIdentityUserDto;
  }

  @override
  void update(void Function(IdentityIdentityUserDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdentityIdentityUserDto build() => _build();

  _$IdentityIdentityUserDto _build() {
    _$IdentityIdentityUserDto _$result;
    try {
      _$result = _$v ??
          new _$IdentityIdentityUserDto._(
              extraProperties: _extraProperties?.build(),
              id: id,
              creationTime: creationTime,
              creatorId: creatorId,
              lastModificationTime: lastModificationTime,
              lastModifierId: lastModifierId,
              isDeleted: isDeleted,
              deleterId: deleterId,
              deletionTime: deletionTime,
              tenantId: tenantId,
              userName: userName,
              name: name,
              surname: surname,
              email: email,
              emailConfirmed: emailConfirmed,
              phoneNumber: phoneNumber,
              phoneNumberConfirmed: phoneNumberConfirmed,
              isActive: isActive,
              lockoutEnabled: lockoutEnabled,
              lockoutEnd: lockoutEnd,
              concurrencyStamp: concurrencyStamp,
              entityVersion: entityVersion);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraProperties';
        _extraProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IdentityIdentityUserDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
