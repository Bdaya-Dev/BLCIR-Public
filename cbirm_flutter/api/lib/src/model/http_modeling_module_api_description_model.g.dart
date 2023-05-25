// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_modeling_module_api_description_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpModelingModuleApiDescriptionModel
    extends HttpModelingModuleApiDescriptionModel {
  @override
  final String? rootPath;
  @override
  final String? remoteServiceName;
  @override
  final BuiltMap<String, HttpModelingControllerApiDescriptionModel>?
      controllers;

  factory _$HttpModelingModuleApiDescriptionModel(
          [void Function(HttpModelingModuleApiDescriptionModelBuilder)?
              updates]) =>
      (new HttpModelingModuleApiDescriptionModelBuilder()..update(updates))
          ._build();

  _$HttpModelingModuleApiDescriptionModel._(
      {this.rootPath, this.remoteServiceName, this.controllers})
      : super._();

  @override
  HttpModelingModuleApiDescriptionModel rebuild(
          void Function(HttpModelingModuleApiDescriptionModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpModelingModuleApiDescriptionModelBuilder toBuilder() =>
      new HttpModelingModuleApiDescriptionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpModelingModuleApiDescriptionModel &&
        rootPath == other.rootPath &&
        remoteServiceName == other.remoteServiceName &&
        controllers == other.controllers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rootPath.hashCode);
    _$hash = $jc(_$hash, remoteServiceName.hashCode);
    _$hash = $jc(_$hash, controllers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'HttpModelingModuleApiDescriptionModel')
          ..add('rootPath', rootPath)
          ..add('remoteServiceName', remoteServiceName)
          ..add('controllers', controllers))
        .toString();
  }
}

class HttpModelingModuleApiDescriptionModelBuilder
    implements
        Builder<HttpModelingModuleApiDescriptionModel,
            HttpModelingModuleApiDescriptionModelBuilder> {
  _$HttpModelingModuleApiDescriptionModel? _$v;

  String? _rootPath;
  String? get rootPath => _$this._rootPath;
  set rootPath(String? rootPath) => _$this._rootPath = rootPath;

  String? _remoteServiceName;
  String? get remoteServiceName => _$this._remoteServiceName;
  set remoteServiceName(String? remoteServiceName) =>
      _$this._remoteServiceName = remoteServiceName;

  MapBuilder<String, HttpModelingControllerApiDescriptionModel>? _controllers;
  MapBuilder<String, HttpModelingControllerApiDescriptionModel>
      get controllers => _$this._controllers ??=
          new MapBuilder<String, HttpModelingControllerApiDescriptionModel>();
  set controllers(
          MapBuilder<String, HttpModelingControllerApiDescriptionModel>?
              controllers) =>
      _$this._controllers = controllers;

  HttpModelingModuleApiDescriptionModelBuilder() {
    HttpModelingModuleApiDescriptionModel._defaults(this);
  }

  HttpModelingModuleApiDescriptionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rootPath = $v.rootPath;
      _remoteServiceName = $v.remoteServiceName;
      _controllers = $v.controllers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpModelingModuleApiDescriptionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpModelingModuleApiDescriptionModel;
  }

  @override
  void update(
      void Function(HttpModelingModuleApiDescriptionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpModelingModuleApiDescriptionModel build() => _build();

  _$HttpModelingModuleApiDescriptionModel _build() {
    _$HttpModelingModuleApiDescriptionModel _$result;
    try {
      _$result = _$v ??
          new _$HttpModelingModuleApiDescriptionModel._(
              rootPath: rootPath,
              remoteServiceName: remoteServiceName,
              controllers: _controllers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'controllers';
        _controllers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpModelingModuleApiDescriptionModel',
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
