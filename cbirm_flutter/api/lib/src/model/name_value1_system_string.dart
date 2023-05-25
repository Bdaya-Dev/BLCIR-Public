//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'name_value1_system_string.g.dart';

/// NameValue1SystemString
///
/// Properties:
/// * [name]
/// * [value]
@BuiltValue(instantiable: false)
abstract class NameValue1SystemString {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'Value')
  String? get value;

  @BuiltValueSerializer(custom: true)
  static Serializer<NameValue1SystemString> get serializer =>
      _$NameValue1SystemStringSerializer();
}

class _$NameValue1SystemStringSerializer
    implements PrimitiveSerializer<NameValue1SystemString> {
  @override
  final Iterable<Type> types = const [NameValue1SystemString];

  @override
  final String wireName = r'NameValue1SystemString';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NameValue1SystemString object, {
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
    NameValue1SystemString object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  NameValue1SystemString deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
            specifiedType: FullType($NameValue1SystemString))
        as $NameValue1SystemString;
  }
}

/// a concrete implementation of [NameValue1SystemString], since [NameValue1SystemString] is not instantiable
@BuiltValue(instantiable: true)
abstract class $NameValue1SystemString
    implements
        NameValue1SystemString,
        Built<$NameValue1SystemString, $NameValue1SystemStringBuilder> {
  $NameValue1SystemString._();

  factory $NameValue1SystemString(
          [void Function($NameValue1SystemStringBuilder)? updates]) =
      _$$NameValue1SystemString;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($NameValue1SystemStringBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$NameValue1SystemString> get serializer =>
      _$$NameValue1SystemStringSerializer();
}

class _$$NameValue1SystemStringSerializer
    implements PrimitiveSerializer<$NameValue1SystemString> {
  @override
  final Iterable<Type> types = const [
    $NameValue1SystemString,
    _$$NameValue1SystemString
  ];

  @override
  final String wireName = r'$NameValue1SystemString';

  @override
  Object serialize(
    Serializers serializers,
    $NameValue1SystemString object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(NameValue1SystemString))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NameValue1SystemStringBuilder result,
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
  $NameValue1SystemString deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $NameValue1SystemStringBuilder();
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
