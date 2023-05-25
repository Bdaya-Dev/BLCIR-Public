//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feature_management_update_feature_dto.g.dart';

/// FeatureManagementUpdateFeatureDto
///
/// Properties:
/// * [name]
/// * [value]
@BuiltValue()
abstract class FeatureManagementUpdateFeatureDto
    implements
        Built<FeatureManagementUpdateFeatureDto,
            FeatureManagementUpdateFeatureDtoBuilder> {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'Value')
  String? get value;

  FeatureManagementUpdateFeatureDto._();

  factory FeatureManagementUpdateFeatureDto(
          [void updates(FeatureManagementUpdateFeatureDtoBuilder b)]) =
      _$FeatureManagementUpdateFeatureDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeatureManagementUpdateFeatureDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeatureManagementUpdateFeatureDto> get serializer =>
      _$FeatureManagementUpdateFeatureDtoSerializer();
}

class _$FeatureManagementUpdateFeatureDtoSerializer
    implements PrimitiveSerializer<FeatureManagementUpdateFeatureDto> {
  @override
  final Iterable<Type> types = const [
    FeatureManagementUpdateFeatureDto,
    _$FeatureManagementUpdateFeatureDto
  ];

  @override
  final String wireName = r'FeatureManagementUpdateFeatureDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeatureManagementUpdateFeatureDto object, {
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
    FeatureManagementUpdateFeatureDto object, {
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
    required FeatureManagementUpdateFeatureDtoBuilder result,
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
  FeatureManagementUpdateFeatureDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeatureManagementUpdateFeatureDtoBuilder();
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
