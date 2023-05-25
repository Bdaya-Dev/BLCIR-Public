//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_person_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_people_create_author_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_people_create_person_dto.g.dart';

/// BdayaBLCIRMStatePeopleCreatePersonDto
///
/// Properties:
/// * [info]
/// * [type]
@BuiltValue(instantiable: false)
abstract class BdayaBLCIRMStatePeopleCreatePersonDto {
  @BuiltValueField(wireName: r'Info')
  BdayaBLCIRMStatePersonInfoDto? get info;

  @BuiltValueField(wireName: r'type')
  String? get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'author': BdayaBLCIRMStatePeopleCreateAuthorDto,
    r'person': $BdayaBLCIRMStatePeopleCreatePersonDto,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStatePeopleCreatePersonDto> get serializer =>
      _$BdayaBLCIRMStatePeopleCreatePersonDtoSerializer();
}

extension BdayaBLCIRMStatePeopleCreatePersonDtoDiscriminatorExt
    on BdayaBLCIRMStatePeopleCreatePersonDto {
  String get discriminatorValue {
    if (this is BdayaBLCIRMStatePeopleCreateAuthorDto) {
      return r'author';
    }
    return r'person';
  }
}

extension BdayaBLCIRMStatePeopleCreatePersonDtoBuilderDiscriminatorExt
    on BdayaBLCIRMStatePeopleCreatePersonDtoBuilder {
  String get discriminatorValue {
    if (this is BdayaBLCIRMStatePeopleCreateAuthorDtoBuilder) {
      return r'author';
    }
    return r'person';
  }
}

class _$BdayaBLCIRMStatePeopleCreatePersonDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStatePeopleCreatePersonDto> {
  @override
  final Iterable<Type> types = const [BdayaBLCIRMStatePeopleCreatePersonDto];

  @override
  final String wireName = r'BdayaBLCIRMStatePeopleCreatePersonDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStatePeopleCreatePersonDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.info != null) {
      yield r'Info';
      yield serializers.serialize(
        object.info,
        specifiedType: const FullType(BdayaBLCIRMStatePersonInfoDto),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStatePeopleCreatePersonDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is BdayaBLCIRMStatePeopleCreateAuthorDto) {
      return serializers.serialize(object,
          specifiedType: FullType(BdayaBLCIRMStatePeopleCreateAuthorDto))!;
    }
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  BdayaBLCIRMStatePeopleCreatePersonDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(
            BdayaBLCIRMStatePeopleCreatePersonDto.discriminatorFieldName) +
        1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'author':
        return serializers.deserialize(serialized,
                specifiedType: FullType(BdayaBLCIRMStatePeopleCreateAuthorDto))
            as BdayaBLCIRMStatePeopleCreateAuthorDto;
      default:
        return serializers.deserialize(serialized,
                specifiedType: FullType($BdayaBLCIRMStatePeopleCreatePersonDto))
            as $BdayaBLCIRMStatePeopleCreatePersonDto;
    }
  }
}

/// a concrete implementation of [BdayaBLCIRMStatePeopleCreatePersonDto], since [BdayaBLCIRMStatePeopleCreatePersonDto] is not instantiable
@BuiltValue(instantiable: true)
abstract class $BdayaBLCIRMStatePeopleCreatePersonDto
    implements
        BdayaBLCIRMStatePeopleCreatePersonDto,
        Built<$BdayaBLCIRMStatePeopleCreatePersonDto,
            $BdayaBLCIRMStatePeopleCreatePersonDtoBuilder> {
  $BdayaBLCIRMStatePeopleCreatePersonDto._();

  factory $BdayaBLCIRMStatePeopleCreatePersonDto(
      [void Function($BdayaBLCIRMStatePeopleCreatePersonDtoBuilder)?
          updates]) = _$$BdayaBLCIRMStatePeopleCreatePersonDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($BdayaBLCIRMStatePeopleCreatePersonDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$BdayaBLCIRMStatePeopleCreatePersonDto> get serializer =>
      _$$BdayaBLCIRMStatePeopleCreatePersonDtoSerializer();
}

class _$$BdayaBLCIRMStatePeopleCreatePersonDtoSerializer
    implements PrimitiveSerializer<$BdayaBLCIRMStatePeopleCreatePersonDto> {
  @override
  final Iterable<Type> types = const [
    $BdayaBLCIRMStatePeopleCreatePersonDto,
    _$$BdayaBLCIRMStatePeopleCreatePersonDto
  ];

  @override
  final String wireName = r'$BdayaBLCIRMStatePeopleCreatePersonDto';

  @override
  Object serialize(
    Serializers serializers,
    $BdayaBLCIRMStatePeopleCreatePersonDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(BdayaBLCIRMStatePeopleCreatePersonDto))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BdayaBLCIRMStatePeopleCreatePersonDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BdayaBLCIRMStatePersonInfoDto),
          ) as BdayaBLCIRMStatePersonInfoDto;
          result.info.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $BdayaBLCIRMStatePeopleCreatePersonDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $BdayaBLCIRMStatePeopleCreatePersonDtoBuilder();
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
