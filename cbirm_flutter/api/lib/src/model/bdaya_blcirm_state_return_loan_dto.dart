//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_return_loan_dto.g.dart';

/// BdayaBLCIRMStateReturnLoanDto
///
/// Properties:
/// * [physicalCopies]
/// * [returnDate]
@BuiltValue()
abstract class BdayaBLCIRMStateReturnLoanDto
    implements
        Built<BdayaBLCIRMStateReturnLoanDto,
            BdayaBLCIRMStateReturnLoanDtoBuilder> {
  @BuiltValueField(wireName: r'PhysicalCopies')
  int? get physicalCopies;

  @BuiltValueField(wireName: r'ReturnDate')
  DateTime? get returnDate;

  BdayaBLCIRMStateReturnLoanDto._();

  factory BdayaBLCIRMStateReturnLoanDto(
          [void updates(BdayaBLCIRMStateReturnLoanDtoBuilder b)]) =
      _$BdayaBLCIRMStateReturnLoanDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMStateReturnLoanDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateReturnLoanDto> get serializer =>
      _$BdayaBLCIRMStateReturnLoanDtoSerializer();
}

class _$BdayaBLCIRMStateReturnLoanDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateReturnLoanDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStateReturnLoanDto,
    _$BdayaBLCIRMStateReturnLoanDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMStateReturnLoanDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateReturnLoanDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.physicalCopies != null) {
      yield r'PhysicalCopies';
      yield serializers.serialize(
        object.physicalCopies,
        specifiedType: const FullType(int),
      );
    }
    if (object.returnDate != null) {
      yield r'ReturnDate';
      yield serializers.serialize(
        object.returnDate,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStateReturnLoanDto object, {
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
    required BdayaBLCIRMStateReturnLoanDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'PhysicalCopies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.physicalCopies = valueDes;
          break;
        case r'ReturnDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.returnDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMStateReturnLoanDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStateReturnLoanDtoBuilder();
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
