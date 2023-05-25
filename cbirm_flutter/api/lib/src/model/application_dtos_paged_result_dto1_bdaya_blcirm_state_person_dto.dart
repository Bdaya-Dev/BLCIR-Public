//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_person_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_dtos_paged_result_dto1_bdaya_blcirm_state_person_dto.g.dart';

/// ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto
///
/// Properties:
/// * [items]
/// * [totalCount]
@BuiltValue()
abstract class ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto
    implements
        Built<ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto,
            ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder> {
  @BuiltValueField(wireName: r'Items')
  BuiltList<BdayaBLCIRMStatePersonDto>? get items;

  @BuiltValueField(wireName: r'TotalCount')
  int? get totalCount;

  ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto._();

  factory ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto(
      [void updates(
          ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder
              b)]) = _$ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto>
      get serializer =>
          _$ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoSerializer();
}

class _$ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto,
    _$ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto
  ];

  @override
  final String wireName =
      r'ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'Items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(BdayaBLCIRMStatePersonDto)]),
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
    ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto object, {
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
    required ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder
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
                BuiltList, [FullType(BdayaBLCIRMStatePersonDto)]),
          ) as BuiltList<BdayaBLCIRMStatePersonDto>?;
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
  ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationDtosPagedResultDto1BdayaBLCIRMStatePersonDtoBuilder();
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
