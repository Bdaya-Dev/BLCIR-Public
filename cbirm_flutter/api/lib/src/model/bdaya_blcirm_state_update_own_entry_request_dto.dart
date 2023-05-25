//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_update_own_entry_request_dto.g.dart';

/// BdayaBLCIRMStateUpdateOwnEntryRequestDto
///
/// Properties:
/// * [newAvailableCount]
/// * [isAvailableOnline]
@BuiltValue()
abstract class BdayaBLCIRMStateUpdateOwnEntryRequestDto
    implements
        Built<BdayaBLCIRMStateUpdateOwnEntryRequestDto,
            BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder> {
  @BuiltValueField(wireName: r'NewAvailableCount')
  int? get newAvailableCount;

  @BuiltValueField(wireName: r'IsAvailableOnline')
  bool? get isAvailableOnline;

  BdayaBLCIRMStateUpdateOwnEntryRequestDto._();

  factory BdayaBLCIRMStateUpdateOwnEntryRequestDto(
          [void updates(BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder b)]) =
      _$BdayaBLCIRMStateUpdateOwnEntryRequestDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateUpdateOwnEntryRequestDto> get serializer =>
      _$BdayaBLCIRMStateUpdateOwnEntryRequestDtoSerializer();
}

class _$BdayaBLCIRMStateUpdateOwnEntryRequestDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateUpdateOwnEntryRequestDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStateUpdateOwnEntryRequestDto,
    _$BdayaBLCIRMStateUpdateOwnEntryRequestDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMStateUpdateOwnEntryRequestDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateUpdateOwnEntryRequestDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.newAvailableCount != null) {
      yield r'NewAvailableCount';
      yield serializers.serialize(
        object.newAvailableCount,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.isAvailableOnline != null) {
      yield r'IsAvailableOnline';
      yield serializers.serialize(
        object.isAvailableOnline,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStateUpdateOwnEntryRequestDto object, {
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
    required BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'NewAvailableCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.newAvailableCount = valueDes;
          break;
        case r'IsAvailableOnline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isAvailableOnline = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMStateUpdateOwnEntryRequestDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStateUpdateOwnEntryRequestDtoBuilder();
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
