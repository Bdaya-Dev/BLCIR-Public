//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/validation_string_values_i_string_value_type.dart';
import 'package:blcirm_api/src/model/feature_management_feature_provider_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feature_management_feature_dto.g.dart';

/// FeatureManagementFeatureDto
///
/// Properties:
/// * [name]
/// * [displayName]
/// * [value]
/// * [provider]
/// * [description]
/// * [valueType]
/// * [depth]
/// * [parentName]
@BuiltValue()
abstract class FeatureManagementFeatureDto
    implements
        Built<FeatureManagementFeatureDto, FeatureManagementFeatureDtoBuilder> {
  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'DisplayName')
  String? get displayName;

  @BuiltValueField(wireName: r'Value')
  String? get value;

  @BuiltValueField(wireName: r'Provider')
  FeatureManagementFeatureProviderDto? get provider;

  @BuiltValueField(wireName: r'Description')
  String? get description;

  @BuiltValueField(wireName: r'ValueType')
  ValidationStringValuesIStringValueType? get valueType;

  @BuiltValueField(wireName: r'Depth')
  int? get depth;

  @BuiltValueField(wireName: r'ParentName')
  String? get parentName;

  FeatureManagementFeatureDto._();

  factory FeatureManagementFeatureDto(
          [void updates(FeatureManagementFeatureDtoBuilder b)]) =
      _$FeatureManagementFeatureDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeatureManagementFeatureDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeatureManagementFeatureDto> get serializer =>
      _$FeatureManagementFeatureDtoSerializer();
}

class _$FeatureManagementFeatureDtoSerializer
    implements PrimitiveSerializer<FeatureManagementFeatureDto> {
  @override
  final Iterable<Type> types = const [
    FeatureManagementFeatureDto,
    _$FeatureManagementFeatureDto
  ];

  @override
  final String wireName = r'FeatureManagementFeatureDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeatureManagementFeatureDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.displayName != null) {
      yield r'DisplayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.value != null) {
      yield r'Value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.provider != null) {
      yield r'Provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType(FeatureManagementFeatureProviderDto),
      );
    }
    if (object.description != null) {
      yield r'Description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.valueType != null) {
      yield r'ValueType';
      yield serializers.serialize(
        object.valueType,
        specifiedType: const FullType(ValidationStringValuesIStringValueType),
      );
    }
    if (object.depth != null) {
      yield r'Depth';
      yield serializers.serialize(
        object.depth,
        specifiedType: const FullType(int),
      );
    }
    if (object.parentName != null) {
      yield r'ParentName';
      yield serializers.serialize(
        object.parentName,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FeatureManagementFeatureDto object, {
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
    required FeatureManagementFeatureDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'DisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'Value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'Provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FeatureManagementFeatureProviderDto),
          ) as FeatureManagementFeatureProviderDto;
          result.provider.replace(valueDes);
          break;
        case r'Description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'ValueType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ValidationStringValuesIStringValueType),
          ) as ValidationStringValuesIStringValueType;
          result.valueType.replace(valueDes);
          break;
        case r'Depth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.depth = valueDes;
          break;
        case r'ParentName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.parentName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FeatureManagementFeatureDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeatureManagementFeatureDtoBuilder();
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
