//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_document_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_update_document_transaction_info_dto.g.dart';

/// BdayaBLCIRMUpdateDocumentTransactionInfoDto
///
/// Properties:
/// * [documentId]
/// * [info]
/// * [dollarType]
@BuiltValue()
abstract class BdayaBLCIRMUpdateDocumentTransactionInfoDto
    implements
        BdayaBLCIRMStateTransactionInfoDto,
        Built<BdayaBLCIRMUpdateDocumentTransactionInfoDto,
            BdayaBLCIRMUpdateDocumentTransactionInfoDtoBuilder> {
  @BuiltValueField(wireName: r'DocumentId')
  String? get documentId;

  @BuiltValueField(wireName: r'Info')
  BdayaBLCIRMStateDocumentInfoDto? get info;

  BdayaBLCIRMUpdateDocumentTransactionInfoDto._();

  factory BdayaBLCIRMUpdateDocumentTransactionInfoDto(
          [void updates(
              BdayaBLCIRMUpdateDocumentTransactionInfoDtoBuilder b)]) =
      _$BdayaBLCIRMUpdateDocumentTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMUpdateDocumentTransactionInfoDtoBuilder b) =>
      b..dollarType = b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMUpdateDocumentTransactionInfoDto>
      get serializer =>
          _$BdayaBLCIRMUpdateDocumentTransactionInfoDtoSerializer();
}

class _$BdayaBLCIRMUpdateDocumentTransactionInfoDtoSerializer
    implements
        PrimitiveSerializer<BdayaBLCIRMUpdateDocumentTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMUpdateDocumentTransactionInfoDto,
    _$BdayaBLCIRMUpdateDocumentTransactionInfoDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMUpdateDocumentTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMUpdateDocumentTransactionInfoDto object, {
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
    if (object.info != null) {
      yield r'Info';
      yield serializers.serialize(
        object.info,
        specifiedType: const FullType(BdayaBLCIRMStateDocumentInfoDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMUpdateDocumentTransactionInfoDto object, {
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
    required BdayaBLCIRMUpdateDocumentTransactionInfoDtoBuilder result,
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
        case r'Info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMStateDocumentInfoDto),
          ) as BdayaBLCIRMStateDocumentInfoDto;
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
  BdayaBLCIRMUpdateDocumentTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMUpdateDocumentTransactionInfoDtoBuilder();
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
