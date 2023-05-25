//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_string_values_i_value_validator.g.dart';

/// ValidationStringValuesIValueValidator
///
/// Properties:
/// * [name]
/// * [properties]
@BuiltValue()
abstract class ValidationStringValuesIValueValidator
    implements
        Built<ValidationStringValuesIValueValidator,
            ValidationStringValuesIValueValidatorBuilder> {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'Properties')
  BuiltMap<String, JsonObject?>? get properties;

  ValidationStringValuesIValueValidator._();

  factory ValidationStringValuesIValueValidator(
          [void updates(ValidationStringValuesIValueValidatorBuilder b)]) =
      _$ValidationStringValuesIValueValidator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidationStringValuesIValueValidatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidationStringValuesIValueValidator> get serializer =>
      _$ValidationStringValuesIValueValidatorSerializer();
}

class _$ValidationStringValuesIValueValidatorSerializer
    implements PrimitiveSerializer<ValidationStringValuesIValueValidator> {
  @override
  final Iterable<Type> types = const [
    ValidationStringValuesIValueValidator,
    _$ValidationStringValuesIValueValidator
  ];

  @override
  final String wireName = r'ValidationStringValuesIValueValidator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidationStringValuesIValueValidator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.properties != null) {
      yield r'Properties';
      yield serializers.serialize(
        object.properties,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidationStringValuesIValueValidator object, {
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
    required ValidationStringValuesIValueValidatorBuilder result,
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
        case r'Properties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
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
  ValidationStringValuesIValueValidator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationStringValuesIValueValidatorBuilder();
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
