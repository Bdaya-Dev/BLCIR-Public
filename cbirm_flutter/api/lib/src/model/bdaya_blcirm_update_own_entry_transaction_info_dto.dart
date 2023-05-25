//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_update_own_entry_transaction_info_dto.g.dart';

/// BdayaBLCIRMUpdateOwnEntryTransactionInfoDto
///
/// Properties:
/// * [documentId]
/// * [newAvailableCount]
/// * [isAvailableOnline]
/// * [dollarType]
@BuiltValue()
abstract class BdayaBLCIRMUpdateOwnEntryTransactionInfoDto
    implements
        BdayaBLCIRMStateTransactionInfoDto,
        Built<BdayaBLCIRMUpdateOwnEntryTransactionInfoDto,
            BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder> {
  @BuiltValueField(wireName: r'NewAvailableCount')
  int? get newAvailableCount;

  @BuiltValueField(wireName: r'IsAvailableOnline')
  bool? get isAvailableOnline;

  @BuiltValueField(wireName: r'DocumentId')
  String? get documentId;

  BdayaBLCIRMUpdateOwnEntryTransactionInfoDto._();

  factory BdayaBLCIRMUpdateOwnEntryTransactionInfoDto(
          [void updates(
              BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder b)]) =
      _$BdayaBLCIRMUpdateOwnEntryTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder b) =>
      b..dollarType = b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMUpdateOwnEntryTransactionInfoDto>
      get serializer =>
          _$BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoSerializer();
}

class _$BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoSerializer
    implements
        PrimitiveSerializer<BdayaBLCIRMUpdateOwnEntryTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMUpdateOwnEntryTransactionInfoDto,
    _$BdayaBLCIRMUpdateOwnEntryTransactionInfoDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMUpdateOwnEntryTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMUpdateOwnEntryTransactionInfoDto object, {
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
    if (object.documentId != null) {
      yield r'DocumentId';
      yield serializers.serialize(
        object.documentId,
        specifiedType: const FullType(String),
      );
    }
    if (object.dollarType != null) {
      yield r'$type';
      yield serializers.serialize(
        object.dollarType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMUpdateOwnEntryTransactionInfoDto object, {
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
    required BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder result,
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
        case r'DocumentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.documentId = valueDes;
          break;
        case r'$type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dollarType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMUpdateOwnEntryTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMUpdateOwnEntryTransactionInfoDtoBuilder();
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
