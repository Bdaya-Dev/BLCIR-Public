//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_tenants_app_tenant_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_dtos_paged_result_dto1_bdaya_blcirm_tenants_app_tenant_dto.g.dart';

/// ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto
///
/// Properties:
/// * [items]
/// * [totalCount]
@BuiltValue()
abstract class ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto
    implements
        Built<ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto,
            ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder> {
  @BuiltValueField(wireName: r'Items')
  BuiltList<BdayaBLCIRMTenantsAppTenantDto>? get items;

  @BuiltValueField(wireName: r'TotalCount')
  int? get totalCount;

  ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto._();

  factory ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto(
          [void updates(
              ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder
                  b)]) =
      _$ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto>
      get serializer =>
          _$ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoSerializer();
}

class _$ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto,
    _$ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto
  ];

  @override
  final String wireName =
      r'ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'Items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(BdayaBLCIRMTenantsAppTenantDto)]),
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
    ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto object, {
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
    required ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder
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
                BuiltList, [FullType(BdayaBLCIRMTenantsAppTenantDto)]),
          ) as BuiltList<BdayaBLCIRMTenantsAppTenantDto>?;
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
  ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationDtosPagedResultDto1BdayaBLCIRMTenantsAppTenantDtoBuilder();
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
