//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_transaction_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_document_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_tenants_app_tenant_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_transfer_physical_documents_transaction_info_dto.g.dart';

/// BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto
///
/// Properties:
/// * [targetTenantId]
/// * [targetTenant]
/// * [documentId]
/// * [document]
/// * [quantity]
/// * [notes]
/// * [pricePerItem]
/// * [dollarType]
@BuiltValue()
abstract class BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto
    implements
        BdayaBLCIRMStateTransactionInfoDto,
        Built<BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto,
            BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder> {
  @BuiltValueField(wireName: r'Quantity')
  int? get quantity;

  @BuiltValueField(wireName: r'Notes')
  String? get notes;

  @BuiltValueField(wireName: r'PricePerItem')
  double? get pricePerItem;

  @BuiltValueField(wireName: r'Document')
  BdayaBLCIRMStateDocumentDto? get document;

  @BuiltValueField(wireName: r'DocumentId')
  String? get documentId;

  @BuiltValueField(wireName: r'TargetTenant')
  BdayaBLCIRMTenantsAppTenantDto? get targetTenant;

  @BuiltValueField(wireName: r'TargetTenantId')
  String? get targetTenantId;

  BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto._();

  factory BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto(
      [void updates(
          BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder
              b)]) = _$BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder b) =>
      b..dollarType = b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto>
      get serializer =>
          _$BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoSerializer();
}

class _$BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoSerializer
    implements
        PrimitiveSerializer<
            BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto,
    _$BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto
  ];

  @override
  final String wireName =
      r'BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.dollarType != null) {
      yield r'$type';
      yield serializers.serialize(
        object.dollarType,
        specifiedType: const FullType(String),
      );
    }
    if (object.document != null) {
      yield r'Document';
      yield serializers.serialize(
        object.document,
        specifiedType: const FullType(BdayaBLCIRMStateDocumentDto),
      );
    }
    if (object.documentId != null) {
      yield r'DocumentId';
      yield serializers.serialize(
        object.documentId,
        specifiedType: const FullType(String),
      );
    }
    if (object.targetTenant != null) {
      yield r'TargetTenant';
      yield serializers.serialize(
        object.targetTenant,
        specifiedType: const FullType(BdayaBLCIRMTenantsAppTenantDto),
      );
    }
    if (object.targetTenantId != null) {
      yield r'TargetTenantId';
      yield serializers.serialize(
        object.targetTenantId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto object, {
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
    required BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'$type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dollarType = valueDes;
          break;
        case r'Document':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMStateDocumentDto),
          ) as BdayaBLCIRMStateDocumentDto;
          result.document = valueDes;
          break;
        case r'DocumentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.documentId = valueDes;
          break;
        case r'TargetTenant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMTenantsAppTenantDto),
          ) as BdayaBLCIRMTenantsAppTenantDto;
          result.targetTenant.replace(valueDes);
          break;
        case r'TargetTenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.targetTenantId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDtoBuilder();
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
