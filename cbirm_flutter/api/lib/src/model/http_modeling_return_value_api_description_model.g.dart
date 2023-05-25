// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_modeling_return_value_api_description_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpModelingReturnValueApiDescriptionModel
    extends HttpModelingReturnValueApiDescriptionModel {
  @override
  final String? type;
  @override
  final String? typeSimple;

  factory _$HttpModelingReturnValueApiDescriptionModel(
          [void Function(HttpModelingReturnValueApiDescriptionModelBuilder)?
              updates]) =>
      (new HttpModelingReturnValueApiDescriptionModelBuilder()..update(updates))
          ._build();

  _$HttpModelingReturnValueApiDescriptionModel._({this.type, this.typeSimple})
      : super._();

  @override
  HttpModelingReturnValueApiDescriptionModel rebuild(
          void Function(HttpModelingReturnValueApiDescriptionModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpModelingReturnValueApiDescriptionModelBuilder toBuilder() =>
      new HttpModelingReturnValueApiDescriptionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpModelingReturnValueApiDescriptionModel &&
        type == other.type &&
        typeSimple == other.typeSimple;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeSimple.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'HttpModelingReturnValueApiDescriptionModel')
          ..add('type', type)
          ..add('typeSimple', typeSimple))
        .toString();
  }
}

class HttpModelingReturnValueApiDescriptionModelBuilder
    implements
        Builder<HttpModelingReturnValueApiDescriptionModel,
            HttpModelingReturnValueApiDescriptionModelBuilder> {
  _$HttpModelingReturnValueApiDescriptionModel? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _typeSimple;
  String? get typeSimple => _$this._typeSimple;
  set typeSimple(String? typeSimple) => _$this._typeSimple = typeSimple;

  HttpModelingReturnValueApiDescriptionModelBuilder() {
    HttpModelingReturnValueApiDescriptionModel._defaults(this);
  }

  HttpModelingReturnValueApiDescriptionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _typeSimple = $v.typeSimple;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpModelingReturnValueApiDescriptionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpModelingReturnValueApiDescriptionModel;
  }

  @override
  void update(
      void Function(HttpModelingReturnValueApiDescriptionModelBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpModelingReturnValueApiDescriptionModel build() => _build();

  _$HttpModelingReturnValueApiDescriptionModel _build() {
    final _$result = _$v ??
        new _$HttpModelingReturnValueApiDescriptionModel._(
            type: type, typeSimple: typeSimple);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
