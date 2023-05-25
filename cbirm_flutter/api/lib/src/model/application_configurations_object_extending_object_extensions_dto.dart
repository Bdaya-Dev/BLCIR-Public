//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/application_configurations_object_extending_extension_enum_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/application_configurations_object_extending_module_extension_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_object_extensions_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingObjectExtensionsDto
///
/// Properties:
/// * [modules]
/// * [enums]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingObjectExtensionsDto
    implements
        Built<ApplicationConfigurationsObjectExtendingObjectExtensionsDto,
            ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder> {
  @BuiltValueField(wireName: r'Modules')
  BuiltMap<String, ApplicationConfigurationsObjectExtendingModuleExtensionDto>?
      get modules;

  @BuiltValueField(wireName: r'Enums')
  BuiltMap<String, ApplicationConfigurationsObjectExtendingExtensionEnumDto>?
      get enums;

  ApplicationConfigurationsObjectExtendingObjectExtensionsDto._();

  factory ApplicationConfigurationsObjectExtendingObjectExtensionsDto(
          [void updates(
              ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsObjectExtendingObjectExtensionsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsObjectExtendingObjectExtensionsDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingObjectExtensionsDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingObjectExtensionsDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingObjectExtensionsDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingObjectExtensionsDto,
    _$ApplicationConfigurationsObjectExtendingObjectExtensionsDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingObjectExtensionsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingObjectExtensionsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.modules != null) {
      yield r'Modules';
      yield serializers.serialize(
        object.modules,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType(ApplicationConfigurationsObjectExtendingModuleExtensionDto)
        ]),
      );
    }
    if (object.enums != null) {
      yield r'Enums';
      yield serializers.serialize(
        object.enums,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType(ApplicationConfigurationsObjectExtendingExtensionEnumDto)
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingObjectExtensionsDto object, {
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
    required ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Modules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(
                  ApplicationConfigurationsObjectExtendingModuleExtensionDto)
            ]),
          ) as BuiltMap<String,
              ApplicationConfigurationsObjectExtendingModuleExtensionDto>?;
          if (valueDes == null) continue;
          result.modules.replace(valueDes);
          break;
        case r'Enums':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(ApplicationConfigurationsObjectExtendingExtensionEnumDto)
            ]),
          ) as BuiltMap<String,
              ApplicationConfigurationsObjectExtendingExtensionEnumDto>?;
          if (valueDes == null) continue;
          result.enums.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsObjectExtendingObjectExtensionsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingObjectExtensionsDtoBuilder();
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
