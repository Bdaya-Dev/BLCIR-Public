//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_transfer_document_dto.g.dart';

/// BdayaBLCIRMStateTransferDocumentDto
///
/// Properties:
/// * [targetTenantId]
/// * [quantity]
/// * [notes]
/// * [pricePerItem]
@BuiltValue()
abstract class BdayaBLCIRMStateTransferDocumentDto
    implements
        Built<BdayaBLCIRMStateTransferDocumentDto,
            BdayaBLCIRMStateTransferDocumentDtoBuilder> {
  @BuiltValueField(wireName: r'TargetTenantId')
  String? get targetTenantId;

  @BuiltValueField(wireName: r'Quantity')
  int? get quantity;

  @BuiltValueField(wireName: r'Notes')
  String? get notes;

  @BuiltValueField(wireName: r'PricePerItem')
  double? get pricePerItem;

  BdayaBLCIRMStateTransferDocumentDto._();

  factory BdayaBLCIRMStateTransferDocumentDto(
          [void updates(BdayaBLCIRMStateTransferDocumentDtoBuilder b)]) =
      _$BdayaBLCIRMStateTransferDocumentDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMStateTransferDocumentDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateTransferDocumentDto> get serializer =>
      _$BdayaBLCIRMStateTransferDocumentDtoSerializer();
}

class _$BdayaBLCIRMStateTransferDocumentDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateTransferDocumentDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStateTransferDocumentDto,
    _$BdayaBLCIRMStateTransferDocumentDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMStateTransferDocumentDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateTransferDocumentDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.targetTenantId != null) {
      yield r'TargetTenantId';
      yield serializers.serialize(
        object.targetTenantId,
        specifiedType: const FullType(String),
      );
    }
    if (object.quantity != null) {
      yield r'Quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.notes != null) {
      yield r'Notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pricePerItem != null) {
      yield r'PricePerItem';
      yield serializers.serialize(
        object.pricePerItem,
        specifiedType: const FullType.nullable(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStateTransferDocumentDto object, {
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
    required BdayaBLCIRMStateTransferDocumentDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'TargetTenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.targetTenantId = valueDes;
          break;
        case r'Quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'Notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        case r'PricePerItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.pricePerItem = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMStateTransferDocumentDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStateTransferDocumentDtoBuilder();
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
