//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_delete_document_transaction_info_dto.g.dart';

/// BdayaBLCIRMDeleteDocumentTransactionInfoDto
///
/// Properties:
/// * [documentId]
/// * [dollarType]
@BuiltValue()
abstract class BdayaBLCIRMDeleteDocumentTransactionInfoDto
    implements
        BdayaBLCIRMStateTransactionInfoDto,
        Built<BdayaBLCIRMDeleteDocumentTransactionInfoDto,
            BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder> {
  @BuiltValueField(wireName: r'DocumentId')
  String? get documentId;

  BdayaBLCIRMDeleteDocumentTransactionInfoDto._();

  factory BdayaBLCIRMDeleteDocumentTransactionInfoDto(
          [void updates(
              BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder b)]) =
      _$BdayaBLCIRMDeleteDocumentTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder b) =>
      b..dollarType = b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMDeleteDocumentTransactionInfoDto>
      get serializer =>
          _$BdayaBLCIRMDeleteDocumentTransactionInfoDtoSerializer();
}

class _$BdayaBLCIRMDeleteDocumentTransactionInfoDtoSerializer
    implements
        PrimitiveSerializer<BdayaBLCIRMDeleteDocumentTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMDeleteDocumentTransactionInfoDto,
    _$BdayaBLCIRMDeleteDocumentTransactionInfoDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMDeleteDocumentTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMDeleteDocumentTransactionInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    BdayaBLCIRMDeleteDocumentTransactionInfoDto object, {
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
    required BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  BdayaBLCIRMDeleteDocumentTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMDeleteDocumentTransactionInfoDtoBuilder();
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
