//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_tenants_app_tenant_info_dto.dart';
import 'package:blcirm_api/src/model/tenant_management_tenant_create_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_org_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_tenants_create_app_tenant_dto.g.dart';

/// BdayaBLCIRMTenantsCreateAppTenantDto
///
/// Properties:
/// * [type]
/// * [createDto]
/// * [info]
@BuiltValue()
abstract class BdayaBLCIRMTenantsCreateAppTenantDto
    implements
        Built<BdayaBLCIRMTenantsCreateAppTenantDto,
            BdayaBLCIRMTenantsCreateAppTenantDtoBuilder> {
  @BuiltValueField(wireName: r'Type')
  BdayaBLCIRMOrgType? get type;
  // enum typeEnum {  0,  1,  2,  };

  @BuiltValueField(wireName: r'CreateDto')
  TenantManagementTenantCreateDto? get createDto;

  @BuiltValueField(wireName: r'Info')
  BdayaBLCIRMTenantsAppTenantInfoDto? get info;

  BdayaBLCIRMTenantsCreateAppTenantDto._();

  factory BdayaBLCIRMTenantsCreateAppTenantDto(
          [void updates(BdayaBLCIRMTenantsCreateAppTenantDtoBuilder b)]) =
      _$BdayaBLCIRMTenantsCreateAppTenantDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMTenantsCreateAppTenantDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMTenantsCreateAppTenantDto> get serializer =>
      _$BdayaBLCIRMTenantsCreateAppTenantDtoSerializer();
}

class _$BdayaBLCIRMTenantsCreateAppTenantDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMTenantsCreateAppTenantDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMTenantsCreateAppTenantDto,
    _$BdayaBLCIRMTenantsCreateAppTenantDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMTenantsCreateAppTenantDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMTenantsCreateAppTenantDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'Type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(BdayaBLCIRMOrgType),
      );
    }
    if (object.createDto != null) {
      yield r'CreateDto';
      yield serializers.serialize(
        object.createDto,
        specifiedType: const FullType(TenantManagementTenantCreateDto),
      );
    }
    if (object.info != null) {
      yield r'Info';
      yield serializers.serialize(
        object.info,
        specifiedType: const FullType(BdayaBLCIRMTenantsAppTenantInfoDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMTenantsCreateAppTenantDto object, {
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
    required BdayaBLCIRMTenantsCreateAppTenantDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMOrgType),
          ) as BdayaBLCIRMOrgType;
          result.type = valueDes;
          break;
        case r'CreateDto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TenantManagementTenantCreateDto),
          ) as TenantManagementTenantCreateDto;
          result.createDto.replace(valueDes);
          break;
        case r'Info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMTenantsAppTenantInfoDto),
          ) as BdayaBLCIRMTenantsAppTenantInfoDto;
          result.info.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMTenantsCreateAppTenantDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMTenantsCreateAppTenantDtoBuilder();
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
