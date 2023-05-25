//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_loan_physical_documents_transaction_info_dto.g.dart';

/// BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto
///
/// Properties:
/// * [loanId]
/// * [documentId]
/// * [personId]
/// * [physicalCopies]
/// * [returnDate]
/// * [dollarType]
@BuiltValue()
abstract class BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto
    implements
        BdayaBLCIRMStateTransactionInfoDto,
        Built<BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto,
            BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder> {
  @BuiltValueField(wireName: r'ReturnDate')
  DateTime? get returnDate;

  @BuiltValueField(wireName: r'DocumentId')
  String? get documentId;

  @BuiltValueField(wireName: r'PersonId')
  String? get personId;

  @BuiltValueField(wireName: r'LoanId')
  String? get loanId;

  @BuiltValueField(wireName: r'PhysicalCopies')
  int? get physicalCopies;

  BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto._();

  factory BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto(
          [void updates(
              BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder b)]) =
      _$BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder b) =>
      b..dollarType = b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto>
      get serializer =>
          _$BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoSerializer();
}

class _$BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoSerializer
    implements
        PrimitiveSerializer<
            BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto,
    _$BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.returnDate != null) {
      yield r'ReturnDate';
      yield serializers.serialize(
        object.returnDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.documentId != null) {
      yield r'DocumentId';
      yield serializers.serialize(
        object.documentId,
        specifiedType: const FullType(String),
      );
    }
    if (object.personId != null) {
      yield r'PersonId';
      yield serializers.serialize(
        object.personId,
        specifiedType: const FullType(String),
      );
    }
    if (object.loanId != null) {
      yield r'LoanId';
      yield serializers.serialize(
        object.loanId,
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
    if (object.physicalCopies != null) {
      yield r'PhysicalCopies';
      yield serializers.serialize(
        object.physicalCopies,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto object, {
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
    required BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ReturnDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.returnDate = valueDes;
          break;
        case r'DocumentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.documentId = valueDes;
          break;
        case r'PersonId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.personId = valueDes;
          break;
        case r'LoanId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.loanId = valueDes;
          break;
        case r'$type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dollarType = valueDes;
          break;
        case r'PhysicalCopies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.physicalCopies = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDtoBuilder();
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
