// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_modeling_parameter_api_description_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpModelingParameterApiDescriptionModel
    extends HttpModelingParameterApiDescriptionModel {
  @override
  final String? nameOnMethod;
  @override
  final String? name;
  @override
  final String? jsonName;
  @override
  final String? type;
  @override
  final String? typeSimple;
  @override
  final bool? isOptional;
  @override
  final JsonObject? defaultValue;
  @override
  final BuiltList<String>? constraintTypes;
  @override
  final String? bindingSourceId;
  @override
  final String? descriptorName;

  factory _$HttpModelingParameterApiDescriptionModel(
          [void Function(HttpModelingParameterApiDescriptionModelBuilder)?
              updates]) =>
      (new HttpModelingParameterApiDescriptionModelBuilder()..update(updates))
          ._build();

  _$HttpModelingParameterApiDescriptionModel._(
      {this.nameOnMethod,
      this.name,
      this.jsonName,
      this.type,
      this.typeSimple,
      this.isOptional,
      this.defaultValue,
      this.constraintTypes,
      this.bindingSourceId,
      this.descriptorName})
      : super._();

  @override
  HttpModelingParameterApiDescriptionModel rebuild(
          void Function(HttpModelingParameterApiDescriptionModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpModelingParameterApiDescriptionModelBuilder toBuilder() =>
      new HttpModelingParameterApiDescriptionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpModelingParameterApiDescriptionModel &&
        nameOnMethod == other.nameOnMethod &&
        name == other.name &&
        jsonName == other.jsonName &&
        type == other.type &&
        typeSimple == other.typeSimple &&
        isOptional == other.isOptional &&
        defaultValue == other.defaultValue &&
        constraintTypes == other.constraintTypes &&
        bindingSourceId == other.bindingSourceId &&
        descriptorName == other.descriptorName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nameOnMethod.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, jsonName.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeSimple.hashCode);
    _$hash = $jc(_$hash, isOptional.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jc(_$hash, constraintTypes.hashCode);
    _$hash = $jc(_$hash, bindingSourceId.hashCode);
    _$hash = $jc(_$hash, descriptorName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'HttpModelingParameterApiDescriptionModel')
          ..add('nameOnMethod', nameOnMethod)
          ..add('name', name)
          ..add('jsonName', jsonName)
          ..add('type', type)
          ..add('typeSimple', typeSimple)
          ..add('isOptional', isOptional)
          ..add('defaultValue', defaultValue)
          ..add('constraintTypes', constraintTypes)
          ..add('bindingSourceId', bindingSourceId)
          ..add('descriptorName', descriptorName))
        .toString();
  }
}

class HttpModelingParameterApiDescriptionModelBuilder
    implements
        Builder<HttpModelingParameterApiDescriptionModel,
            HttpModelingParameterApiDescriptionModelBuilder> {
  _$HttpModelingParameterApiDescriptionModel? _$v;

  String? _nameOnMethod;
  String? get nameOnMethod => _$this._nameOnMethod;
  set nameOnMethod(String? nameOnMethod) => _$this._nameOnMethod = nameOnMethod;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _jsonName;
  String? get jsonName => _$this._jsonName;
  set jsonName(String? jsonName) => _$this._jsonName = jsonName;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _typeSimple;
  String? get typeSimple => _$this._typeSimple;
  set typeSimple(String? typeSimple) => _$this._typeSimple = typeSimple;

  bool? _isOptional;
  bool? get isOptional => _$this._isOptional;
  set isOptional(bool? isOptional) => _$this._isOptional = isOptional;

  JsonObject? _defaultValue;
  JsonObject? get defaultValue => _$this._defaultValue;
  set defaultValue(JsonObject? defaultValue) =>
      _$this._defaultValue = defaultValue;

  ListBuilder<String>? _constraintTypes;
  ListBuilder<String> get constraintTypes =>
      _$this._constraintTypes ??= new ListBuilder<String>();
  set constraintTypes(ListBuilder<String>? constraintTypes) =>
      _$this._constraintTypes = constraintTypes;

  String? _bindingSourceId;
  String? get bindingSourceId => _$this._bindingSourceId;
  set bindingSourceId(String? bindingSourceId) =>
      _$this._bindingSourceId = bindingSourceId;

  String? _descriptorName;
  String? get descriptorName => _$this._descriptorName;
  set descriptorName(String? descriptorName) =>
      _$this._descriptorName = descriptorName;

  HttpModelingParameterApiDescriptionModelBuilder() {
    HttpModelingParameterApiDescriptionModel._defaults(this);
  }

  HttpModelingParameterApiDescriptionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nameOnMethod = $v.nameOnMethod;
      _name = $v.name;
      _jsonName = $v.jsonName;
      _type = $v.type;
      _typeSimple = $v.typeSimple;
      _isOptional = $v.isOptional;
      _defaultValue = $v.defaultValue;
      _constraintTypes = $v.constraintTypes?.toBuilder();
      _bindingSourceId = $v.bindingSourceId;
      _descriptorName = $v.descriptorName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpModelingParameterApiDescriptionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpModelingParameterApiDescriptionModel;
  }

  @override
  void update(
      void Function(HttpModelingParameterApiDescriptionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpModelingParameterApiDescriptionModel build() => _build();

  _$HttpModelingParameterApiDescriptionModel _build() {
    _$HttpModelingParameterApiDescriptionModel _$result;
    try {
      _$result = _$v ??
          new _$HttpModelingParameterApiDescriptionModel._(
              nameOnMethod: nameOnMethod,
              name: name,
              jsonName: jsonName,
              type: type,
              typeSimple: typeSimple,
              isOptional: isOptional,
              defaultValue: defaultValue,
              constraintTypes: _constraintTypes?.build(),
              bindingSourceId: bindingSourceId,
              descriptorName: descriptorName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'constraintTypes';
        _constraintTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpModelingParameterApiDescriptionModel',
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
