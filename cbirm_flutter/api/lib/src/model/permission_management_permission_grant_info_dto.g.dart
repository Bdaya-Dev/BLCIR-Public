// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_management_permission_grant_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionManagementPermissionGrantInfoDto
    extends PermissionManagementPermissionGrantInfoDto {
  @override
  final String? name;
  @override
  final String? displayName;
  @override
  final String? parentName;
  @override
  final bool? isGranted;
  @override
  final BuiltList<String>? allowedProviders;
  @override
  final BuiltList<PermissionManagementProviderInfoDto>? grantedProviders;

  factory _$PermissionManagementPermissionGrantInfoDto(
          [void Function(PermissionManagementPermissionGrantInfoDtoBuilder)?
              updates]) =>
      (new PermissionManagementPermissionGrantInfoDtoBuilder()..update(updates))
          ._build();

  _$PermissionManagementPermissionGrantInfoDto._(
      {this.name,
      this.displayName,
      this.parentName,
      this.isGranted,
      this.allowedProviders,
      this.grantedProviders})
      : super._();

  @override
  PermissionManagementPermissionGrantInfoDto rebuild(
          void Function(PermissionManagementPermissionGrantInfoDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionManagementPermissionGrantInfoDtoBuilder toBuilder() =>
      new PermissionManagementPermissionGrantInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionManagementPermissionGrantInfoDto &&
        name == other.name &&
        displayName == other.displayName &&
        parentName == other.parentName &&
        isGranted == other.isGranted &&
        allowedProviders == other.allowedProviders &&
        grantedProviders == other.grantedProviders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, parentName.hashCode);
    _$hash = $jc(_$hash, isGranted.hashCode);
    _$hash = $jc(_$hash, allowedProviders.hashCode);
    _$hash = $jc(_$hash, grantedProviders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PermissionManagementPermissionGrantInfoDto')
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('parentName', parentName)
          ..add('isGranted', isGranted)
          ..add('allowedProviders', allowedProviders)
          ..add('grantedProviders', grantedProviders))
        .toString();
  }
}

class PermissionManagementPermissionGrantInfoDtoBuilder
    implements
        Builder<PermissionManagementPermissionGrantInfoDto,
            PermissionManagementPermissionGrantInfoDtoBuilder> {
  _$PermissionManagementPermissionGrantInfoDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _parentName;
  String? get parentName => _$this._parentName;
  set parentName(String? parentName) => _$this._parentName = parentName;

  bool? _isGranted;
  bool? get isGranted => _$this._isGranted;
  set isGranted(bool? isGranted) => _$this._isGranted = isGranted;

  ListBuilder<String>? _allowedProviders;
  ListBuilder<String> get allowedProviders =>
      _$this._allowedProviders ??= new ListBuilder<String>();
  set allowedProviders(ListBuilder<String>? allowedProviders) =>
      _$this._allowedProviders = allowedProviders;

  ListBuilder<PermissionManagementProviderInfoDto>? _grantedProviders;
  ListBuilder<PermissionManagementProviderInfoDto> get grantedProviders =>
      _$this._grantedProviders ??=
          new ListBuilder<PermissionManagementProviderInfoDto>();
  set grantedProviders(
          ListBuilder<PermissionManagementProviderInfoDto>? grantedProviders) =>
      _$this._grantedProviders = grantedProviders;

  PermissionManagementPermissionGrantInfoDtoBuilder() {
    PermissionManagementPermissionGrantInfoDto._defaults(this);
  }

  PermissionManagementPermissionGrantInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _displayName = $v.displayName;
      _parentName = $v.parentName;
      _isGranted = $v.isGranted;
      _allowedProviders = $v.allowedProviders?.toBuilder();
      _grantedProviders = $v.grantedProviders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionManagementPermissionGrantInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PermissionManagementPermissionGrantInfoDto;
  }

  @override
  void update(
      void Function(PermissionManagementPermissionGrantInfoDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionManagementPermissionGrantInfoDto build() => _build();

  _$PermissionManagementPermissionGrantInfoDto _build() {
    _$PermissionManagementPermissionGrantInfoDto _$result;
    try {
      _$result = _$v ??
          new _$PermissionManagementPermissionGrantInfoDto._(
              name: name,
              displayName: displayName,
              parentName: parentName,
              isGranted: isGranted,
              allowedProviders: _allowedProviders?.build(),
              grantedProviders: _grantedProviders?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedProviders';
        _allowedProviders?.build();
        _$failedField = 'grantedProviders';
        _grantedProviders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PermissionManagementPermissionGrantInfoDto',
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
