//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/http_modeling_property_api_description_model.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_modeling_type_api_description_model.g.dart';

/// HttpModelingTypeApiDescriptionModel
///
/// Properties:
/// * [baseType]
/// * [isEnum]
/// * [enumNames]
/// * [enumValues]
/// * [genericArguments]
/// * [properties]
@BuiltValue()
abstract class HttpModelingTypeApiDescriptionModel
    implements
        Built<HttpModelingTypeApiDescriptionModel,
            HttpModelingTypeApiDescriptionModelBuilder> {
  @BuiltValueField(wireName: r'BaseType')
  String? get baseType;

  @BuiltValueField(wireName: r'IsEnum')
  bool? get isEnum;

  @BuiltValueField(wireName: r'EnumNames')
  BuiltList<String>? get enumNames;

  @BuiltValueField(wireName: r'EnumValues')
  BuiltList<JsonObject?>? get enumValues;

  @BuiltValueField(wireName: r'GenericArguments')
  BuiltList<String>? get genericArguments;

  @BuiltValueField(wireName: r'Properties')
  BuiltList<HttpModelingPropertyApiDescriptionModel>? get properties;

  HttpModelingTypeApiDescriptionModel._();

  factory HttpModelingTypeApiDescriptionModel(
          [void updates(HttpModelingTypeApiDescriptionModelBuilder b)]) =
      _$HttpModelingTypeApiDescriptionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HttpModelingTypeApiDescriptionModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpModelingTypeApiDescriptionModel> get serializer =>
      _$HttpModelingTypeApiDescriptionModelSerializer();
}

class _$HttpModelingTypeApiDescriptionModelSerializer
    implements PrimitiveSerializer<HttpModelingTypeApiDescriptionModel> {
  @override
  final Iterable<Type> types = const [
    HttpModelingTypeApiDescriptionModel,
    _$HttpModelingTypeApiDescriptionModel
  ];

  @override
  final String wireName = r'HttpModelingTypeApiDescriptionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpModelingTypeApiDescriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.baseType != null) {
      yield r'BaseType';
      yield serializers.serialize(
        object.baseType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isEnum != null) {
      yield r'IsEnum';
      yield serializers.serialize(
        object.isEnum,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enumNames != null) {
      yield r'EnumNames';
      yield serializers.serialize(
        object.enumNames,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.enumValues != null) {
      yield r'EnumValues';
      yield serializers.serialize(
        object.enumValues,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType.nullable(JsonObject)]),
      );
    }
    if (object.genericArguments != null) {
      yield r'GenericArguments';
      yield serializers.serialize(
        object.genericArguments,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.properties != null) {
      yield r'Properties';
      yield serializers.serialize(
        object.properties,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(HttpModelingPropertyApiDescriptionModel)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpModelingTypeApiDescriptionModel object, {
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
    required HttpModelingTypeApiDescriptionModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'BaseType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.baseType = valueDes;
          break;
        case r'IsEnum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isEnum = valueDes;
          break;
        case r'EnumNames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.enumNames.replace(valueDes);
          break;
        case r'EnumValues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType.nullable(JsonObject)]),
          ) as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.enumValues.replace(valueDes);
          break;
        case r'GenericArguments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.genericArguments.replace(valueDes);
          break;
        case r'Properties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(HttpModelingPropertyApiDescriptionModel)]),
          ) as BuiltList<HttpModelingPropertyApiDescriptionModel>?;
          if (valueDes == null) continue;
          result.properties.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpModelingTypeApiDescriptionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpModelingTypeApiDescriptionModelBuilder();
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
