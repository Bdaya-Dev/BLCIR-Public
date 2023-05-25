// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_modeling_controller_interface_api_description_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpModelingControllerInterfaceApiDescriptionModel
    extends HttpModelingControllerInterfaceApiDescriptionModel {
  @override
  final String? type;
  @override
  final String? name;
  @override
  final BuiltList<HttpModelingInterfaceMethodApiDescriptionModel>? methods;

  factory _$HttpModelingControllerInterfaceApiDescriptionModel(
          [void Function(
                  HttpModelingControllerInterfaceApiDescriptionModelBuilder)?
              updates]) =>
      (new HttpModelingControllerInterfaceApiDescriptionModelBuilder()
            ..update(updates))
          ._build();

  _$HttpModelingControllerInterfaceApiDescriptionModel._(
      {this.type, this.name, this.methods})
      : super._();

  @override
  HttpModelingControllerInterfaceApiDescriptionModel rebuild(
          void Function(
                  HttpModelingControllerInterfaceApiDescriptionModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpModelingControllerInterfaceApiDescriptionModelBuilder toBuilder() =>
      new HttpModelingControllerInterfaceApiDescriptionModelBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpModelingControllerInterfaceApiDescriptionModel &&
        type == other.type &&
        name == other.name &&
        methods == other.methods;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, methods.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'HttpModelingControllerInterfaceApiDescriptionModel')
          ..add('type', type)
          ..add('name', name)
          ..add('methods', methods))
        .toString();
  }
}

class HttpModelingControllerInterfaceApiDescriptionModelBuilder
    implements
        Builder<HttpModelingControllerInterfaceApiDescriptionModel,
            HttpModelingControllerInterfaceApiDescriptionModelBuilder> {
  _$HttpModelingControllerInterfaceApiDescriptionModel? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<HttpModelingInterfaceMethodApiDescriptionModel>? _methods;
  ListBuilder<HttpModelingInterfaceMethodApiDescriptionModel> get methods =>
      _$this._methods ??=
          new ListBuilder<HttpModelingInterfaceMethodApiDescriptionModel>();
  set methods(
          ListBuilder<HttpModelingInterfaceMethodApiDescriptionModel>?
              methods) =>
      _$this._methods = methods;

  HttpModelingControllerInterfaceApiDescriptionModelBuilder() {
    HttpModelingControllerInterfaceApiDescriptionModel._defaults(this);
  }

  HttpModelingControllerInterfaceApiDescriptionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _name = $v.name;
      _methods = $v.methods?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpModelingControllerInterfaceApiDescriptionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpModelingControllerInterfaceApiDescriptionModel;
  }

  @override
  void update(
      void Function(HttpModelingControllerInterfaceApiDescriptionModelBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpModelingControllerInterfaceApiDescriptionModel build() => _build();

  _$HttpModelingControllerInterfaceApiDescriptionModel _build() {
    _$HttpModelingControllerInterfaceApiDescriptionModel _$result;
    try {
      _$result = _$v ??
          new _$HttpModelingControllerInterfaceApiDescriptionModel._(
              type: type, name: name, methods: _methods?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'methods';
        _methods?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpModelingControllerInterfaceApiDescriptionModel',
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
