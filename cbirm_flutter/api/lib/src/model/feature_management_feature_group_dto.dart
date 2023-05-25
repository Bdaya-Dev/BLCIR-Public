//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/feature_management_feature_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feature_management_feature_group_dto.g.dart';

/// FeatureManagementFeatureGroupDto
///
/// Properties:
/// * [name]
/// * [displayName]
/// * [features]
@BuiltValue()
abstract class FeatureManagementFeatureGroupDto
    implements
        Built<FeatureManagementFeatureGroupDto,
            FeatureManagementFeatureGroupDtoBuilder> {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'DisplayName')
  String? get displayName;

  @BuiltValueField(wireName: r'Features')
  BuiltList<FeatureManagementFeatureDto>? get features;

  FeatureManagementFeatureGroupDto._();

  factory FeatureManagementFeatureGroupDto(
          [void updates(FeatureManagementFeatureGroupDtoBuilder b)]) =
      _$FeatureManagementFeatureGroupDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeatureManagementFeatureGroupDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeatureManagementFeatureGroupDto> get serializer =>
      _$FeatureManagementFeatureGroupDtoSerializer();
}

class _$FeatureManagementFeatureGroupDtoSerializer
    implements PrimitiveSerializer<FeatureManagementFeatureGroupDto> {
  @override
  final Iterable<Type> types = const [
    FeatureManagementFeatureGroupDto,
    _$FeatureManagementFeatureGroupDto
  ];

  @override
  final String wireName = r'FeatureManagementFeatureGroupDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeatureManagementFeatureGroupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.displayName != null) {
      yield r'DisplayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.features != null) {
      yield r'Features';
      yield serializers.serialize(
        object.features,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(FeatureManagementFeatureDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FeatureManagementFeatureGroupDto object, {
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
    required FeatureManagementFeatureGroupDtoBuilder result,
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
        case r'DisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'Features':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(FeatureManagementFeatureDto)]),
          ) as BuiltList<FeatureManagementFeatureDto>?;
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
  FeatureManagementFeatureGroupDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeatureManagementFeatureGroupDtoBuilder();
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
