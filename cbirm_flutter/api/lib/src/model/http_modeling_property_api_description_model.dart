//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_modeling_property_api_description_model.g.dart';

/// HttpModelingPropertyApiDescriptionModel
///
/// Properties:
/// * [name]
/// * [jsonName]
/// * [type]
/// * [typeSimple]
/// * [isRequired]
/// * [minLength]
/// * [maxLength]
/// * [minimum]
/// * [maximum]
/// * [regex]
@BuiltValue()
abstract class HttpModelingPropertyApiDescriptionModel
    implements
        Built<HttpModelingPropertyApiDescriptionModel,
            HttpModelingPropertyApiDescriptionModelBuilder> {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'JsonName')
  String? get jsonName;

  @BuiltValueField(wireName: r'Type')
  String? get type;

  @BuiltValueField(wireName: r'TypeSimple')
  String? get typeSimple;

  @BuiltValueField(wireName: r'IsRequired')
  bool? get isRequired;

  @BuiltValueField(wireName: r'MinLength')
  int? get minLength;

  @BuiltValueField(wireName: r'MaxLength')
  int? get maxLength;

  @BuiltValueField(wireName: r'Minimum')
  String? get minimum;

  @BuiltValueField(wireName: r'Maximum')
  String? get maximum;

  @BuiltValueField(wireName: r'Regex')
  String? get regex;

  HttpModelingPropertyApiDescriptionModel._();

  factory HttpModelingPropertyApiDescriptionModel(
          [void updates(HttpModelingPropertyApiDescriptionModelBuilder b)]) =
      _$HttpModelingPropertyApiDescriptionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HttpModelingPropertyApiDescriptionModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpModelingPropertyApiDescriptionModel> get serializer =>
      _$HttpModelingPropertyApiDescriptionModelSerializer();
}

class _$HttpModelingPropertyApiDescriptionModelSerializer
    implements PrimitiveSerializer<HttpModelingPropertyApiDescriptionModel> {
  @override
  final Iterable<Type> types = const [
    HttpModelingPropertyApiDescriptionModel,
    _$HttpModelingPropertyApiDescriptionModel
  ];

  @override
  final String wireName = r'HttpModelingPropertyApiDescriptionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpModelingPropertyApiDescriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.isRequired != null) {
      yield r'IsRequired';
      yield serializers.serialize(
        object.isRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.minLength != null) {
      yield r'MinLength';
      yield serializers.serialize(
        object.minLength,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.maxLength != null) {
      yield r'MaxLength';
      yield serializers.serialize(
        object.maxLength,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.minimum != null) {
      yield r'Minimum';
      yield serializers.serialize(
        object.minimum,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.maximum != null) {
      yield r'Maximum';
      yield serializers.serialize(
        object.maximum,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.regex != null) {
      yield r'Regex';
      yield serializers.serialize(
        object.regex,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpModelingPropertyApiDescriptionModel object, {
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
    required HttpModelingPropertyApiDescriptionModelBuilder result,
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
        case r'IsRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRequired = valueDes;
          break;
        case r'MinLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minLength = valueDes;
          break;
        case r'MaxLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxLength = valueDes;
          break;
        case r'Minimum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.minimum = valueDes;
          break;
        case r'Maximum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.maximum = valueDes;
          break;
        case r'Regex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.regex = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpModelingPropertyApiDescriptionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpModelingPropertyApiDescriptionModelBuilder();
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
