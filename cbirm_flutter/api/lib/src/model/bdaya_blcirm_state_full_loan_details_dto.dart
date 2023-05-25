//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_document_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_tenants_app_tenant_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_person_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_full_loan_details_dto.g.dart';

/// BdayaBLCIRMStateFullLoanDetailsDto
///
/// Properties:
/// * [id]
/// * [creationTime]
/// * [creatorId]
/// * [lastModificationTime]
/// * [lastModifierId]
/// * [isDeleted]
/// * [deleterId]
/// * [deletionTime]
/// * [tenant]
/// * [document]
/// * [person]
/// * [physicalCopies]
/// * [returnedCopies]
/// * [remainingCopies]
/// * [returnDate]
/// * [actualReturnDate]
@BuiltValue()
abstract class BdayaBLCIRMStateFullLoanDetailsDto
    implements
        Built<BdayaBLCIRMStateFullLoanDetailsDto,
            BdayaBLCIRMStateFullLoanDetailsDtoBuilder> {
  @BuiltValueField(wireName: r'Id')
  String? get id;

  @BuiltValueField(wireName: r'CreationTime')
  DateTime? get creationTime;

  @BuiltValueField(wireName: r'CreatorId')
  String? get creatorId;

  @BuiltValueField(wireName: r'LastModificationTime')
  DateTime? get lastModificationTime;

  @BuiltValueField(wireName: r'LastModifierId')
  String? get lastModifierId;

  @BuiltValueField(wireName: r'IsDeleted')
  bool? get isDeleted;

  @BuiltValueField(wireName: r'DeleterId')
  String? get deleterId;

  @BuiltValueField(wireName: r'DeletionTime')
  DateTime? get deletionTime;

  @BuiltValueField(wireName: r'Tenant')
  BdayaBLCIRMTenantsAppTenantDto? get tenant;

  @BuiltValueField(wireName: r'Document')
  BdayaBLCIRMStateDocumentDto? get document;

  @BuiltValueField(wireName: r'Person')
  BdayaBLCIRMStatePersonDto? get person;

  @BuiltValueField(wireName: r'PhysicalCopies')
  int? get physicalCopies;

  @BuiltValueField(wireName: r'ReturnedCopies')
  int? get returnedCopies;

  @BuiltValueField(wireName: r'RemainingCopies')
  int? get remainingCopies;

  @BuiltValueField(wireName: r'ReturnDate')
  DateTime? get returnDate;

  @BuiltValueField(wireName: r'ActualReturnDate')
  DateTime? get actualReturnDate;

  BdayaBLCIRMStateFullLoanDetailsDto._();

  factory BdayaBLCIRMStateFullLoanDetailsDto(
          [void updates(BdayaBLCIRMStateFullLoanDetailsDtoBuilder b)]) =
      _$BdayaBLCIRMStateFullLoanDetailsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMStateFullLoanDetailsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateFullLoanDetailsDto> get serializer =>
      _$BdayaBLCIRMStateFullLoanDetailsDtoSerializer();
}

class _$BdayaBLCIRMStateFullLoanDetailsDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateFullLoanDetailsDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStateFullLoanDetailsDto,
    _$BdayaBLCIRMStateFullLoanDetailsDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMStateFullLoanDetailsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateFullLoanDetailsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'Id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.creationTime != null) {
      yield r'CreationTime';
      yield serializers.serialize(
        object.creationTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.creatorId != null) {
      yield r'CreatorId';
      yield serializers.serialize(
        object.creatorId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastModificationTime != null) {
      yield r'LastModificationTime';
      yield serializers.serialize(
        object.lastModificationTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastModifierId != null) {
      yield r'LastModifierId';
      yield serializers.serialize(
        object.lastModifierId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isDeleted != null) {
      yield r'IsDeleted';
      yield serializers.serialize(
        object.isDeleted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.deleterId != null) {
      yield r'DeleterId';
      yield serializers.serialize(
        object.deleterId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.deletionTime != null) {
      yield r'DeletionTime';
      yield serializers.serialize(
        object.deletionTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.tenant != null) {
      yield r'Tenant';
      yield serializers.serialize(
        object.tenant,
        specifiedType: const FullType(BdayaBLCIRMTenantsAppTenantDto),
      );
    }
    if (object.document != null) {
      yield r'Document';
      yield serializers.serialize(
        object.document,
        specifiedType: const FullType(BdayaBLCIRMStateDocumentDto),
      );
    }
    if (object.person != null) {
      yield r'Person';
      yield serializers.serialize(
        object.person,
        specifiedType: const FullType(BdayaBLCIRMStatePersonDto),
      );
    }
    if (object.physicalCopies != null) {
      yield r'PhysicalCopies';
      yield serializers.serialize(
        object.physicalCopies,
        specifiedType: const FullType(int),
      );
    }
    if (object.returnedCopies != null) {
      yield r'ReturnedCopies';
      yield serializers.serialize(
        object.returnedCopies,
        specifiedType: const FullType(int),
      );
    }
    if (object.remainingCopies != null) {
      yield r'RemainingCopies';
      yield serializers.serialize(
        object.remainingCopies,
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
    if (object.actualReturnDate != null) {
      yield r'ActualReturnDate';
      yield serializers.serialize(
        object.actualReturnDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStateFullLoanDetailsDto object, {
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
    required BdayaBLCIRMStateFullLoanDetailsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'CreationTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.creationTime = valueDes;
          break;
        case r'CreatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.creatorId = valueDes;
          break;
        case r'LastModificationTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastModificationTime = valueDes;
          break;
        case r'LastModifierId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastModifierId = valueDes;
          break;
        case r'IsDeleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDeleted = valueDes;
          break;
        case r'DeleterId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deleterId = valueDes;
          break;
        case r'DeletionTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.deletionTime = valueDes;
          break;
        case r'Tenant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMTenantsAppTenantDto),
          ) as BdayaBLCIRMTenantsAppTenantDto;
          result.tenant.replace(valueDes);
          break;
        case r'Document':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMStateDocumentDto),
          ) as BdayaBLCIRMStateDocumentDto;
          result.document = valueDes;
          break;
        case r'Person':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMStatePersonDto),
          ) as BdayaBLCIRMStatePersonDto;
          result.person = valueDes;
          break;
        case r'PhysicalCopies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.physicalCopies = valueDes;
          break;
        case r'ReturnedCopies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.returnedCopies = valueDes;
          break;
        case r'RemainingCopies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.remainingCopies = valueDes;
          break;
        case r'ReturnDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.returnDate = valueDes;
          break;
        case r'ActualReturnDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.actualReturnDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMStateFullLoanDetailsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStateFullLoanDetailsDtoBuilder();
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
