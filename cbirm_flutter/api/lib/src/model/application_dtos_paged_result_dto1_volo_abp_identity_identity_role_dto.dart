//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/identity_identity_role_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_dtos_paged_result_dto1_volo_abp_identity_identity_role_dto.g.dart';

/// ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto
///
/// Properties:
/// * [items]
/// * [totalCount]
@BuiltValue()
abstract class ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto
    implements
        Built<ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto,
            ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder> {
  @BuiltValueField(wireName: r'Items')
  BuiltList<IdentityIdentityRoleDto>? get items;

  @BuiltValueField(wireName: r'TotalCount')
  int? get totalCount;

  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto._();

  factory ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto(
          [void updates(
              ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder
                  b)]) =
      _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto>
      get serializer =>
          _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoSerializer();
}

class _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto,
    _$ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto
  ];

  @override
  final String wireName =
      r'ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto object, {
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
    if (object.totalCount != null) {
      yield r'TotalCount';
      yield serializers.serialize(
        object.totalCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto object, {
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
    required ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder
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
        case r'TotalCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationDtosPagedResultDto1VoloAbpIdentityIdentityRoleDtoBuilder();
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
