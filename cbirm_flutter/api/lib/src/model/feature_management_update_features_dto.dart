//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/feature_management_update_feature_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feature_management_update_features_dto.g.dart';

/// FeatureManagementUpdateFeaturesDto
///
/// Properties:
/// * [features]
@BuiltValue()
abstract class FeatureManagementUpdateFeaturesDto
    implements
        Built<FeatureManagementUpdateFeaturesDto,
            FeatureManagementUpdateFeaturesDtoBuilder> {
  @BuiltValueField(wireName: r'Features')
  BuiltList<FeatureManagementUpdateFeatureDto>? get features;

  FeatureManagementUpdateFeaturesDto._();

  factory FeatureManagementUpdateFeaturesDto(
          [void updates(FeatureManagementUpdateFeaturesDtoBuilder b)]) =
      _$FeatureManagementUpdateFeaturesDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeatureManagementUpdateFeaturesDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeatureManagementUpdateFeaturesDto> get serializer =>
      _$FeatureManagementUpdateFeaturesDtoSerializer();
}

class _$FeatureManagementUpdateFeaturesDtoSerializer
    implements PrimitiveSerializer<FeatureManagementUpdateFeaturesDto> {
  @override
  final Iterable<Type> types = const [
    FeatureManagementUpdateFeaturesDto,
    _$FeatureManagementUpdateFeaturesDto
  ];

  @override
  final String wireName = r'FeatureManagementUpdateFeaturesDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeatureManagementUpdateFeaturesDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.features != null) {
      yield r'Features';
      yield serializers.serialize(
        object.features,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(FeatureManagementUpdateFeatureDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FeatureManagementUpdateFeaturesDto object, {
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
    required FeatureManagementUpdateFeaturesDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Features':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(FeatureManagementUpdateFeatureDto)]),
          ) as BuiltList<FeatureManagementUpdateFeatureDto>?;
          if (valueDes == null) continue;
          result.features.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FeatureManagementUpdateFeaturesDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeatureManagementUpdateFeaturesDtoBuilder();
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
