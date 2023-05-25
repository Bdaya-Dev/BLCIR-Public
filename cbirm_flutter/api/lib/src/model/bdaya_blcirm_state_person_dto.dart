//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_state_person_info_dto.dart';
import 'package:blcirm_api/src/model/bdaya_blcirm_state_author_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_person_dto.g.dart';

/// BdayaBLCIRMStatePersonDto
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
/// * [info]
/// * [type]
@BuiltValue(instantiable: false)
abstract class BdayaBLCIRMStatePersonDto {
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

  @BuiltValueField(wireName: r'Info')
  BdayaBLCIRMStatePersonInfoDto? get info;

  @BuiltValueField(wireName: r'type')
  String? get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'author': BdayaBLCIRMStateAuthorDto,
    r'person': $BdayaBLCIRMStatePersonDto,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStatePersonDto> get serializer =>
      _$BdayaBLCIRMStatePersonDtoSerializer();
}

extension BdayaBLCIRMStatePersonDtoDiscriminatorExt
    on BdayaBLCIRMStatePersonDto {
  String get discriminatorValue {
    if (this is BdayaBLCIRMStateAuthorDto) {
      return r'author';
    }
    return r'person';
  }
}

extension BdayaBLCIRMStatePersonDtoBuilderDiscriminatorExt
    on BdayaBLCIRMStatePersonDtoBuilder {
  String get discriminatorValue {
    if (this is BdayaBLCIRMStateAuthorDtoBuilder) {
      return r'author';
    }
    return r'person';
  }
}

class _$BdayaBLCIRMStatePersonDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStatePersonDto> {
  @override
  final Iterable<Type> types = const [BdayaBLCIRMStatePersonDto];

  @override
  final String wireName = r'BdayaBLCIRMStatePersonDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStatePersonDto object, {
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
    BdayaBLCIRMStatePersonDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is BdayaBLCIRMStateAuthorDto) {
      return serializers.serialize(object,
          specifiedType: FullType(BdayaBLCIRMStateAuthorDto))!;
    }
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  BdayaBLCIRMStatePersonDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList
            .indexOf(BdayaBLCIRMStatePersonDto.discriminatorFieldName) +
        1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'author':
        return serializers.deserialize(serialized,
                specifiedType: FullType(BdayaBLCIRMStateAuthorDto))
            as BdayaBLCIRMStateAuthorDto;
      default:
        return serializers.deserialize(serialized,
                specifiedType: FullType($BdayaBLCIRMStatePersonDto))
            as $BdayaBLCIRMStatePersonDto;
    }
  }
}

/// a concrete implementation of [BdayaBLCIRMStatePersonDto], since [BdayaBLCIRMStatePersonDto] is not instantiable
@BuiltValue(instantiable: true)
abstract class $BdayaBLCIRMStatePersonDto
    implements
        BdayaBLCIRMStatePersonDto,
        Built<$BdayaBLCIRMStatePersonDto, $BdayaBLCIRMStatePersonDtoBuilder> {
  $BdayaBLCIRMStatePersonDto._();

  factory $BdayaBLCIRMStatePersonDto(
          [void Function($BdayaBLCIRMStatePersonDtoBuilder)? updates]) =
      _$$BdayaBLCIRMStatePersonDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($BdayaBLCIRMStatePersonDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$BdayaBLCIRMStatePersonDto> get serializer =>
      _$$BdayaBLCIRMStatePersonDtoSerializer();
}

class _$$BdayaBLCIRMStatePersonDtoSerializer
    implements PrimitiveSerializer<$BdayaBLCIRMStatePersonDto> {
  @override
  final Iterable<Type> types = const [
    $BdayaBLCIRMStatePersonDto,
    _$$BdayaBLCIRMStatePersonDto
  ];

  @override
  final String wireName = r'$BdayaBLCIRMStatePersonDto';

  @override
  Object serialize(
    Serializers serializers,
    $BdayaBLCIRMStatePersonDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(BdayaBLCIRMStatePersonDto))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BdayaBLCIRMStatePersonDtoBuilder result,
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
  $BdayaBLCIRMStatePersonDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $BdayaBLCIRMStatePersonDtoBuilder();
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
