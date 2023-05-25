//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_models_ref_nullable1_system_string.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_tenants_update_app_tenant_info_dto.g.dart';

/// BdayaBLCIRMTenantsUpdateAppTenantInfoDto
///
/// Properties:
/// * [address]
/// * [phone]
/// * [logo]
/// * [website]
/// * [email]
@BuiltValue()
abstract class BdayaBLCIRMTenantsUpdateAppTenantInfoDto
    implements
        Built<BdayaBLCIRMTenantsUpdateAppTenantInfoDto,
            BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder> {
  @BuiltValueField(wireName: r'Address')
  BdayaBLCIRMModelsRefNullable1SystemString? get address;

  @BuiltValueField(wireName: r'Phone')
  BdayaBLCIRMModelsRefNullable1SystemString? get phone;

  @BuiltValueField(wireName: r'Logo')
  BdayaBLCIRMModelsRefNullable1SystemString? get logo;

  @BuiltValueField(wireName: r'Website')
  BdayaBLCIRMModelsRefNullable1SystemString? get website;

  @BuiltValueField(wireName: r'Email')
  BdayaBLCIRMModelsRefNullable1SystemString? get email;

  BdayaBLCIRMTenantsUpdateAppTenantInfoDto._();

  factory BdayaBLCIRMTenantsUpdateAppTenantInfoDto(
          [void updates(BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder b)]) =
      _$BdayaBLCIRMTenantsUpdateAppTenantInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMTenantsUpdateAppTenantInfoDto> get serializer =>
      _$BdayaBLCIRMTenantsUpdateAppTenantInfoDtoSerializer();
}

class _$BdayaBLCIRMTenantsUpdateAppTenantInfoDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMTenantsUpdateAppTenantInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMTenantsUpdateAppTenantInfoDto,
    _$BdayaBLCIRMTenantsUpdateAppTenantInfoDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMTenantsUpdateAppTenantInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMTenantsUpdateAppTenantInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.address != null) {
      yield r'Address';
      yield serializers.serialize(
        object.address,
        specifiedType:
            const FullType(BdayaBLCIRMModelsRefNullable1SystemString),
      );
    }
    if (object.phone != null) {
      yield r'Phone';
      yield serializers.serialize(
        object.phone,
        specifiedType:
            const FullType(BdayaBLCIRMModelsRefNullable1SystemString),
      );
    }
    if (object.logo != null) {
      yield r'Logo';
      yield serializers.serialize(
        object.logo,
        specifiedType:
            const FullType(BdayaBLCIRMModelsRefNullable1SystemString),
      );
    }
    if (object.website != null) {
      yield r'Website';
      yield serializers.serialize(
        object.website,
        specifiedType:
            const FullType(BdayaBLCIRMModelsRefNullable1SystemString),
      );
    }
    if (object.email != null) {
      yield r'Email';
      yield serializers.serialize(
        object.email,
        specifiedType:
            const FullType(BdayaBLCIRMModelsRefNullable1SystemString),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMTenantsUpdateAppTenantInfoDto object, {
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
    required BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BdayaBLCIRMModelsRefNullable1SystemString),
          ) as BdayaBLCIRMModelsRefNullable1SystemString;
          result.address.replace(valueDes);
          break;
        case r'Phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BdayaBLCIRMModelsRefNullable1SystemString),
          ) as BdayaBLCIRMModelsRefNullable1SystemString;
          result.phone.replace(valueDes);
          break;
        case r'Logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BdayaBLCIRMModelsRefNullable1SystemString),
          ) as BdayaBLCIRMModelsRefNullable1SystemString;
          result.logo.replace(valueDes);
          break;
        case r'Website':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BdayaBLCIRMModelsRefNullable1SystemString),
          ) as BdayaBLCIRMModelsRefNullable1SystemString;
          result.website.replace(valueDes);
          break;
        case r'Email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BdayaBLCIRMModelsRefNullable1SystemString),
          ) as BdayaBLCIRMModelsRefNullable1SystemString;
          result.email.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMTenantsUpdateAppTenantInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMTenantsUpdateAppTenantInfoDtoBuilder();
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
