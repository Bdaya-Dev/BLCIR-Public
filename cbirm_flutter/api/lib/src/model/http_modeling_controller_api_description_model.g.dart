// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_modeling_controller_api_description_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpModelingControllerApiDescriptionModel
    extends HttpModelingControllerApiDescriptionModel {
  @override
  final String? controllerName;
  @override
  final String? controllerGroupName;
  @override
  final bool? isRemoteService;
  @override
  final bool? isIntegrationService;
  @override
  final String? apiVersion;
  @override
  final String? type;
  @override
  final BuiltList<HttpModelingControllerInterfaceApiDescriptionModel>?
      interfaces;
  @override
  final BuiltMap<String, HttpModelingActionApiDescriptionModel>? actions;

  factory _$HttpModelingControllerApiDescriptionModel(
          [void Function(HttpModelingControllerApiDescriptionModelBuilder)?
              updates]) =>
      (new HttpModelingControllerApiDescriptionModelBuilder()..update(updates))
          ._build();

  _$HttpModelingControllerApiDescriptionModel._(
      {this.controllerName,
      this.controllerGroupName,
      this.isRemoteService,
      this.isIntegrationService,
      this.apiVersion,
      this.type,
      this.interfaces,
      this.actions})
      : super._();

  @override
  HttpModelingControllerApiDescriptionModel rebuild(
          void Function(HttpModelingControllerApiDescriptionModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpModelingControllerApiDescriptionModelBuilder toBuilder() =>
      new HttpModelingControllerApiDescriptionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpModelingControllerApiDescriptionModel &&
        controllerName == other.controllerName &&
        controllerGroupName == other.controllerGroupName &&
        isRemoteService == other.isRemoteService &&
        isIntegrationService == other.isIntegrationService &&
        apiVersion == other.apiVersion &&
        type == other.type &&
        interfaces == other.interfaces &&
        actions == other.actions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, controllerName.hashCode);
    _$hash = $jc(_$hash, controllerGroupName.hashCode);
    _$hash = $jc(_$hash, isRemoteService.hashCode);
    _$hash = $jc(_$hash, isIntegrationService.hashCode);
    _$hash = $jc(_$hash, apiVersion.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, interfaces.hashCode);
    _$hash = $jc(_$hash, actions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'HttpModelingControllerApiDescriptionModel')
          ..add('controllerName', controllerName)
          ..add('controllerGroupName', controllerGroupName)
          ..add('isRemoteService', isRemoteService)
          ..add('isIntegrationService', isIntegrationService)
          ..add('apiVersion', apiVersion)
          ..add('type', type)
          ..add('interfaces', interfaces)
          ..add('actions', actions))
        .toString();
  }
}

class HttpModelingControllerApiDescriptionModelBuilder
    implements
        Builder<HttpModelingControllerApiDescriptionModel,
            HttpModelingControllerApiDescriptionModelBuilder> {
  _$HttpModelingControllerApiDescriptionModel? _$v;

  String? _controllerName;
  String? get controllerName => _$this._controllerName;
  set controllerName(String? controllerName) =>
      _$this._controllerName = controllerName;

  String? _controllerGroupName;
  String? get controllerGroupName => _$this._controllerGroupName;
  set controllerGroupName(String? controllerGroupName) =>
      _$this._controllerGroupName = controllerGroupName;

  bool? _isRemoteService;
  bool? get isRemoteService => _$this._isRemoteService;
  set isRemoteService(bool? isRemoteService) =>
      _$this._isRemoteService = isRemoteService;

  bool? _isIntegrationService;
  bool? get isIntegrationService => _$this._isIntegrationService;
  set isIntegrationService(bool? isIntegrationService) =>
      _$this._isIntegrationService = isIntegrationService;

  String? _apiVersion;
  String? get apiVersion => _$this._apiVersion;
  set apiVersion(String? apiVersion) => _$this._apiVersion = apiVersion;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ListBuilder<HttpModelingControllerInterfaceApiDescriptionModel>? _interfaces;
  ListBuilder<HttpModelingControllerInterfaceApiDescriptionModel>
      get interfaces => _$this._interfaces ??=
          new ListBuilder<HttpModelingControllerInterfaceApiDescriptionModel>();
  set interfaces(
          ListBuilder<HttpModelingControllerInterfaceApiDescriptionModel>?
              interfaces) =>
      _$this._interfaces = interfaces;

  MapBuilder<String, HttpModelingActionApiDescriptionModel>? _actions;
  MapBuilder<String, HttpModelingActionApiDescriptionModel> get actions =>
      _$this._actions ??=
          new MapBuilder<String, HttpModelingActionApiDescriptionModel>();
  set actions(
          MapBuilder<String, HttpModelingActionApiDescriptionModel>? actions) =>
      _$this._actions = actions;

  HttpModelingControllerApiDescriptionModelBuilder() {
    HttpModelingControllerApiDescriptionModel._defaults(this);
  }

  HttpModelingControllerApiDescriptionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _controllerName = $v.controllerName;
      _controllerGroupName = $v.controllerGroupName;
      _isRemoteService = $v.isRemoteService;
      _isIntegrationService = $v.isIntegrationService;
      _apiVersion = $v.apiVersion;
      _type = $v.type;
      _interfaces = $v.interfaces?.toBuilder();
      _actions = $v.actions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpModelingControllerApiDescriptionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpModelingControllerApiDescriptionModel;
  }

  @override
  void update(
      void Function(HttpModelingControllerApiDescriptionModelBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpModelingControllerApiDescriptionModel build() => _build();

  _$HttpModelingControllerApiDescriptionModel _build() {
    _$HttpModelingControllerApiDescriptionModel _$result;
    try {
      _$result = _$v ??
          new _$HttpModelingControllerApiDescriptionModel._(
              controllerName: controllerName,
              controllerGroupName: controllerGroupName,
              isRemoteService: isRemoteService,
              isIntegrationService: isIntegrationService,
              apiVersion: apiVersion,
              type: type,
              interfaces: _interfaces?.build(),
              actions: _actions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interfaces';
        _interfaces?.build();
        _$failedField = 'actions';
        _actions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpModelingControllerApiDescriptionModel',
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
