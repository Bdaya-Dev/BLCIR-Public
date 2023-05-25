//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_delete_author_transaction_info_dto.g.dart';

/// BdayaBLCIRMDeleteAuthorTransactionInfoDto
///
/// Properties:
/// * [authorId]
/// * [dollarType]
@BuiltValue()
abstract class BdayaBLCIRMDeleteAuthorTransactionInfoDto
    implements
        BdayaBLCIRMStateTransactionInfoDto,
        Built<BdayaBLCIRMDeleteAuthorTransactionInfoDto,
            BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder> {
  @BuiltValueField(wireName: r'AuthorId')
  String? get authorId;

  BdayaBLCIRMDeleteAuthorTransactionInfoDto._();

  factory BdayaBLCIRMDeleteAuthorTransactionInfoDto(
          [void updates(BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder b)]) =
      _$BdayaBLCIRMDeleteAuthorTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder b) =>
      b..dollarType = b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMDeleteAuthorTransactionInfoDto> get serializer =>
      _$BdayaBLCIRMDeleteAuthorTransactionInfoDtoSerializer();
}

class _$BdayaBLCIRMDeleteAuthorTransactionInfoDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMDeleteAuthorTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMDeleteAuthorTransactionInfoDto,
    _$BdayaBLCIRMDeleteAuthorTransactionInfoDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMDeleteAuthorTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMDeleteAuthorTransactionInfoDto object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMDeleteAuthorTransactionInfoDto object, {
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
    required BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMDeleteAuthorTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMDeleteAuthorTransactionInfoDtoBuilder();
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
