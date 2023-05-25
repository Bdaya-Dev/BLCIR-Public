//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/http_modeling_action_api_description_model.dart';
import 'package:blcirm_api/src/model/http_modeling_controller_interface_api_description_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_modeling_controller_api_description_model.g.dart';

/// HttpModelingControllerApiDescriptionModel
///
/// Properties:
/// * [controllerName]
/// * [controllerGroupName]
/// * [isRemoteService]
/// * [isIntegrationService]
/// * [apiVersion]
/// * [type]
/// * [interfaces]
/// * [actions]
@BuiltValue()
abstract class HttpModelingControllerApiDescriptionModel
    implements
        Built<HttpModelingControllerApiDescriptionModel,
            HttpModelingControllerApiDescriptionModelBuilder> {
  @BuiltValueField(wireName: r'ControllerName')
  String? get controllerName;

  @BuiltValueField(wireName: r'ControllerGroupName')
  String? get controllerGroupName;

  @BuiltValueField(wireName: r'IsRemoteService')
  bool? get isRemoteService;

  @BuiltValueField(wireName: r'IsIntegrationService')
  bool? get isIntegrationService;

  @BuiltValueField(wireName: r'ApiVersion')
  String? get apiVersion;

  @BuiltValueField(wireName: r'Type')
  String? get type;

  @BuiltValueField(wireName: r'Interfaces')
  BuiltList<HttpModelingControllerInterfaceApiDescriptionModel>? get interfaces;

  @BuiltValueField(wireName: r'Actions')
  BuiltMap<String, HttpModelingActionApiDescriptionModel>? get actions;

  HttpModelingControllerApiDescriptionModel._();

  factory HttpModelingControllerApiDescriptionModel(
          [void updates(HttpModelingControllerApiDescriptionModelBuilder b)]) =
      _$HttpModelingControllerApiDescriptionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HttpModelingControllerApiDescriptionModelBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpModelingControllerApiDescriptionModel> get serializer =>
      _$HttpModelingControllerApiDescriptionModelSerializer();
}

class _$HttpModelingControllerApiDescriptionModelSerializer
    implements PrimitiveSerializer<HttpModelingControllerApiDescriptionModel> {
  @override
  final Iterable<Type> types = const [
    HttpModelingControllerApiDescriptionModel,
    _$HttpModelingControllerApiDescriptionModel
  ];

  @override
  final String wireName = r'HttpModelingControllerApiDescriptionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpModelingControllerApiDescriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.controllerName != null) {
      yield r'ControllerName';
      yield serializers.serialize(
        object.controllerName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.controllerGroupName != null) {
      yield r'ControllerGroupName';
      yield serializers.serialize(
        object.controllerGroupName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isRemoteService != null) {
      yield r'IsRemoteService';
      yield serializers.serialize(
        object.isRemoteService,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isIntegrationService != null) {
      yield r'IsIntegrationService';
      yield serializers.serialize(
        object.isIntegrationService,
        specifiedType: const FullType(bool),
      );
    }
    if (object.apiVersion != null) {
      yield r'ApiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.type != null) {
      yield r'Type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.interfaces != null) {
      yield r'Interfaces';
      yield serializers.serialize(
        object.interfaces,
        specifiedType: const FullType.nullable(BuiltList,
            [FullType(HttpModelingControllerInterfaceApiDescriptionModel)]),
      );
    }
    if (object.actions != null) {
      yield r'Actions';
      yield serializers.serialize(
        object.actions,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType(HttpModelingActionApiDescriptionModel)
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpModelingControllerApiDescriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HttpModelingControllerApiDescriptionModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ControllerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.controllerName = valueDes;
          break;
        case r'ControllerGroupName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.controllerGroupName = valueDes;
          break;
        case r'IsRemoteService':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRemoteService = valueDes;
          break;
        case r'IsIntegrationService':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isIntegrationService = valueDes;
          break;
        case r'ApiVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.apiVersion = valueDes;
          break;
        case r'Type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'Interfaces':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList,
                [FullType(HttpModelingControllerInterfaceApiDescriptionModel)]),
          ) as BuiltList<HttpModelingControllerInterfaceApiDescriptionModel>?;
          if (valueDes == null) continue;
          result.interfaces.replace(valueDes);
          break;
        case r'Actions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(HttpModelingActionApiDescriptionModel)
            ]),
          ) as BuiltMap<String, HttpModelingActionApiDescriptionModel>?;
          if (valueDes == null) continue;
          result.actions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpModelingControllerApiDescriptionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpModelingControllerApiDescriptionModelBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
