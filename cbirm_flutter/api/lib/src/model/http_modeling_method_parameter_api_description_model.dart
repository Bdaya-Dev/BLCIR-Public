//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_modeling_method_parameter_api_description_model.g.dart';

/// HttpModelingMethodParameterApiDescriptionModel
///
/// Properties:
/// * [name]
/// * [typeAsString]
/// * [type]
/// * [typeSimple]
/// * [isOptional]
/// * [defaultValue]
@BuiltValue()
abstract class HttpModelingMethodParameterApiDescriptionModel
    implements
        Built<HttpModelingMethodParameterApiDescriptionModel,
            HttpModelingMethodParameterApiDescriptionModelBuilder> {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'TypeAsString')
  String? get typeAsString;

  @BuiltValueField(wireName: r'Type')
  String? get type;

  @BuiltValueField(wireName: r'TypeSimple')
  String? get typeSimple;

  @BuiltValueField(wireName: r'IsOptional')
  bool? get isOptional;

  @BuiltValueField(wireName: r'DefaultValue')
  JsonObject? get defaultValue;

  HttpModelingMethodParameterApiDescriptionModel._();

  factory HttpModelingMethodParameterApiDescriptionModel(
          [void updates(
              HttpModelingMethodParameterApiDescriptionModelBuilder b)]) =
      _$HttpModelingMethodParameterApiDescriptionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          HttpModelingMethodParameterApiDescriptionModelBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpModelingMethodParameterApiDescriptionModel>
      get serializer =>
          _$HttpModelingMethodParameterApiDescriptionModelSerializer();
}

class _$HttpModelingMethodParameterApiDescriptionModelSerializer
    implements
        PrimitiveSerializer<HttpModelingMethodParameterApiDescriptionModel> {
  @override
  final Iterable<Type> types = const [
    HttpModelingMethodParameterApiDescriptionModel,
    _$HttpModelingMethodParameterApiDescriptionModel
  ];

  @override
  final String wireName = r'HttpModelingMethodParameterApiDescriptionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpModelingMethodParameterApiDescriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.typeAsString != null) {
      yield r'TypeAsString';
      yield serializers.serialize(
        object.typeAsString,
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
    if (object.typeSimple != null) {
      yield r'TypeSimple';
      yield serializers.serialize(
        object.typeSimple,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isOptional != null) {
      yield r'IsOptional';
      yield serializers.serialize(
        object.isOptional,
        specifiedType: const FullType(bool),
      );
    }
    if (object.defaultValue != null) {
      yield r'DefaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpModelingMethodParameterApiDescriptionModel object, {
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
    required HttpModelingMethodParameterApiDescriptionModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'TypeAsString':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.typeAsString = valueDes;
          break;
        case r'Type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'TypeSimple':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.typeSimple = valueDes;
          break;
        case r'IsOptional':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOptional = valueDes;
          break;
        case r'DefaultValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpModelingMethodParameterApiDescriptionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpModelingMethodParameterApiDescriptionModelBuilder();
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
