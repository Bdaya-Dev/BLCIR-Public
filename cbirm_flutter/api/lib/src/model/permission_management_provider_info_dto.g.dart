// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_management_provider_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionManagementProviderInfoDto
    extends PermissionManagementProviderInfoDto {
  @override
  final String? providerName;
  @override
  final String? providerKey;

  factory _$PermissionManagementProviderInfoDto(
          [void Function(PermissionManagementProviderInfoDtoBuilder)?
              updates]) =>
      (new PermissionManagementProviderInfoDtoBuilder()..update(updates))
          ._build();

  _$PermissionManagementProviderInfoDto._({this.providerName, this.providerKey})
      : super._();

  @override
  PermissionManagementProviderInfoDto rebuild(
          void Function(PermissionManagementProviderInfoDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionManagementProviderInfoDtoBuilder toBuilder() =>
      new PermissionManagementProviderInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionManagementProviderInfoDto &&
        providerName == other.providerName &&
        providerKey == other.providerKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, providerName.hashCode);
    _$hash = $jc(_$hash, providerKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PermissionManagementProviderInfoDto')
          ..add('providerName', providerName)
          ..add('providerKey', providerKey))
        .toString();
  }
}

class PermissionManagementProviderInfoDtoBuilder
    implements
        Builder<PermissionManagementProviderInfoDto,
            PermissionManagementProviderInfoDtoBuilder> {
  _$PermissionManagementProviderInfoDto? _$v;

  String? _providerName;
  String? get providerName => _$this._providerName;
  set providerName(String? providerName) => _$this._providerName = providerName;

  String? _providerKey;
  String? get providerKey => _$this._providerKey;
  set providerKey(String? providerKey) => _$this._providerKey = providerKey;

  PermissionManagementProviderInfoDtoBuilder() {
    PermissionManagementProviderInfoDto._defaults(this);
  }

  PermissionManagementProviderInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _providerName = $v.providerName;
      _providerKey = $v.providerKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionManagementProviderInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PermissionManagementProviderInfoDto;
  }

  @override
  void update(
      void Function(PermissionManagementProviderInfoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionManagementProviderInfoDto build() => _build();

  _$PermissionManagementProviderInfoDto _build() {
    final _$result = _$v ??
        new _$PermissionManagementProviderInfoDto._(
            providerName: providerName, providerKey: providerKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
