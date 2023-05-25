//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_tenants_allowed_by_dto.g.dart';

/// BdayaBLCIRMTenantsAllowedByDto
///
/// Properties:
/// * [creationTime]
/// * [creatorId]
/// * [tenantId]
/// * [result]
/// * [reason]
@BuiltValue()
abstract class BdayaBLCIRMTenantsAllowedByDto
    implements
        Built<BdayaBLCIRMTenantsAllowedByDto,
            BdayaBLCIRMTenantsAllowedByDtoBuilder> {
  @BuiltValueField(wireName: r'CreationTime')
  DateTime? get creationTime;

  @BuiltValueField(wireName: r'CreatorId')
  String? get creatorId;

  @BuiltValueField(wireName: r'TenantId')
  String? get tenantId;

  @BuiltValueField(wireName: r'Result')
  bool? get result;

  @BuiltValueField(wireName: r'Reason')
  String? get reason;

  BdayaBLCIRMTenantsAllowedByDto._();

  factory BdayaBLCIRMTenantsAllowedByDto(
          [void updates(BdayaBLCIRMTenantsAllowedByDtoBuilder b)]) =
      _$BdayaBLCIRMTenantsAllowedByDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMTenantsAllowedByDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMTenantsAllowedByDto> get serializer =>
      _$BdayaBLCIRMTenantsAllowedByDtoSerializer();
}

class _$BdayaBLCIRMTenantsAllowedByDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMTenantsAllowedByDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMTenantsAllowedByDto,
    _$BdayaBLCIRMTenantsAllowedByDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMTenantsAllowedByDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMTenantsAllowedByDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.creationTime != null) {
      yield r'CreationTime';
      yield serializers.serialize(
        object.creationTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.creatorId != null) {
      yield r'CreatorId';
      yield serializers.serialize(
        object.creatorId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tenantId != null) {
      yield r'TenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.result != null) {
      yield r'Result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.reason != null) {
      yield r'Reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMTenantsAllowedByDto object, {
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
    required BdayaBLCIRMTenantsAllowedByDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'CreationTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.creationTime = valueDes;
          break;
        case r'CreatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.creatorId = valueDes;
          break;
        case r'TenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenantId = valueDes;
          break;
        case r'Result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.result = valueDes;
          break;
        case r'Reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMTenantsAllowedByDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMTenantsAllowedByDtoBuilder();
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
