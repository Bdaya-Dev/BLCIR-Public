// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_modeling_application_api_description_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpModelingApplicationApiDescriptionModel
    extends HttpModelingApplicationApiDescriptionModel {
  @override
  final BuiltMap<String, HttpModelingModuleApiDescriptionModel>? modules;
  @override
  final BuiltMap<String, HttpModelingTypeApiDescriptionModel>? types;

  factory _$HttpModelingApplicationApiDescriptionModel(
          [void Function(HttpModelingApplicationApiDescriptionModelBuilder)?
              updates]) =>
      (new HttpModelingApplicationApiDescriptionModelBuilder()..update(updates))
          ._build();

  _$HttpModelingApplicationApiDescriptionModel._({this.modules, this.types})
      : super._();

  @override
  HttpModelingApplicationApiDescriptionModel rebuild(
          void Function(HttpModelingApplicationApiDescriptionModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpModelingApplicationApiDescriptionModelBuilder toBuilder() =>
      new HttpModelingApplicationApiDescriptionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpModelingApplicationApiDescriptionModel &&
        modules == other.modules &&
        types == other.types;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, modules.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'HttpModelingApplicationApiDescriptionModel')
          ..add('modules', modules)
          ..add('types', types))
        .toString();
  }
}

class HttpModelingApplicationApiDescriptionModelBuilder
    implements
        Builder<HttpModelingApplicationApiDescriptionModel,
            HttpModelingApplicationApiDescriptionModelBuilder> {
  _$HttpModelingApplicationApiDescriptionModel? _$v;

  MapBuilder<String, HttpModelingModuleApiDescriptionModel>? _modules;
  MapBuilder<String, HttpModelingModuleApiDescriptionModel> get modules =>
      _$this._modules ??=
          new MapBuilder<String, HttpModelingModuleApiDescriptionModel>();
  set modules(
          MapBuilder<String, HttpModelingModuleApiDescriptionModel>? modules) =>
      _$this._modules = modules;

  MapBuilder<String, HttpModelingTypeApiDescriptionModel>? _types;
  MapBuilder<String, HttpModelingTypeApiDescriptionModel> get types =>
      _$this._types ??=
          new MapBuilder<String, HttpModelingTypeApiDescriptionModel>();
  set types(MapBuilder<String, HttpModelingTypeApiDescriptionModel>? types) =>
      _$this._types = types;

  HttpModelingApplicationApiDescriptionModelBuilder() {
    HttpModelingApplicationApiDescriptionModel._defaults(this);
  }

  HttpModelingApplicationApiDescriptionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _modules = $v.modules?.toBuilder();
      _types = $v.types?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpModelingApplicationApiDescriptionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpModelingApplicationApiDescriptionModel;
  }

  @override
  void update(
      void Function(HttpModelingApplicationApiDescriptionModelBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpModelingApplicationApiDescriptionModel build() => _build();

  _$HttpModelingApplicationApiDescriptionModel _build() {
    _$HttpModelingApplicationApiDescriptionModel _$result;
    try {
      _$result = _$v ??
          new _$HttpModelingApplicationApiDescriptionModel._(
              modules: _modules?.build(), types: _types?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'modules';
        _modules?.build();
        _$failedField = 'types';
        _types?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpModelingApplicationApiDescriptionModel',
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
