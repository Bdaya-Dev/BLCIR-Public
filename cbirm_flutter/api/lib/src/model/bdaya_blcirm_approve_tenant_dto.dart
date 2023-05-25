//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_approve_tenant_dto.g.dart';

/// BdayaBLCIRMApproveTenantDto
///
/// Properties:
/// * [tenantId]
/// * [result]
/// * [reason]
@BuiltValue()
abstract class BdayaBLCIRMApproveTenantDto
    implements
        Built<BdayaBLCIRMApproveTenantDto, BdayaBLCIRMApproveTenantDtoBuilder> {
  @BuiltValueField(wireName: r'TenantId')
  String? get tenantId;

  @BuiltValueField(wireName: r'Result')
  bool? get result;

  @BuiltValueField(wireName: r'Reason')
  String? get reason;

  BdayaBLCIRMApproveTenantDto._();

  factory BdayaBLCIRMApproveTenantDto(
          [void updates(BdayaBLCIRMApproveTenantDtoBuilder b)]) =
      _$BdayaBLCIRMApproveTenantDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMApproveTenantDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMApproveTenantDto> get serializer =>
      _$BdayaBLCIRMApproveTenantDtoSerializer();
}

class _$BdayaBLCIRMApproveTenantDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMApproveTenantDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMApproveTenantDto,
    _$BdayaBLCIRMApproveTenantDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMApproveTenantDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMApproveTenantDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tenantId != null) {
      yield r'TenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(String),
      );
    }
    if (object.result != null) {
      yield r'Result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(bool),
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
    BdayaBLCIRMApproveTenantDto object, {
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
    required BdayaBLCIRMApproveTenantDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'TenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'Result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
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
  BdayaBLCIRMApproveTenantDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMApproveTenantDtoBuilder();
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
