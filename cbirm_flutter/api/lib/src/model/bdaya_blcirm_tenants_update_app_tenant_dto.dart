//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_models_ref_nullable1_system_string.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_tenants_update_app_tenant_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_tenants_update_app_tenant_dto.g.dart';

/// BdayaBLCIRMTenantsUpdateAppTenantDto
///
/// Properties:
/// * [name]
/// * [info]
@BuiltValue()
abstract class BdayaBLCIRMTenantsUpdateAppTenantDto
    implements
        Built<BdayaBLCIRMTenantsUpdateAppTenantDto,
            BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder> {
  @BuiltValueField(wireName: r'Name')
  BdayaBLCIRMModelsRefNullable1SystemString? get name;

  @BuiltValueField(wireName: r'Info')
  BdayaBLCIRMTenantsUpdateAppTenantInfoDto? get info;

  BdayaBLCIRMTenantsUpdateAppTenantDto._();

  factory BdayaBLCIRMTenantsUpdateAppTenantDto(
          [void updates(BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder b)]) =
      _$BdayaBLCIRMTenantsUpdateAppTenantDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMTenantsUpdateAppTenantDto> get serializer =>
      _$BdayaBLCIRMTenantsUpdateAppTenantDtoSerializer();
}

class _$BdayaBLCIRMTenantsUpdateAppTenantDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMTenantsUpdateAppTenantDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMTenantsUpdateAppTenantDto,
    _$BdayaBLCIRMTenantsUpdateAppTenantDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMTenantsUpdateAppTenantDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMTenantsUpdateAppTenantDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType:
            const FullType(BdayaBLCIRMModelsRefNullable1SystemString),
      );
    }
    if (object.info != null) {
      yield r'Info';
      yield serializers.serialize(
        object.info,
        specifiedType: const FullType(BdayaBLCIRMTenantsUpdateAppTenantInfoDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMTenantsUpdateAppTenantDto object, {
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
    required BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BdayaBLCIRMModelsRefNullable1SystemString),
          ) as BdayaBLCIRMModelsRefNullable1SystemString;
          result.name.replace(valueDes);
          break;
        case r'Info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BdayaBLCIRMTenantsUpdateAppTenantInfoDto),
          ) as BdayaBLCIRMTenantsUpdateAppTenantInfoDto;
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
  BdayaBLCIRMTenantsUpdateAppTenantDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMTenantsUpdateAppTenantDtoBuilder();
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
