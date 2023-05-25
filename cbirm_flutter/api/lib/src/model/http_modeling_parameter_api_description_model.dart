//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_modeling_parameter_api_description_model.g.dart';

/// HttpModelingParameterApiDescriptionModel
///
/// Properties:
/// * [nameOnMethod]
/// * [name]
/// * [jsonName]
/// * [type]
/// * [typeSimple]
/// * [isOptional]
/// * [defaultValue]
/// * [constraintTypes]
/// * [bindingSourceId]
/// * [descriptorName]
@BuiltValue()
abstract class HttpModelingParameterApiDescriptionModel
    implements
        Built<HttpModelingParameterApiDescriptionModel,
            HttpModelingParameterApiDescriptionModelBuilder> {
  @BuiltValueField(wireName: r'NameOnMethod')
  String? get nameOnMethod;

  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'JsonName')
  String? get jsonName;

  @BuiltValueField(wireName: r'Type')
  String? get type;

  @BuiltValueField(wireName: r'TypeSimple')
  String? get typeSimple;

  @BuiltValueField(wireName: r'IsOptional')
  bool? get isOptional;

  @BuiltValueField(wireName: r'DefaultValue')
  JsonObject? get defaultValue;

  @BuiltValueField(wireName: r'ConstraintTypes')
  BuiltList<String>? get constraintTypes;

  @BuiltValueField(wireName: r'BindingSourceId')
  String? get bindingSourceId;

  @BuiltValueField(wireName: r'DescriptorName')
  String? get descriptorName;

  HttpModelingParameterApiDescriptionModel._();

  factory HttpModelingParameterApiDescriptionModel(
          [void updates(HttpModelingParameterApiDescriptionModelBuilder b)]) =
      _$HttpModelingParameterApiDescriptionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HttpModelingParameterApiDescriptionModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpModelingParameterApiDescriptionModel> get serializer =>
      _$HttpModelingParameterApiDescriptionModelSerializer();
}

class _$HttpModelingParameterApiDescriptionModelSerializer
    implements PrimitiveSerializer<HttpModelingParameterApiDescriptionModel> {
  @override
  final Iterable<Type> types = const [
    HttpModelingParameterApiDescriptionModel,
    _$HttpModelingParameterApiDescriptionModel
  ];

  @override
  final String wireName = r'HttpModelingParameterApiDescriptionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpModelingParameterApiDescriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nameOnMethod != null) {
      yield r'NameOnMethod';
      yield serializers.serialize(
        object.nameOnMethod,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.jsonName != null) {
      yield r'JsonName';
      yield serializers.serialize(
        object.jsonName,
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
    if (object.constraintTypes != null) {
      yield r'ConstraintTypes';
      yield serializers.serialize(
        object.constraintTypes,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.bindingSourceId != null) {
      yield r'BindingSourceId';
      yield serializers.serialize(
        object.bindingSourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.descriptorName != null) {
      yield r'DescriptorName';
      yield serializers.serialize(
        object.descriptorName,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpModelingParameterApiDescriptionModel object, {
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
    required HttpModelingParameterApiDescriptionModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'NameOnMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nameOnMethod = valueDes;
          break;
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'JsonName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.jsonName = valueDes;
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
        case r'ConstraintTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.constraintTypes.replace(valueDes);
          break;
        case r'BindingSourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bindingSourceId = valueDes;
          break;
        case r'DescriptorName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.descriptorName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpModelingParameterApiDescriptionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpModelingParameterApiDescriptionModelBuilder();
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
