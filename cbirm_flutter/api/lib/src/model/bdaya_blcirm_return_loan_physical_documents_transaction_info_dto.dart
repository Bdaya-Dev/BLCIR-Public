//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_return_loan_physical_documents_transaction_info_dto.g.dart';

/// BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto
///
/// Properties:
/// * [loanId]
/// * [physicalCopies]
/// * [returnDate]
/// * [dollarType]
@BuiltValue()
abstract class BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto
    implements
        BdayaBLCIRMStateTransactionInfoDto,
        Built<BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto,
            BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder> {
  @BuiltValueField(wireName: r'ReturnDate')
  DateTime? get returnDate;

  @BuiltValueField(wireName: r'LoanId')
  String? get loanId;

  @BuiltValueField(wireName: r'PhysicalCopies')
  int? get physicalCopies;

  BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto._();

  factory BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto(
      [void updates(
          BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder
              b)]) = _$BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder b) =>
      b..dollarType = b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto>
      get serializer =>
          _$BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoSerializer();
}

class _$BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoSerializer
    implements
        PrimitiveSerializer<
            BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto,
    _$BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto
  ];

  @override
  final String wireName =
      r'BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.returnDate != null) {
      yield r'ReturnDate';
      yield serializers.serialize(
        object.returnDate,
        specifiedType: const FullType(DateTime),
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
    BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto object, {
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
    required BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ReturnDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.returnDate = valueDes;
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
  BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        BdayaBLCIRMReturnLoanPhysicalDocumentsTransactionInfoDtoBuilder();
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
