//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_tenants_app_tenant_info_dto.g.dart';

/// BdayaBLCIRMTenantsAppTenantInfoDto
///
/// Properties:
/// * [address]
/// * [phone]
/// * [logo]
/// * [website]
/// * [email]
/// * [creationTime]
@BuiltValue()
abstract class BdayaBLCIRMTenantsAppTenantInfoDto
    implements
        Built<BdayaBLCIRMTenantsAppTenantInfoDto,
            BdayaBLCIRMTenantsAppTenantInfoDtoBuilder> {
  @BuiltValueField(wireName: r'Address')
  String? get address;

  @BuiltValueField(wireName: r'Phone')
  String? get phone;

  @BuiltValueField(wireName: r'Logo')
  String? get logo;

  @BuiltValueField(wireName: r'Website')
  String? get website;

  @BuiltValueField(wireName: r'Email')
  String? get email;

  @BuiltValueField(wireName: r'CreationTime')
  DateTime? get creationTime;

  BdayaBLCIRMTenantsAppTenantInfoDto._();

  factory BdayaBLCIRMTenantsAppTenantInfoDto(
          [void updates(BdayaBLCIRMTenantsAppTenantInfoDtoBuilder b)]) =
      _$BdayaBLCIRMTenantsAppTenantInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMTenantsAppTenantInfoDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMTenantsAppTenantInfoDto> get serializer =>
      _$BdayaBLCIRMTenantsAppTenantInfoDtoSerializer();
}

class _$BdayaBLCIRMTenantsAppTenantInfoDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMTenantsAppTenantInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMTenantsAppTenantInfoDto,
    _$BdayaBLCIRMTenantsAppTenantInfoDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMTenantsAppTenantInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMTenantsAppTenantInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.address != null) {
      yield r'Address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.phone != null) {
      yield r'Phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.logo != null) {
      yield r'Logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.website != null) {
      yield r'Website';
      yield serializers.serialize(
        object.website,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.email != null) {
      yield r'Email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.creationTime != null) {
      yield r'CreationTime';
      yield serializers.serialize(
        object.creationTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMTenantsAppTenantInfoDto object, {
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
    required BdayaBLCIRMTenantsAppTenantInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'Phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'Logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logo = valueDes;
          break;
        case r'Website':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.website = valueDes;
          break;
        case r'Email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'CreationTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.creationTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMTenantsAppTenantInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMTenantsAppTenantInfoDtoBuilder();
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
