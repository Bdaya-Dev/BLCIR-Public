//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/name_value1_system_string.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'name_value.g.dart';

/// NameValue
///
/// Properties:
/// * [name]
/// * [value]
@BuiltValue()
abstract class NameValue
    implements NameValue1SystemString, Built<NameValue, NameValueBuilder> {
  NameValue._();

  factory NameValue([void updates(NameValueBuilder b)]) = _$NameValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NameValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NameValue> get serializer => _$NameValueSerializer();
}

class _$NameValueSerializer implements PrimitiveSerializer<NameValue> {
  @override
  final Iterable<Type> types = const [NameValue, _$NameValue];

  @override
  final String wireName = r'NameValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NameValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.value != null) {
      yield r'Value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NameValue object, {
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
    required NameValueBuilder result,
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
        case r'Value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NameValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NameValueBuilder();
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
