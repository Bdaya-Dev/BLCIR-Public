//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_models_ref_nullable1_system_string.g.dart';

/// BdayaBLCIRMModelsRefNullable1SystemString
///
/// Properties:
/// * [hasValue]
/// * [value]
@BuiltValue()
abstract class BdayaBLCIRMModelsRefNullable1SystemString
    implements
        Built<BdayaBLCIRMModelsRefNullable1SystemString,
            BdayaBLCIRMModelsRefNullable1SystemStringBuilder> {
  @BuiltValueField(wireName: r'HasValue')
  bool? get hasValue;

  @BuiltValueField(wireName: r'Value')
  String? get value;

  BdayaBLCIRMModelsRefNullable1SystemString._();

  factory BdayaBLCIRMModelsRefNullable1SystemString(
          [void updates(BdayaBLCIRMModelsRefNullable1SystemStringBuilder b)]) =
      _$BdayaBLCIRMModelsRefNullable1SystemString;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMModelsRefNullable1SystemStringBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMModelsRefNullable1SystemString> get serializer =>
      _$BdayaBLCIRMModelsRefNullable1SystemStringSerializer();
}

class _$BdayaBLCIRMModelsRefNullable1SystemStringSerializer
    implements PrimitiveSerializer<BdayaBLCIRMModelsRefNullable1SystemString> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMModelsRefNullable1SystemString,
    _$BdayaBLCIRMModelsRefNullable1SystemString
  ];

  @override
  final String wireName = r'BdayaBLCIRMModelsRefNullable1SystemString';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMModelsRefNullable1SystemString object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hasValue != null) {
      yield r'HasValue';
      yield serializers.serialize(
        object.hasValue,
        specifiedType: const FullType(bool),
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
    BdayaBLCIRMModelsRefNullable1SystemString object, {
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
    required BdayaBLCIRMModelsRefNullable1SystemStringBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'HasValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasValue = valueDes;
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
  BdayaBLCIRMModelsRefNullable1SystemString deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMModelsRefNullable1SystemStringBuilder();
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
