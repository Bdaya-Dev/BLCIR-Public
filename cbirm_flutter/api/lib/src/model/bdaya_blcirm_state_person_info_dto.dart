//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_state_person_info_dto.g.dart';

/// BdayaBLCIRMStatePersonInfoDto
///
/// Properties:
/// * [name]
/// * [countryCodeIso3166]
/// * [nationalId]
/// * [birthday]
/// * [metadata]
@BuiltValue()
abstract class BdayaBLCIRMStatePersonInfoDto
    implements
        Built<BdayaBLCIRMStatePersonInfoDto,
            BdayaBLCIRMStatePersonInfoDtoBuilder> {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'CountryCodeIso3166')
  String? get countryCodeIso3166;

  @BuiltValueField(wireName: r'NationalId')
  String? get nationalId;

  @BuiltValueField(wireName: r'Birthday')
  DateTime? get birthday;

  @BuiltValueField(wireName: r'Metadata')
  BuiltMap<String, JsonObject?>? get metadata;

  BdayaBLCIRMStatePersonInfoDto._();

  factory BdayaBLCIRMStatePersonInfoDto(
          [void updates(BdayaBLCIRMStatePersonInfoDtoBuilder b)]) =
      _$BdayaBLCIRMStatePersonInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMStatePersonInfoDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMStatePersonInfoDto> get serializer =>
      _$BdayaBLCIRMStatePersonInfoDtoSerializer();
}

class _$BdayaBLCIRMStatePersonInfoDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStatePersonInfoDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMStatePersonInfoDto,
    _$BdayaBLCIRMStatePersonInfoDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMStatePersonInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMStatePersonInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.countryCodeIso3166 != null) {
      yield r'CountryCodeIso3166';
      yield serializers.serialize(
        object.countryCodeIso3166,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nationalId != null) {
      yield r'NationalId';
      yield serializers.serialize(
        object.nationalId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.birthday != null) {
      yield r'Birthday';
      yield serializers.serialize(
        object.birthday,
        specifiedType: const FullType.nullable(DateTime),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMStatePersonInfoDto object, {
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
    required BdayaBLCIRMStatePersonInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'CountryCodeIso3166':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.countryCodeIso3166 = valueDes;
          break;
        case r'NationalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nationalId = valueDes;
          break;
        case r'Birthday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.birthday = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMStatePersonInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMStatePersonInfoDtoBuilder();
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
