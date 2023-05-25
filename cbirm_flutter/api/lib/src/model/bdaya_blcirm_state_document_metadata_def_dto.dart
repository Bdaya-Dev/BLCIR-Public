//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_document_metadata_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_document_metadata_def_dto.g.dart';

/// BdayaBLCIRMStateDocumentMetadataDefDto
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
/// * [type]
/// * [title]
/// * [description]
/// * [isSearchable]
/// * [isFilterable]
/// * [isFacet]
/// * [disableTypoTolerance]
@BuiltValue()
abstract class BdayaBLCIRMStateDocumentMetadataDefDto
    implements
        Built<BdayaBLCIRMStateDocumentMetadataDefDto,
            BdayaBLCIRMStateDocumentMetadataDefDtoBuilder> {
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

  @BuiltValueField(wireName: r'Type')
  BdayaBLCIRMStateDocumentMetadataType? get type;
  // enum typeEnum {  0,  1,  2,  3,  };

  @BuiltValueField(wireName: r'Title')
  String? get title;

  @BuiltValueField(wireName: r'Description')
  String? get description;

  @BuiltValueField(wireName: r'IsSearchable')
  bool? get isSearchable;

  @BuiltValueField(wireName: r'IsFilterable')
  bool? get isFilterable;

  @BuiltValueField(wireName: r'IsFacet')
  bool? get isFacet;

  @BuiltValueField(wireName: r'DisableTypoTolerance')
  bool? get disableTypoTolerance;

  BdayaBLCIRMStateDocumentMetadataDefDto._();

  factory BdayaBLCIRMStateDocumentMetadataDefDto(
          [void updates(BdayaBLCIRMStateDocumentMetadataDefDtoBuilder b)]) =
      _$BdayaBLCIRMStateDocumentMetadataDefDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMStateDocumentMetadataDefDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateDocumentMetadataDefDto> get serializer =>
      _$BdayaBLCIRMStateDocumentMetadataDefDtoSerializer();
}

class _$BdayaBLCIRMStateDocumentMetadataDefDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateDocumentMetadataDefDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStateDocumentMetadataDefDto,
    _$BdayaBLCIRMStateDocumentMetadataDefDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMStateDocumentMetadataDefDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateDocumentMetadataDefDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'Id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
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
    if (object.type != null) {
      yield r'Type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(BdayaBLCIRMStateDocumentMetadataType),
      );
    }
    if (object.title != null) {
      yield r'Title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'Description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isSearchable != null) {
      yield r'IsSearchable';
      yield serializers.serialize(
        object.isSearchable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isFilterable != null) {
      yield r'IsFilterable';
      yield serializers.serialize(
        object.isFilterable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isFacet != null) {
      yield r'IsFacet';
      yield serializers.serialize(
        object.isFacet,
        specifiedType: const FullType(bool),
      );
    }
    if (object.disableTypoTolerance != null) {
      yield r'DisableTypoTolerance';
      yield serializers.serialize(
        object.disableTypoTolerance,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStateDocumentMetadataDefDto object, {
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
    required BdayaBLCIRMStateDocumentMetadataDefDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
        case r'Type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMStateDocumentMetadataType),
          ) as BdayaBLCIRMStateDocumentMetadataType;
          result.type = valueDes;
          break;
        case r'Title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'Description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'IsSearchable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSearchable = valueDes;
          break;
        case r'IsFilterable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFilterable = valueDes;
          break;
        case r'IsFacet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFacet = valueDes;
          break;
        case r'DisableTypoTolerance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.disableTypoTolerance = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMStateDocumentMetadataDefDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStateDocumentMetadataDefDtoBuilder();
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
