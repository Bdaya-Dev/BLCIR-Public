//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/bdaya_blcirm_meili_search_meili_search_index_names.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bdaya_blcirm_tenants_meili_search_config_dto.g.dart';

/// BdayaBLCIRMTenantsMeiliSearchConfigDto
///
/// Properties:
/// * [url]
/// * [apiKey]
/// * [indexNames]
@BuiltValue()
abstract class BdayaBLCIRMTenantsMeiliSearchConfigDto
    implements
        Built<BdayaBLCIRMTenantsMeiliSearchConfigDto,
            BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder> {
  @BuiltValueField(wireName: r'Url')
  String? get url;

  @BuiltValueField(wireName: r'ApiKey')
  String? get apiKey;

  @BuiltValueField(wireName: r'IndexNames')
  BdayaBLCIRMMeiliSearchMeiliSearchIndexNames? get indexNames;

  BdayaBLCIRMTenantsMeiliSearchConfigDto._();

  factory BdayaBLCIRMTenantsMeiliSearchConfigDto(
          [void updates(BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder b)]) =
      _$BdayaBLCIRMTenantsMeiliSearchConfigDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BdayaBLCIRMTenantsMeiliSearchConfigDto> get serializer =>
      _$BdayaBLCIRMTenantsMeiliSearchConfigDtoSerializer();
}

class _$BdayaBLCIRMTenantsMeiliSearchConfigDtoSerializer
    implements PrimitiveSerializer<BdayaBLCIRMTenantsMeiliSearchConfigDto> {
  @override
  final Iterable<Type> types = const [
    BdayaBLCIRMTenantsMeiliSearchConfigDto,
    _$BdayaBLCIRMTenantsMeiliSearchConfigDto
  ];

  @override
  final String wireName = r'BdayaBLCIRMTenantsMeiliSearchConfigDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BdayaBLCIRMTenantsMeiliSearchConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'Url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.apiKey != null) {
      yield r'ApiKey';
      yield serializers.serialize(
        object.apiKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.indexNames != null) {
      yield r'IndexNames';
      yield serializers.serialize(
        object.indexNames,
        specifiedType:
            const FullType(BdayaBLCIRMMeiliSearchMeiliSearchIndexNames),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BdayaBLCIRMTenantsMeiliSearchConfigDto object, {
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
    required BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'ApiKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiKey = valueDes;
          break;
        case r'IndexNames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BdayaBLCIRMMeiliSearchMeiliSearchIndexNames),
          ) as BdayaBLCIRMMeiliSearchMeiliSearchIndexNames;
          result.indexNames.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BdayaBLCIRMTenantsMeiliSearchConfigDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BdayaBLCIRMTenantsMeiliSearchConfigDtoBuilder();
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
