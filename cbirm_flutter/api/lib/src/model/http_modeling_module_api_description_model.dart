//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/http_modeling_controller_api_description_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_modeling_module_api_description_model.g.dart';

/// HttpModelingModuleApiDescriptionModel
///
/// Properties:
/// * [rootPath]
/// * [remoteServiceName]
/// * [controllers]
@BuiltValue()
abstract class HttpModelingModuleApiDescriptionModel
    implements
        Built<HttpModelingModuleApiDescriptionModel,
            HttpModelingModuleApiDescriptionModelBuilder> {
  @BuiltValueField(wireName: r'RootPath')
  String? get rootPath;

  @BuiltValueField(wireName: r'RemoteServiceName')
  String? get remoteServiceName;

  @BuiltValueField(wireName: r'Controllers')
  BuiltMap<String, HttpModelingControllerApiDescriptionModel>? get controllers;

  HttpModelingModuleApiDescriptionModel._();

  factory HttpModelingModuleApiDescriptionModel(
          [void updates(HttpModelingModuleApiDescriptionModelBuilder b)]) =
      _$HttpModelingModuleApiDescriptionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HttpModelingModuleApiDescriptionModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpModelingModuleApiDescriptionModel> get serializer =>
      _$HttpModelingModuleApiDescriptionModelSerializer();
}

class _$HttpModelingModuleApiDescriptionModelSerializer
    implements PrimitiveSerializer<HttpModelingModuleApiDescriptionModel> {
  @override
  final Iterable<Type> types = const [
    HttpModelingModuleApiDescriptionModel,
    _$HttpModelingModuleApiDescriptionModel
  ];

  @override
  final String wireName = r'HttpModelingModuleApiDescriptionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpModelingModuleApiDescriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rootPath != null) {
      yield r'RootPath';
      yield serializers.serialize(
        object.rootPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.remoteServiceName != null) {
      yield r'RemoteServiceName';
      yield serializers.serialize(
        object.remoteServiceName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.controllers != null) {
      yield r'Controllers';
      yield serializers.serialize(
        object.controllers,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType(HttpModelingControllerApiDescriptionModel)
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpModelingModuleApiDescriptionModel object, {
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
    required HttpModelingModuleApiDescriptionModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'RootPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rootPath = valueDes;
          break;
        case r'RemoteServiceName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.remoteServiceName = valueDes;
          break;
        case r'Controllers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(HttpModelingControllerApiDescriptionModel)
            ]),
          ) as BuiltMap<String, HttpModelingControllerApiDescriptionModel>?;
          if (valueDes == null) continue;
          result.controllers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpModelingModuleApiDescriptionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpModelingModuleApiDescriptionModelBuilder();
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
