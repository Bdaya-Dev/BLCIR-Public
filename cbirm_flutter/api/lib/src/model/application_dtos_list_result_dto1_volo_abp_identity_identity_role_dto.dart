//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/identity_identity_role_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_dtos_list_result_dto1_volo_abp_identity_identity_role_dto.g.dart';

/// ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto
///
/// Properties:
/// * [items]
@BuiltValue()
abstract class ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto
    implements
        Built<ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto,
            ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder> {
  @BuiltValueField(wireName: r'Items')
  BuiltList<IdentityIdentityRoleDto>? get items;

  ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto._();

  factory ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto(
          [void updates(
              ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder
                  b)]) =
      _$ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto>
      get serializer =>
          _$ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoSerializer();
}

class _$ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto,
    _$ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto
  ];

  @override
  final String wireName =
      r'ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'Items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(IdentityIdentityRoleDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto object, {
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
    required ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(IdentityIdentityRoleDto)]),
          ) as BuiltList<IdentityIdentityRoleDto>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoBuilder();
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
