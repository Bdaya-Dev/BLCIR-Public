//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_person_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_update_author_transaction_info_dto.g.dart';

/// BdayaBLCIRMUpdateAuthorTransactionInfoDto
///
/// Properties:
/// * [authorId]
/// * [info]
/// * [dollarType]
@BuiltValue()
abstract class BdayaBLCIRMUpdateAuthorTransactionInfoDto
    implements
        BdayaBLCIRMStateTransactionInfoDto,
        Built<BdayaBLCIRMUpdateAuthorTransactionInfoDto,
            BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder> {
  @BuiltValueField(wireName: r'AuthorId')
  String? get authorId;

  @BuiltValueField(wireName: r'Info')
  BdayaBLCIRMStatePersonInfoDto? get info;

  BdayaBLCIRMUpdateAuthorTransactionInfoDto._();

  factory BdayaBLCIRMUpdateAuthorTransactionInfoDto(
          [void updates(BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder b)]) =
      _$BdayaBLCIRMUpdateAuthorTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder b) =>
      b..dollarType = b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMUpdateAuthorTransactionInfoDto> get serializer =>
      _$BdayaBLCIRMUpdateAuthorTransactionInfoDtoSerializer();
}

class _$BdayaBLCIRMUpdateAuthorTransactionInfoDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMUpdateAuthorTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMUpdateAuthorTransactionInfoDto,
    _$BdayaBLCIRMUpdateAuthorTransactionInfoDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMUpdateAuthorTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMUpdateAuthorTransactionInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.authorId != null) {
      yield r'AuthorId';
      yield serializers.serialize(
        object.authorId,
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
    BdayaBLCIRMUpdateAuthorTransactionInfoDto object, {
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
    required BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'AuthorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorId = valueDes;
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
  BdayaBLCIRMUpdateAuthorTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMUpdateAuthorTransactionInfoDtoBuilder();
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
