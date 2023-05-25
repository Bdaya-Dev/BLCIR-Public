// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_management_feature_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeatureManagementFeatureDto extends FeatureManagementFeatureDto {
  @override
  final String? name;
  @override
  final String? displayName;
  @override
  final String? value;
  @override
  final FeatureManagementFeatureProviderDto? provider;
  @override
  final String? description;
  @override
  final ValidationStringValuesIStringValueType? valueType;
  @override
  final int? depth;
  @override
  final String? parentName;

  factory _$FeatureManagementFeatureDto(
          [void Function(FeatureManagementFeatureDtoBuilder)? updates]) =>
      (new FeatureManagementFeatureDtoBuilder()..update(updates))._build();

  _$FeatureManagementFeatureDto._(
      {this.name,
      this.displayName,
      this.value,
      this.provider,
      this.description,
      this.valueType,
      this.depth,
      this.parentName})
      : super._();

  @override
  FeatureManagementFeatureDto rebuild(
          void Function(FeatureManagementFeatureDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeatureManagementFeatureDtoBuilder toBuilder() =>
      new FeatureManagementFeatureDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeatureManagementFeatureDto &&
        name == other.name &&
        displayName == other.displayName &&
        value == other.value &&
        provider == other.provider &&
        description == other.description &&
        valueType == other.valueType &&
        depth == other.depth &&
        parentName == other.parentName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, valueType.hashCode);
    _$hash = $jc(_$hash, depth.hashCode);
    _$hash = $jc(_$hash, parentName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeatureManagementFeatureDto')
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('value', value)
          ..add('provider', provider)
          ..add('description', description)
          ..add('valueType', valueType)
          ..add('depth', depth)
          ..add('parentName', parentName))
        .toString();
  }
}

class FeatureManagementFeatureDtoBuilder
    implements
        Builder<FeatureManagementFeatureDto,
            FeatureManagementFeatureDtoBuilder> {
  _$FeatureManagementFeatureDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  FeatureManagementFeatureProviderDtoBuilder? _provider;
  FeatureManagementFeatureProviderDtoBuilder get provider =>
      _$this._provider ??= new FeatureManagementFeatureProviderDtoBuilder();
  set provider(FeatureManagementFeatureProviderDtoBuilder? provider) =>
      _$this._provider = provider;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ValidationStringValuesIStringValueTypeBuilder? _valueType;
  ValidationStringValuesIStringValueTypeBuilder get valueType =>
      _$this._valueType ??= new ValidationStringValuesIStringValueTypeBuilder();
  set valueType(ValidationStringValuesIStringValueTypeBuilder? valueType) =>
      _$this._valueType = valueType;

  int? _depth;
  int? get depth => _$this._depth;
  set depth(int? depth) => _$this._depth = depth;

  String? _parentName;
  String? get parentName => _$this._parentName;
  set parentName(String? parentName) => _$this._parentName = parentName;

  FeatureManagementFeatureDtoBuilder() {
    FeatureManagementFeatureDto._defaults(this);
  }

  FeatureManagementFeatureDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _displayName = $v.displayName;
      _value = $v.value;
      _provider = $v.provider?.toBuilder();
      _description = $v.description;
      _valueType = $v.valueType?.toBuilder();
      _depth = $v.depth;
      _parentName = $v.parentName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeatureManagementFeatureDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeatureManagementFeatureDto;
  }

  @override
  void update(void Function(FeatureManagementFeatureDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeatureManagementFeatureDto build() => _build();

  _$FeatureManagementFeatureDto _build() {
    _$FeatureManagementFeatureDto _$result;
    try {
      _$result = _$v ??
          new _$FeatureManagementFeatureDto._(
              name: name,
              displayName: displayName,
              value: value,
              provider: _provider?.build(),
              description: description,
              valueType: _valueType?.build(),
              depth: depth,
              parentName: parentName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'provider';
        _provider?.build();

        _$failedField = 'valueType';
        _valueType?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FeatureManagementFeatureDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
