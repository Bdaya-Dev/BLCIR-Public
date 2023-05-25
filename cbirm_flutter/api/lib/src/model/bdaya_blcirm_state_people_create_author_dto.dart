//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_person_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_people_create_person_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_people_create_author_dto.g.dart';

/// BdayaBLCIRMStatePeopleCreateAuthorDto
///
/// Properties:
/// * [info]
/// * [type]
@BuiltValue()
abstract class BdayaBLCIRMStatePeopleCreateAuthorDto
    implements
        BdayaBLCIRMStatePeopleCreatePersonDto,
        Built<BdayaBLCIRMStatePeopleCreateAuthorDto,
            BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder> {
  BdayaBLCIRMStatePeopleCreateAuthorDto._();

  factory BdayaBLCIRMStatePeopleCreateAuthorDto(
          [void updates(BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder b)]) =
      _$BdayaBLCIRMStatePeopleCreateAuthorDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder b) =>
      b..type = b.discriminatorValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStatePeopleCreateAuthorDto> get serializer =>
      _$BdayaBLCIRMStatePeopleCreateAuthorDtoSerializer();
}

class _$BdayaBLCIRMStatePeopleCreateAuthorDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStatePeopleCreateAuthorDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStatePeopleCreateAuthorDto,
    _$BdayaBLCIRMStatePeopleCreateAuthorDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMStatePeopleCreateAuthorDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStatePeopleCreateAuthorDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.info != null) {
      yield r'Info';
      yield serializers.serialize(
        object.info,
        specifiedType: const FullType(BdayaBLCIRMStatePersonInfoDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStatePeopleCreateAuthorDto object, {
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
    required BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'Info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMStatePersonInfoDto),
          ) as BdayaBLCIRMStatePersonInfoDto;
          result.info.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMStatePeopleCreateAuthorDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder();
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
