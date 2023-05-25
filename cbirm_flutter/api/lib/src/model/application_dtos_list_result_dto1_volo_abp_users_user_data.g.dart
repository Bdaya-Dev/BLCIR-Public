// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_dtos_list_result_dto1_volo_abp_users_user_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplicationDtosListResultDto1VoloAbpUsersUserData
    extends ApplicationDtosListResultDto1VoloAbpUsersUserData {
  @override
  final BuiltList<UsersUserData>? items;

  factory _$ApplicationDtosListResultDto1VoloAbpUsersUserData(
          [void Function(
                  ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder)?
              updates]) =>
      (new ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder()
            ..update(updates))
          ._build();

  _$ApplicationDtosListResultDto1VoloAbpUsersUserData._({this.items})
      : super._();

  @override
  ApplicationDtosListResultDto1VoloAbpUsersUserData rebuild(
          void Function(
                  ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder toBuilder() =>
      new ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationDtosListResultDto1VoloAbpUsersUserData &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApplicationDtosListResultDto1VoloAbpUsersUserData')
          ..add('items', items))
        .toString();
  }
}

class ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder
    implements
        Builder<ApplicationDtosListResultDto1VoloAbpUsersUserData,
            ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder> {
  _$ApplicationDtosListResultDto1VoloAbpUsersUserData? _$v;

  ListBuilder<UsersUserData>? _items;
  ListBuilder<UsersUserData> get items =>
      _$this._items ??= new ListBuilder<UsersUserData>();
  set items(ListBuilder<UsersUserData>? items) => _$this._items = items;

  ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder() {
    ApplicationDtosListResultDto1VoloAbpUsersUserData._defaults(this);
  }

  ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationDtosListResultDto1VoloAbpUsersUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationDtosListResultDto1VoloAbpUsersUserData;
  }

  @override
  void update(
      void Function(ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationDtosListResultDto1VoloAbpUsersUserData build() => _build();

  _$ApplicationDtosListResultDto1VoloAbpUsersUserData _build() {
    _$ApplicationDtosListResultDto1VoloAbpUsersUserData _$result;
    try {
      _$result = _$v ??
          new _$ApplicationDtosListResultDto1VoloAbpUsersUserData._(
              items: _items?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationDtosListResultDto1VoloAbpUsersUserData',
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
