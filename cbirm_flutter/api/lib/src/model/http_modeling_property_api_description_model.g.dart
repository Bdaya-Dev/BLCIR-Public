// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_modeling_property_api_description_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpModelingPropertyApiDescriptionModel
    extends HttpModelingPropertyApiDescriptionModel {
  @override
  final String? name;
  @override
  final String? jsonName;
  @override
  final String? type;
  @override
  final String? typeSimple;
  @override
  final bool? isRequired;
  @override
  final int? minLength;
  @override
  final int? maxLength;
  @override
  final String? minimum;
  @override
  final String? maximum;
  @override
  final String? regex;

  factory _$HttpModelingPropertyApiDescriptionModel(
          [void Function(HttpModelingPropertyApiDescriptionModelBuilder)?
              updates]) =>
      (new HttpModelingPropertyApiDescriptionModelBuilder()..update(updates))
          ._build();

  _$HttpModelingPropertyApiDescriptionModel._(
      {this.name,
      this.jsonName,
      this.type,
      this.typeSimple,
      this.isRequired,
      this.minLength,
      this.maxLength,
      this.minimum,
      this.maximum,
      this.regex})
      : super._();

  @override
  HttpModelingPropertyApiDescriptionModel rebuild(
          void Function(HttpModelingPropertyApiDescriptionModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpModelingPropertyApiDescriptionModelBuilder toBuilder() =>
      new HttpModelingPropertyApiDescriptionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpModelingPropertyApiDescriptionModel &&
        name == other.name &&
        jsonName == other.jsonName &&
        type == other.type &&
        typeSimple == other.typeSimple &&
        isRequired == other.isRequired &&
        minLength == other.minLength &&
        maxLength == other.maxLength &&
        minimum == other.minimum &&
        maximum == other.maximum &&
        regex == other.regex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, jsonName.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeSimple.hashCode);
    _$hash = $jc(_$hash, isRequired.hashCode);
    _$hash = $jc(_$hash, minLength.hashCode);
    _$hash = $jc(_$hash, maxLength.hashCode);
    _$hash = $jc(_$hash, minimum.hashCode);
    _$hash = $jc(_$hash, maximum.hashCode);
    _$hash = $jc(_$hash, regex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'HttpModelingPropertyApiDescriptionModel')
          ..add('name', name)
          ..add('jsonName', jsonName)
          ..add('type', type)
          ..add('typeSimple', typeSimple)
          ..add('isRequired', isRequired)
          ..add('minLength', minLength)
          ..add('maxLength', maxLength)
          ..add('minimum', minimum)
          ..add('maximum', maximum)
          ..add('regex', regex))
        .toString();
  }
}

class HttpModelingPropertyApiDescriptionModelBuilder
    implements
        Builder<HttpModelingPropertyApiDescriptionModel,
            HttpModelingPropertyApiDescriptionModelBuilder> {
  _$HttpModelingPropertyApiDescriptionModel? _$v;

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

  bool? _isRequired;
  bool? get isRequired => _$this._isRequired;
  set isRequired(bool? isRequired) => _$this._isRequired = isRequired;

  int? _minLength;
  int? get minLength => _$this._minLength;
  set minLength(int? minLength) => _$this._minLength = minLength;

  int? _maxLength;
  int? get maxLength => _$this._maxLength;
  set maxLength(int? maxLength) => _$this._maxLength = maxLength;

  String? _minimum;
  String? get minimum => _$this._minimum;
  set minimum(String? minimum) => _$this._minimum = minimum;

  String? _maximum;
  String? get maximum => _$this._maximum;
  set maximum(String? maximum) => _$this._maximum = maximum;

  String? _regex;
  String? get regex => _$this._regex;
  set regex(String? regex) => _$this._regex = regex;

  HttpModelingPropertyApiDescriptionModelBuilder() {
    HttpModelingPropertyApiDescriptionModel._defaults(this);
  }

  HttpModelingPropertyApiDescriptionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _jsonName = $v.jsonName;
      _type = $v.type;
      _typeSimple = $v.typeSimple;
      _isRequired = $v.isRequired;
      _minLength = $v.minLength;
      _maxLength = $v.maxLength;
      _minimum = $v.minimum;
      _maximum = $v.maximum;
      _regex = $v.regex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpModelingPropertyApiDescriptionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpModelingPropertyApiDescriptionModel;
  }

  @override
  void update(
      void Function(HttpModelingPropertyApiDescriptionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpModelingPropertyApiDescriptionModel build() => _build();

  _$HttpModelingPropertyApiDescriptionModel _build() {
    final _$result = _$v ??
        new _$HttpModelingPropertyApiDescriptionModel._(
            name: name,
            jsonName: jsonName,
            type: type,
            typeSimple: typeSimple,
            isRequired: isRequired,
            minLength: minLength,
            maxLength: maxLength,
            minimum: minimum,
            maximum: maximum,
            regex: regex);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
