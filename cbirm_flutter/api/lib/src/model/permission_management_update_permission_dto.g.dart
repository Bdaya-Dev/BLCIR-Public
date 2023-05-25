// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_management_update_permission_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionManagementUpdatePermissionDto
    extends PermissionManagementUpdatePermissionDto {
  @override
  final String? name;
  @override
  final bool? isGranted;

  factory _$PermissionManagementUpdatePermissionDto(
          [void Function(PermissionManagementUpdatePermissionDtoBuilder)?
              updates]) =>
      (new PermissionManagementUpdatePermissionDtoBuilder()..update(updates))
          ._build();

  _$PermissionManagementUpdatePermissionDto._({this.name, this.isGranted})
      : super._();

  @override
  PermissionManagementUpdatePermissionDto rebuild(
          void Function(PermissionManagementUpdatePermissionDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionManagementUpdatePermissionDtoBuilder toBuilder() =>
      new PermissionManagementUpdatePermissionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionManagementUpdatePermissionDto &&
        name == other.name &&
        isGranted == other.isGranted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isGranted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PermissionManagementUpdatePermissionDto')
          ..add('name', name)
          ..add('isGranted', isGranted))
        .toString();
  }
}

class PermissionManagementUpdatePermissionDtoBuilder
    implements
        Builder<PermissionManagementUpdatePermissionDto,
            PermissionManagementUpdatePermissionDtoBuilder> {
  _$PermissionManagementUpdatePermissionDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isGranted;
  bool? get isGranted => _$this._isGranted;
  set isGranted(bool? isGranted) => _$this._isGranted = isGranted;

  PermissionManagementUpdatePermissionDtoBuilder() {
    PermissionManagementUpdatePermissionDto._defaults(this);
  }

  PermissionManagementUpdatePermissionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _isGranted = $v.isGranted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionManagementUpdatePermissionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PermissionManagementUpdatePermissionDto;
  }

  @override
  void update(
      void Function(PermissionManagementUpdatePermissionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionManagementUpdatePermissionDto build() => _build();

  _$PermissionManagementUpdatePermissionDto _build() {
    final _$result = _$v ??
        new _$PermissionManagementUpdatePermissionDto._(
            name: name, isGranted: isGranted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
