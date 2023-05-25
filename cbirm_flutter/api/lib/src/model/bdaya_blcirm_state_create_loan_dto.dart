//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_create_loan_dto.g.dart';

/// BdayaBLCIRMStateCreateLoanDto
///
/// Properties:
/// * [documentId]
/// * [personId]
/// * [physicalCopies]
/// * [returnDate]
@BuiltValue()
abstract class BdayaBLCIRMStateCreateLoanDto
    implements
        Built<BdayaBLCIRMStateCreateLoanDto,
            BdayaBLCIRMStateCreateLoanDtoBuilder> {
  @BuiltValueField(wireName: r'DocumentId')
  String? get documentId;

  @BuiltValueField(wireName: r'PersonId')
  String? get personId;

  @BuiltValueField(wireName: r'PhysicalCopies')
  int? get physicalCopies;

  @BuiltValueField(wireName: r'ReturnDate')
  DateTime? get returnDate;

  BdayaBLCIRMStateCreateLoanDto._();

  factory BdayaBLCIRMStateCreateLoanDto(
          [void updates(BdayaBLCIRMStateCreateLoanDtoBuilder b)]) =
      _$BdayaBLCIRMStateCreateLoanDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMStateCreateLoanDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateCreateLoanDto> get serializer =>
      _$BdayaBLCIRMStateCreateLoanDtoSerializer();
}

class _$BdayaBLCIRMStateCreateLoanDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateCreateLoanDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStateCreateLoanDto,
    _$BdayaBLCIRMStateCreateLoanDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMStateCreateLoanDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateCreateLoanDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStateCreateLoanDto object, {
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
    required BdayaBLCIRMStateCreateLoanDtoBuilder result,
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
        case r'PersonId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.personId = valueDes;
          break;
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
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
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
  BdayaBLCIRMStateCreateLoanDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStateCreateLoanDtoBuilder();
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
