//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_application_auth_configuration_dto.g.dart';

/// ApplicationConfigurationsApplicationAuthConfigurationDto
///
/// Properties:
/// * [grantedPolicies]
@BuiltValue()
abstract class ApplicationConfigurationsApplicationAuthConfigurationDto
    implements
        Built<ApplicationConfigurationsApplicationAuthConfigurationDto,
            ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder> {
  @BuiltValueField(wireName: r'GrantedPolicies')
  BuiltMap<String, bool?>? get grantedPolicies;

  ApplicationConfigurationsApplicationAuthConfigurationDto._();

  factory ApplicationConfigurationsApplicationAuthConfigurationDto(
      [void updates(
          ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder
              b)]) = _$ApplicationConfigurationsApplicationAuthConfigurationDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsApplicationAuthConfigurationDto>
      get serializer =>
          _$ApplicationConfigurationsApplicationAuthConfigurationDtoSerializer();
}

class _$ApplicationConfigurationsApplicationAuthConfigurationDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsApplicationAuthConfigurationDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsApplicationAuthConfigurationDto,
    _$ApplicationConfigurationsApplicationAuthConfigurationDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsApplicationAuthConfigurationDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsApplicationAuthConfigurationDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.grantedPolicies != null) {
      yield r'GrantedPolicies';
      yield serializers.serialize(
        object.grantedPolicies,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(bool)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsApplicationAuthConfigurationDto object, {
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
    required ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'GrantedPolicies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(bool)]),
          ) as BuiltMap<String, bool?>?;
          if (valueDes == null) continue;
          result.grantedPolicies.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsApplicationAuthConfigurationDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsApplicationAuthConfigurationDtoBuilder();
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
