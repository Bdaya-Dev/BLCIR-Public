//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/http_modeling_interface_method_api_description_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_modeling_controller_interface_api_description_model.g.dart';

/// HttpModelingControllerInterfaceApiDescriptionModel
///
/// Properties:
/// * [type]
/// * [name]
/// * [methods]
@BuiltValue()
abstract class HttpModelingControllerInterfaceApiDescriptionModel
    implements
        Built<HttpModelingControllerInterfaceApiDescriptionModel,
            HttpModelingControllerInterfaceApiDescriptionModelBuilder> {
  @BuiltValueField(wireName: r'Type')
  String? get type;

  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'Methods')
  BuiltList<HttpModelingInterfaceMethodApiDescriptionModel>? get methods;

  HttpModelingControllerInterfaceApiDescriptionModel._();

  factory HttpModelingControllerInterfaceApiDescriptionModel(
          [void updates(
              HttpModelingControllerInterfaceApiDescriptionModelBuilder b)]) =
      _$HttpModelingControllerInterfaceApiDescriptionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          HttpModelingControllerInterfaceApiDescriptionModelBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpModelingControllerInterfaceApiDescriptionModel>
      get serializer =>
          _$HttpModelingControllerInterfaceApiDescriptionModelSerializer();
}

class _$HttpModelingControllerInterfaceApiDescriptionModelSerializer
    implements
        PrimitiveSerializer<
            HttpModelingControllerInterfaceApiDescriptionModel> {
  @override
  final Iterable<Type> types = const [
    HttpModelingControllerInterfaceApiDescriptionModel,
    _$HttpModelingControllerInterfaceApiDescriptionModel
  ];

  @override
  final String wireName = r'HttpModelingControllerInterfaceApiDescriptionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpModelingControllerInterfaceApiDescriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'Type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.methods != null) {
      yield r'Methods';
      yield serializers.serialize(
        object.methods,
        specifiedType: const FullType.nullable(BuiltList,
            [FullType(HttpModelingInterfaceMethodApiDescriptionModel)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpModelingControllerInterfaceApiDescriptionModel object, {
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
    required HttpModelingControllerInterfaceApiDescriptionModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'Methods':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList,
                [FullType(HttpModelingInterfaceMethodApiDescriptionModel)]),
          ) as BuiltList<HttpModelingInterfaceMethodApiDescriptionModel>?;
          if (valueDes == null) continue;
          result.methods.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpModelingControllerInterfaceApiDescriptionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpModelingControllerInterfaceApiDescriptionModelBuilder();
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
