//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:blcirm_api/src/model/application_configurations_object_extending_extension_property_ui_table_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_object_extending_extension_property_ui_lookup_dto.dart';
import 'package:blcirm_api/src/model/application_configurations_object_extending_extension_property_ui_form_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_object_extending_extension_property_ui_dto.g.dart';

/// ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto
///
/// Properties:
/// * [onTable]
/// * [onCreateForm]
/// * [onEditForm]
/// * [lookup]
@BuiltValue()
abstract class ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto
    implements
        Built<ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto,
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder> {
  @BuiltValueField(wireName: r'OnTable')
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto?
      get onTable;

  @BuiltValueField(wireName: r'OnCreateForm')
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto?
      get onCreateForm;

  @BuiltValueField(wireName: r'OnEditForm')
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto?
      get onEditForm;

  @BuiltValueField(wireName: r'Lookup')
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto?
      get lookup;

  ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto._();

  factory ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto(
          [void updates(
              ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder
                  b)]) =
      _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder
              b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
          ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto>
      get serializer =>
          _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoSerializer();
}

class _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoSerializer
    implements
        PrimitiveSerializer<
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto,
    _$ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto
  ];

  @override
  final String wireName =
      r'ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.onTable != null) {
      yield r'OnTable';
      yield serializers.serialize(
        object.onTable,
        specifiedType: const FullType(
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto),
      );
    }
    if (object.onCreateForm != null) {
      yield r'OnCreateForm';
      yield serializers.serialize(
        object.onCreateForm,
        specifiedType: const FullType(
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto),
      );
    }
    if (object.onEditForm != null) {
      yield r'OnEditForm';
      yield serializers.serialize(
        object.onEditForm,
        specifiedType: const FullType(
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto),
      );
    }
    if (object.lookup != null) {
      yield r'Lookup';
      yield serializers.serialize(
        object.lookup,
        specifiedType: const FullType(
            ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto object, {
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
    required ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder
        result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'OnTable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto),
          ) as ApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto;
          result.onTable.replace(valueDes);
          break;
        case r'OnCreateForm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto),
          ) as ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto;
          result.onCreateForm.replace(valueDes);
          break;
        case r'OnEditForm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto),
          ) as ApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto;
          result.onEditForm.replace(valueDes);
          break;
        case r'Lookup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto),
          ) as ApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto;
          result.lookup.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsObjectExtendingExtensionPropertyUiDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApplicationConfigurationsObjectExtendingExtensionPropertyUiDtoBuilder();
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
