//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_allowed_by_info.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_org_type.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_organization_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_management_tenant_dto_extra_properties.g.dart';

/// TenantManagementTenantDtoExtraProperties
///
/// Properties:
/// * [allowedBy]
/// * [info]
/// * [orgType]
@BuiltValue()
abstract class TenantManagementTenantDtoExtraProperties
    implements
        Built<TenantManagementTenantDtoExtraProperties,
            TenantManagementTenantDtoExtraPropertiesBuilder> {
  @BuiltValueField(wireName: r'AllowedBy')
  BdayaBLCIRMStateAllowedByInfo? get allowedBy;

  @BuiltValueField(wireName: r'Info')
  BdayaBLCIRMStateOrganizationInfo? get info;

  @BuiltValueField(wireName: r'OrgType')
  BdayaBLCIRMStateOrgType? get orgType;
  // enum orgTypeEnum {  0,  1,  2,  };

  TenantManagementTenantDtoExtraProperties._();

  factory TenantManagementTenantDtoExtraProperties(
          [void updates(TenantManagementTenantDtoExtraPropertiesBuilder b)]) =
      _$TenantManagementTenantDtoExtraProperties;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantManagementTenantDtoExtraPropertiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantManagementTenantDtoExtraProperties> get serializer =>
      _$TenantManagementTenantDtoExtraPropertiesSerializer();
}

class _$TenantManagementTenantDtoExtraPropertiesSerializer
    implements PrimitiveSerializer<TenantManagementTenantDtoExtraProperties> {
  @override
  final Iterable<Type> types = const [
    TenantManagementTenantDtoExtraProperties,
    _$TenantManagementTenantDtoExtraProperties
  ];

  @override
  final String wireName = r'TenantManagementTenantDtoExtraProperties';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantManagementTenantDtoExtraProperties object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.allowedBy != null) {
      yield r'AllowedBy';
      yield serializers.serialize(
        object.allowedBy,
        specifiedType: const FullType(BdayaBLCIRMStateAllowedByInfo),
      );
    }
    if (object.info != null) {
      yield r'Info';
      yield serializers.serialize(
        object.info,
        specifiedType: const FullType(BdayaBLCIRMStateOrganizationInfo),
      );
    }
    if (object.orgType != null) {
      yield r'OrgType';
      yield serializers.serialize(
        object.orgType,
        specifiedType: const FullType(BdayaBLCIRMStateOrgType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantManagementTenantDtoExtraProperties object, {
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
    required TenantManagementTenantDtoExtraPropertiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'AllowedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMStateAllowedByInfo),
          ) as BdayaBLCIRMStateAllowedByInfo;
          result.allowedBy.replace(valueDes);
          break;
        case r'Info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMStateOrganizationInfo),
          ) as BdayaBLCIRMStateOrganizationInfo;
          result.info.replace(valueDes);
          break;
        case r'OrgType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMStateOrgType),
          ) as BdayaBLCIRMStateOrgType;
          result.orgType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantManagementTenantDtoExtraProperties deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantManagementTenantDtoExtraPropertiesBuilder();
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
