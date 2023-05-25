//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_document_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_dtos_paged_result_dto1_bdaya_blcirm_state_document_dto.g.dart';

/// ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto
///
/// Properties:
/// * [items]
/// * [totalCount]
@BuiltValue()
abstract class ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto
    implements
        Built<ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto,
            ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder> {
  @BuiltValueField(wireName: r'Items')
  BuiltList<BdayaBLCIRMStateDocumentDto>? get items;

  @BuiltValueField(wireName: r'TotalCount')
  int? get totalCount;

  ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto._();

  factory ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto(
          [void updates(
              ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder
                  b)]) =
      _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto>
      get serializer =>
          _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoSerializer();
}

class _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto,
    _$ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto
  ];

  @override
  final String wireName =
      r'ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'Items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(BdayaBLCIRMStateDocumentDto)]),
      );
    }
    if (object.totalCount != null) {
      yield r'TotalCount';
      yield serializers.serialize(
        object.totalCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto object, {
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
    required ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(BdayaBLCIRMStateDocumentDto)]),
          ) as BuiltList<BdayaBLCIRMStateDocumentDto>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        case r'TotalCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationDtosPagedResultDto1BdayaBLCIRMStateDocumentDtoBuilder();
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
