//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_document_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_create_document_transaction_info_dto.g.dart';

/// BdayaBLCIRMCreateDocumentTransactionInfoDto
///
/// Properties:
/// * [documentId]
/// * [info]
/// * [dollarType]
@BuiltValue()
abstract class BdayaBLCIRMCreateDocumentTransactionInfoDto
    implements
        BdayaBLCIRMStateTransactionInfoDto,
        Built<BdayaBLCIRMCreateDocumentTransactionInfoDto,
            BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder> {
  @BuiltValueField(wireName: r'DocumentId')
  String? get documentId;

  @BuiltValueField(wireName: r'Info')
  BdayaBLCIRMStateDocumentInfoDto? get info;

  BdayaBLCIRMCreateDocumentTransactionInfoDto._();

  factory BdayaBLCIRMCreateDocumentTransactionInfoDto(
          [void updates(
              BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder b)]) =
      _$BdayaBLCIRMCreateDocumentTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder b) =>
      b..dollarType = b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMCreateDocumentTransactionInfoDto>
      get serializer =>
          _$BdayaBLCIRMCreateDocumentTransactionInfoDtoSerializer();
}

class _$BdayaBLCIRMCreateDocumentTransactionInfoDtoSerializer
    implements
        PrimitiveSerializer<BdayaBLCIRMCreateDocumentTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMCreateDocumentTransactionInfoDto,
    _$BdayaBLCIRMCreateDocumentTransactionInfoDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMCreateDocumentTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMCreateDocumentTransactionInfoDto object, {
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
    BdayaBLCIRMCreateDocumentTransactionInfoDto object, {
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
    required BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder result,
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
  BdayaBLCIRMCreateDocumentTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMCreateDocumentTransactionInfoDtoBuilder();
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
