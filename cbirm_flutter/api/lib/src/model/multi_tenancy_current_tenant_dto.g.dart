// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_tenancy_current_tenant_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MultiTenancyCurrentTenantDto extends MultiTenancyCurrentTenantDto {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final bool? isAvailable;

  factory _$MultiTenancyCurrentTenantDto(
          [void Function(MultiTenancyCurrentTenantDtoBuilder)? updates]) =>
      (new MultiTenancyCurrentTenantDtoBuilder()..update(updates))._build();

  _$MultiTenancyCurrentTenantDto._({this.id, this.name, this.isAvailable})
      : super._();

  @override
  MultiTenancyCurrentTenantDto rebuild(
          void Function(MultiTenancyCurrentTenantDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultiTenancyCurrentTenantDtoBuilder toBuilder() =>
      new MultiTenancyCurrentTenantDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultiTenancyCurrentTenantDto &&
        id == other.id &&
        name == other.name &&
        isAvailable == other.isAvailable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isAvailable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MultiTenancyCurrentTenantDto')
          ..add('id', id)
          ..add('name', name)
          ..add('isAvailable', isAvailable))
        .toString();
  }
}

class MultiTenancyCurrentTenantDtoBuilder
    implements
        Builder<MultiTenancyCurrentTenantDto,
            MultiTenancyCurrentTenantDtoBuilder> {
  _$MultiTenancyCurrentTenantDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  MultiTenancyCurrentTenantDtoBuilder() {
    MultiTenancyCurrentTenantDto._defaults(this);
  }

  MultiTenancyCurrentTenantDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _isAvailable = $v.isAvailable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultiTenancyCurrentTenantDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MultiTenancyCurrentTenantDto;
  }

  @override
  void update(void Function(MultiTenancyCurrentTenantDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MultiTenancyCurrentTenantDto build() => _build();

  _$MultiTenancyCurrentTenantDto _build() {
    final _$result = _$v ??
        new _$MultiTenancyCurrentTenantDto._(
            id: id, name: name, isAvailable: isAvailable);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
