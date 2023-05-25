//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/http_modeling_module_api_description_model.dart';
import 'package:blcirm_api/src/model/http_modeling_type_api_description_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_modeling_application_api_description_model.g.dart';

/// HttpModelingApplicationApiDescriptionModel
///
/// Properties:
/// * [modules]
/// * [types]
@BuiltValue()
abstract class HttpModelingApplicationApiDescriptionModel
    implements
        Built<HttpModelingApplicationApiDescriptionModel,
            HttpModelingApplicationApiDescriptionModelBuilder> {
  @BuiltValueField(wireName: r'Modules')
  BuiltMap<String, HttpModelingModuleApiDescriptionModel>? get modules;

  @BuiltValueField(wireName: r'Types')
  BuiltMap<String, HttpModelingTypeApiDescriptionModel>? get types;

  HttpModelingApplicationApiDescriptionModel._();

  factory HttpModelingApplicationApiDescriptionModel(
          [void updates(HttpModelingApplicationApiDescriptionModelBuilder b)]) =
      _$HttpModelingApplicationApiDescriptionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HttpModelingApplicationApiDescriptionModelBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpModelingApplicationApiDescriptionModel>
      get serializer =>
          _$HttpModelingApplicationApiDescriptionModelSerializer();
}

class _$HttpModelingApplicationApiDescriptionModelSerializer
    implements PrimitiveSerializer<HttpModelingApplicationApiDescriptionModel> {
  @override
  final Iterable<Type> types = const [
    HttpModelingApplicationApiDescriptionModel,
    _$HttpModelingApplicationApiDescriptionModel
  ];

  @override
  final String wireName = r'HttpModelingApplicationApiDescriptionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpModelingApplicationApiDescriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.modules != null) {
      yield r'Modules';
      yield serializers.serialize(
        object.modules,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType(HttpModelingModuleApiDescriptionModel)
        ]),
      );
    }
    if (object.types != null) {
      yield r'Types';
      yield serializers.serialize(
        object.types,
        specifiedType: const FullType.nullable(BuiltMap,
            [FullType(String), FullType(HttpModelingTypeApiDescriptionModel)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpModelingApplicationApiDescriptionModel object, {
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
    required HttpModelingApplicationApiDescriptionModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Modules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(HttpModelingModuleApiDescriptionModel)
            ]),
          ) as BuiltMap<String, HttpModelingModuleApiDescriptionModel>?;
          if (valueDes == null) continue;
          result.modules.replace(valueDes);
          break;
        case r'Types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(HttpModelingTypeApiDescriptionModel)
            ]),
          ) as BuiltMap<String, HttpModelingTypeApiDescriptionModel>?;
          if (valueDes == null) continue;
          result.types.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpModelingApplicationApiDescriptionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpModelingApplicationApiDescriptionModelBuilder();
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
