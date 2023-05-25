//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_create_document_dto.g.dart';

/// BdayaBLCIRMStateCreateDocumentDto
///
/// Properties:
/// * [title]
/// * [coverImageContentHashes]
/// * [contentHashes]
/// * [authors]
/// * [metadata]
/// * [language6391Code]
/// * [extraOwners]
@BuiltValue()
abstract class BdayaBLCIRMStateCreateDocumentDto
    implements
        Built<BdayaBLCIRMStateCreateDocumentDto,
            BdayaBLCIRMStateCreateDocumentDtoBuilder> {
  @BuiltValueField(wireName: r'Title')
  String? get title;

  @BuiltValueField(wireName: r'CoverImageContentHashes')
  BuiltSet<String>? get coverImageContentHashes;

  @BuiltValueField(wireName: r'ContentHashes')
  BuiltSet<String>? get contentHashes;

  @BuiltValueField(wireName: r'Authors')
  BuiltSet<String>? get authors;

  @BuiltValueField(wireName: r'Metadata')
  BuiltMap<String, JsonObject?>? get metadata;

  @BuiltValueField(wireName: r'Language639_1Code')
  String? get language6391Code;

  @BuiltValueField(wireName: r'ExtraOwners')
  BuiltSet<String>? get extraOwners;

  BdayaBLCIRMStateCreateDocumentDto._();

  factory BdayaBLCIRMStateCreateDocumentDto(
          [void updates(BdayaBLCIRMStateCreateDocumentDtoBuilder b)]) =
      _$BdayaBLCIRMStateCreateDocumentDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMStateCreateDocumentDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStateCreateDocumentDto> get serializer =>
      _$BdayaBLCIRMStateCreateDocumentDtoSerializer();
}

class _$BdayaBLCIRMStateCreateDocumentDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateCreateDocumentDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStateCreateDocumentDto,
    _$BdayaBLCIRMStateCreateDocumentDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMStateCreateDocumentDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStateCreateDocumentDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'Title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.coverImageContentHashes != null) {
      yield r'CoverImageContentHashes';
      yield serializers.serialize(
        object.coverImageContentHashes,
        specifiedType: const FullType.nullable(BuiltSet, [FullType(String)]),
      );
    }
    if (object.contentHashes != null) {
      yield r'ContentHashes';
      yield serializers.serialize(
        object.contentHashes,
        specifiedType: const FullType.nullable(BuiltSet, [FullType(String)]),
      );
    }
    if (object.authors != null) {
      yield r'Authors';
      yield serializers.serialize(
        object.authors,
        specifiedType: const FullType.nullable(BuiltSet, [FullType(String)]),
      );
    }
    if (object.metadata != null) {
      yield r'Metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.language6391Code != null) {
      yield r'Language639_1Code';
      yield serializers.serialize(
        object.language6391Code,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.extraOwners != null) {
      yield r'ExtraOwners';
      yield serializers.serialize(
        object.extraOwners,
        specifiedType: const FullType.nullable(BuiltSet, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStateCreateDocumentDto object, {
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
    required BdayaBLCIRMStateCreateDocumentDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'CoverImageContentHashes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.coverImageContentHashes.replace(valueDes);
          break;
        case r'ContentHashes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.contentHashes.replace(valueDes);
          break;
        case r'Authors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.authors.replace(valueDes);
          break;
        case r'Metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.metadata.replace(valueDes);
          break;
        case r'Language639_1Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language6391Code = valueDes;
          break;
        case r'ExtraOwners':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.extraOwners.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMStateCreateDocumentDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStateCreateDocumentDtoBuilder();
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
