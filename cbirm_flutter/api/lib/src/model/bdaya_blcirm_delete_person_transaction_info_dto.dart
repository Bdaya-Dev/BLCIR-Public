//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_person_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_delete_person_transaction_info_dto.g.dart';

/// BdayaBLCIRMDeletePersonTransactionInfoDto
///
/// Properties:
/// * [personId]
/// * [info]
/// * [dollarType]
@BuiltValue()
abstract class BdayaBLCIRMDeletePersonTransactionInfoDto
    implements
        BdayaBLCIRMStateTransactionInfoDto,
        Built<BdayaBLCIRMDeletePersonTransactionInfoDto,
            BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder> {
  @BuiltValueField(wireName: r'PersonId')
  String? get personId;

  @BuiltValueField(wireName: r'Info')
  BdayaBLCIRMStatePersonInfoDto? get info;

  BdayaBLCIRMDeletePersonTransactionInfoDto._();

  factory BdayaBLCIRMDeletePersonTransactionInfoDto(
          [void updates(BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder b)]) =
      _$BdayaBLCIRMDeletePersonTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder b) =>
      b..dollarType = b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMDeletePersonTransactionInfoDto> get serializer =>
      _$BdayaBLCIRMDeletePersonTransactionInfoDtoSerializer();
}

class _$BdayaBLCIRMDeletePersonTransactionInfoDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMDeletePersonTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMDeletePersonTransactionInfoDto,
    _$BdayaBLCIRMDeletePersonTransactionInfoDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMDeletePersonTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMDeletePersonTransactionInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.personId != null) {
      yield r'PersonId';
      yield serializers.serialize(
        object.personId,
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
    if (object.info != null) {
      yield r'Info';
      yield serializers.serialize(
        object.info,
        specifiedType: const FullType(BdayaBLCIRMStatePersonInfoDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMDeletePersonTransactionInfoDto object, {
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
    required BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'PersonId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.personId = valueDes;
          break;
        case r'$type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dollarType = valueDes;
          break;
        case r'Info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMStatePersonInfoDto),
          ) as BdayaBLCIRMStatePersonInfoDto;
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
  BdayaBLCIRMDeletePersonTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMDeletePersonTransactionInfoDtoBuilder();
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
