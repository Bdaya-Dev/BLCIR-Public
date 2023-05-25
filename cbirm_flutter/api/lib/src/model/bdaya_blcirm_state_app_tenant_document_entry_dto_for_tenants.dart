//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_document_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_app_tenant_document_entry_dto_for_tenants.g.dart';

/// BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants
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
/// * [document]
/// * [ownedQuantity]
/// * [loanedQuantity]
/// * [availableQuantity]
/// * [isAvailableOnline]
@BuiltValue()
abstract class BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants
    implements
        Built<BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants,
            BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenantsBuilder> {
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

  @BuiltValueField(wireName: r'Document')
  BdayaBLCIRMStateDocumentDto? get document;

  @BuiltValueField(wireName: r'OwnedQuantity')
  int? get ownedQuantity;

  @BuiltValueField(wireName: r'LoanedQuantity')
  int? get loanedQuantity;

  @BuiltValueField(wireName: r'AvailableQuantity')
  int? get availableQuantity;

  @BuiltValueField(wireName: r'IsAvailableOnline')
  bool? get isAvailableOnline;

  BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants._();

  factory BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants(
          [void updates(
              BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenantsBuilder b)]) =
      _$BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenantsBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants>
      get serializer =>
          _$BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenantsSerializer();
}

class _$BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenantsSerializer
    implements
        PrimitiveSerializer<
            BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants,
    _$BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants
  ];

  @override
  final String wireName =
      r'BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants object, {
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
    if (object.document != null) {
      yield r'Document';
      yield serializers.serialize(
        object.document,
        specifiedType: const FullType(BdayaBLCIRMStateDocumentDto),
      );
    }
    if (object.ownedQuantity != null) {
      yield r'OwnedQuantity';
      yield serializers.serialize(
        object.ownedQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.loanedQuantity != null) {
      yield r'LoanedQuantity';
      yield serializers.serialize(
        object.loanedQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.availableQuantity != null) {
      yield r'AvailableQuantity';
      yield serializers.serialize(
        object.availableQuantity,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants object, {
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
    required BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenantsBuilder result,
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
        case r'Document':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMStateDocumentDto),
          ) as BdayaBLCIRMStateDocumentDto;
          result.document = valueDes;
          break;
        case r'OwnedQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ownedQuantity = valueDes;
          break;
        case r'LoanedQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.loanedQuantity = valueDes;
          break;
        case r'AvailableQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.availableQuantity = valueDes;
          break;
        case r'IsAvailableOnline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAvailableOnline = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenants deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStateAppTenantDocumentEntryDtoForTenantsBuilder();
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
