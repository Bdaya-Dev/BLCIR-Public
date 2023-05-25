//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_person_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_create_person_transaction_info_dto.g.dart';

/// BdayaBLCIRMCreatePersonTransactionInfoDto
///
/// Properties:
/// * [personId]
/// * [info]
/// * [dollarType]
@BuiltValue()
abstract class BdayaBLCIRMCreatePersonTransactionInfoDto
    implements
        BdayaBLCIRMStateTransactionInfoDto,
        Built<BdayaBLCIRMCreatePersonTransactionInfoDto,
            BdayaBLCIRMCreatePersonTransactionInfoDtoBuilder> {
  @BuiltValueField(wireName: r'PersonId')
  String? get personId;

  @BuiltValueField(wireName: r'Info')
  BdayaBLCIRMStatePersonInfoDto? get info;

  BdayaBLCIRMCreatePersonTransactionInfoDto._();

  factory BdayaBLCIRMCreatePersonTransactionInfoDto(
          [void updates(BdayaBLCIRMCreatePersonTransactionInfoDtoBuilder b)]) =
      _$BdayaBLCIRMCreatePersonTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMCreatePersonTransactionInfoDtoBuilder b) =>
      b..dollarType = b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMCreatePersonTransactionInfoDto> get serializer =>
      _$BdayaBLCIRMCreatePersonTransactionInfoDtoSerializer();
}

class _$BdayaBLCIRMCreatePersonTransactionInfoDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMCreatePersonTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMCreatePersonTransactionInfoDto,
    _$BdayaBLCIRMCreatePersonTransactionInfoDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMCreatePersonTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMCreatePersonTransactionInfoDto object, {
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
    BdayaBLCIRMCreatePersonTransactionInfoDto object, {
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
    required BdayaBLCIRMCreatePersonTransactionInfoDtoBuilder result,
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
  BdayaBLCIRMCreatePersonTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMCreatePersonTransactionInfoDtoBuilder();
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
