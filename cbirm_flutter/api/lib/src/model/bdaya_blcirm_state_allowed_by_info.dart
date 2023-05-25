//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_allowed_by_info.g.dart';

/// BdayaBLCIRMStateAllowedByInfo
///
/// Properties:
/// * [tenantId]
/// * [creatorId]
/// * [creationTime]
@BuiltValue()
abstract class BdayaBLCIRMStateAllowedByInfo
    implements
        Built<BdayaBLCIRMStateAllowedByInfo,
            BdayaBLCIRMStateAllowedByInfoBuilder> {
  @BuiltValueField(wireName: r'tenantId')
  String? get tenantId;

  @BuiltValueField(wireName: r'creatorId')
  String? get creatorId;

  @BuiltValueField(wireName: r'creationTime')
  DateTime? get creationTime;

  BdayaBLCIRMStateAllowedByInfo._();

  factory BdayaBLCIRMStateAllowedByInfo(
          [void updates(BdayaBLCIRMStateAllowedByInfoBuilder b)]) =
      _$BdayaBLCIRMStateAllowedByInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMStateAllowedByInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateAllowedByInfo> get serializer =>
      _$BdayaBLCIRMStateAllowedByInfoSerializer();
}

class _$BdayaBLCIRMStateAllowedByInfoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateAllowedByInfo> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStateAllowedByInfo,
    _$BdayaBLCIRMStateAllowedByInfo
  ];

  @override
  final String wireName = r'BdayaBLCIRMStateAllowedByInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateAllowedByInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.creatorId != null) {
      yield r'creatorId';
      yield serializers.serialize(
        object.creatorId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.creationTime != null) {
      yield r'creationTime';
      yield serializers.serialize(
        object.creationTime,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStateAllowedByInfo object, {
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
    required BdayaBLCIRMStateAllowedByInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenantId = valueDes;
          break;
        case r'creatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.creatorId = valueDes;
          break;
        case r'creationTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
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
  BdayaBLCIRMStateAllowedByInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStateAllowedByInfoBuilder();
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
