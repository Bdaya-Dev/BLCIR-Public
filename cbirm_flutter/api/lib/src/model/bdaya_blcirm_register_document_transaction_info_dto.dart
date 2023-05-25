//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_register_document_transaction_info_dto.g.dart';

/// BdayaBLCIRMRegisterDocumentTransactionInfoDto
///
/// Properties:
/// * [documentId]
/// * [initialCount]
/// * [isAvailableOnline]
/// * [dollarType]
@BuiltValue()
abstract class BdayaBLCIRMRegisterDocumentTransactionInfoDto
    implements
        BdayaBLCIRMStateTransactionInfoDto,
        Built<BdayaBLCIRMRegisterDocumentTransactionInfoDto,
            BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder> {
  @BuiltValueField(wireName: r'InitialCount')
  int? get initialCount;

  @BuiltValueField(wireName: r'IsAvailableOnline')
  bool? get isAvailableOnline;

  @BuiltValueField(wireName: r'DocumentId')
  String? get documentId;

  BdayaBLCIRMRegisterDocumentTransactionInfoDto._();

  factory BdayaBLCIRMRegisterDocumentTransactionInfoDto(
          [void updates(
              BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder b)]) =
      _$BdayaBLCIRMRegisterDocumentTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder b) =>
      b..dollarType = b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMRegisterDocumentTransactionInfoDto>
      get serializer =>
          _$BdayaBLCIRMRegisterDocumentTransactionInfoDtoSerializer();
}

class _$BdayaBLCIRMRegisterDocumentTransactionInfoDtoSerializer
    implements
        PrimitiveSerializer<BdayaBLCIRMRegisterDocumentTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMRegisterDocumentTransactionInfoDto,
    _$BdayaBLCIRMRegisterDocumentTransactionInfoDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMRegisterDocumentTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMRegisterDocumentTransactionInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.initialCount != null) {
      yield r'InitialCount';
      yield serializers.serialize(
        object.initialCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.isAvailableOnline != null) {
      yield r'IsAvailableOnline';
      yield serializers.serialize(
        object.isAvailableOnline,
        specifiedType: const FullType(bool),
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
    BdayaBLCIRMRegisterDocumentTransactionInfoDto object, {
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
    required BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'InitialCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.initialCount = valueDes;
          break;
        case r'IsAvailableOnline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
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
  BdayaBLCIRMRegisterDocumentTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMRegisterDocumentTransactionInfoDtoBuilder();
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
