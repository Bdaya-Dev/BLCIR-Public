// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_modeling_interface_method_api_description_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpModelingInterfaceMethodApiDescriptionModel
    extends HttpModelingInterfaceMethodApiDescriptionModel {
  @override
  final String? name;
  @override
  final BuiltList<HttpModelingMethodParameterApiDescriptionModel>?
      parametersOnMethod;
  @override
  final HttpModelingReturnValueApiDescriptionModel? returnValue;

  factory _$HttpModelingInterfaceMethodApiDescriptionModel(
          [void Function(HttpModelingInterfaceMethodApiDescriptionModelBuilder)?
              updates]) =>
      (new HttpModelingInterfaceMethodApiDescriptionModelBuilder()
            ..update(updates))
          ._build();

  _$HttpModelingInterfaceMethodApiDescriptionModel._(
      {this.name, this.parametersOnMethod, this.returnValue})
      : super._();

  @override
  HttpModelingInterfaceMethodApiDescriptionModel rebuild(
          void Function(HttpModelingInterfaceMethodApiDescriptionModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpModelingInterfaceMethodApiDescriptionModelBuilder toBuilder() =>
      new HttpModelingInterfaceMethodApiDescriptionModelBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpModelingInterfaceMethodApiDescriptionModel &&
        name == other.name &&
        parametersOnMethod == other.parametersOnMethod &&
        returnValue == other.returnValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, parametersOnMethod.hashCode);
    _$hash = $jc(_$hash, returnValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'HttpModelingInterfaceMethodApiDescriptionModel')
          ..add('name', name)
          ..add('parametersOnMethod', parametersOnMethod)
          ..add('returnValue', returnValue))
        .toString();
  }
}

class HttpModelingInterfaceMethodApiDescriptionModelBuilder
    implements
        Builder<HttpModelingInterfaceMethodApiDescriptionModel,
            HttpModelingInterfaceMethodApiDescriptionModelBuilder> {
  _$HttpModelingInterfaceMethodApiDescriptionModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<HttpModelingMethodParameterApiDescriptionModel>?
      _parametersOnMethod;
  ListBuilder<HttpModelingMethodParameterApiDescriptionModel>
      get parametersOnMethod => _$this._parametersOnMethod ??=
          new ListBuilder<HttpModelingMethodParameterApiDescriptionModel>();
  set parametersOnMethod(
          ListBuilder<HttpModelingMethodParameterApiDescriptionModel>?
              parametersOnMethod) =>
      _$this._parametersOnMethod = parametersOnMethod;

  HttpModelingReturnValueApiDescriptionModelBuilder? _returnValue;
  HttpModelingReturnValueApiDescriptionModelBuilder get returnValue =>
      _$this._returnValue ??=
          new HttpModelingReturnValueApiDescriptionModelBuilder();
  set returnValue(
          HttpModelingReturnValueApiDescriptionModelBuilder? returnValue) =>
      _$this._returnValue = returnValue;

  HttpModelingInterfaceMethodApiDescriptionModelBuilder() {
    HttpModelingInterfaceMethodApiDescriptionModel._defaults(this);
  }

  HttpModelingInterfaceMethodApiDescriptionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _parametersOnMethod = $v.parametersOnMethod?.toBuilder();
      _returnValue = $v.returnValue?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpModelingInterfaceMethodApiDescriptionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpModelingInterfaceMethodApiDescriptionModel;
  }

  @override
  void update(
      void Function(HttpModelingInterfaceMethodApiDescriptionModelBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpModelingInterfaceMethodApiDescriptionModel build() => _build();

  _$HttpModelingInterfaceMethodApiDescriptionModel _build() {
    _$HttpModelingInterfaceMethodApiDescriptionModel _$result;
    try {
      _$result = _$v ??
          new _$HttpModelingInterfaceMethodApiDescriptionModel._(
              name: name,
              parametersOnMethod: _parametersOnMethod?.build(),
              returnValue: _returnValue?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parametersOnMethod';
        _parametersOnMethod?.build();
        _$failedField = 'returnValue';
        _returnValue?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpModelingInterfaceMethodApiDescriptionModel',
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
