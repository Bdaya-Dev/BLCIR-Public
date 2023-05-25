//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/feature_management_feature_group_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feature_management_get_feature_list_result_dto.g.dart';

/// FeatureManagementGetFeatureListResultDto
///
/// Properties:
/// * [groups]
@BuiltValue()
abstract class FeatureManagementGetFeatureListResultDto
    implements
        Built<FeatureManagementGetFeatureListResultDto,
            FeatureManagementGetFeatureListResultDtoBuilder> {
  @BuiltValueField(wireName: r'Groups')
  BuiltList<FeatureManagementFeatureGroupDto>? get groups;

  FeatureManagementGetFeatureListResultDto._();

  factory FeatureManagementGetFeatureListResultDto(
          [void updates(FeatureManagementGetFeatureListResultDtoBuilder b)]) =
      _$FeatureManagementGetFeatureListResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeatureManagementGetFeatureListResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeatureManagementGetFeatureListResultDto> get serializer =>
      _$FeatureManagementGetFeatureListResultDtoSerializer();
}

class _$FeatureManagementGetFeatureListResultDtoSerializer
    implements PrimitiveSerializer<FeatureManagementGetFeatureListResultDto> {
  @override
  final Iterable<Type> types = const [
    FeatureManagementGetFeatureListResultDto,
    _$FeatureManagementGetFeatureListResultDto
  ];

  @override
  final String wireName = r'FeatureManagementGetFeatureListResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeatureManagementGetFeatureListResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.groups != null) {
      yield r'Groups';
      yield serializers.serialize(
        object.groups,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(FeatureManagementFeatureGroupDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FeatureManagementGetFeatureListResultDto object, {
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
    required FeatureManagementGetFeatureListResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(FeatureManagementFeatureGroupDto)]),
          ) as BuiltList<FeatureManagementFeatureGroupDto>?;
          if (valueDes == null) continue;
          result.groups.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FeatureManagementGetFeatureListResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeatureManagementGetFeatureListResultDtoBuilder();
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
