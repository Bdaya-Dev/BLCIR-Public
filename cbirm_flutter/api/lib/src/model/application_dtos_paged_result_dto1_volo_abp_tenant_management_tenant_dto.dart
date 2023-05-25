//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/tenant_management_tenant_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_dtos_paged_result_dto1_volo_abp_tenant_management_tenant_dto.g.dart';

/// ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto
///
/// Properties:
/// * [items]
/// * [totalCount]
@BuiltValue()
abstract class ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto
    implements
        Built<ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto,
            ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder> {
  @BuiltValueField(wireName: r'Items')
  BuiltList<TenantManagementTenantDto>? get items;

  @BuiltValueField(wireName: r'TotalCount')
  int? get totalCount;

  ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto._();

  factory ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto(
          [void updates(
              ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder
                  b)]) =
      _$ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto>
      get serializer =>
          _$ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoSerializer();
}

class _$ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto,
    _$ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto
  ];

  @override
  final String wireName =
      r'ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'Items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(TenantManagementTenantDto)]),
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
    ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto object, {
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
    required ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder
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
                BuiltList, [FullType(TenantManagementTenantDto)]),
          ) as BuiltList<TenantManagementTenantDto>?;
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
  ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoBuilder();
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
