//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_modeling_return_value_api_description_model.g.dart';

/// HttpModelingReturnValueApiDescriptionModel
///
/// Properties:
/// * [type]
/// * [typeSimple]
@BuiltValue()
abstract class HttpModelingReturnValueApiDescriptionModel
    implements
        Built<HttpModelingReturnValueApiDescriptionModel,
            HttpModelingReturnValueApiDescriptionModelBuilder> {
  @BuiltValueField(wireName: r'Type')
  String? get type;

  @BuiltValueField(wireName: r'TypeSimple')
  String? get typeSimple;

  HttpModelingReturnValueApiDescriptionModel._();

  factory HttpModelingReturnValueApiDescriptionModel(
          [void updates(HttpModelingReturnValueApiDescriptionModelBuilder b)]) =
      _$HttpModelingReturnValueApiDescriptionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HttpModelingReturnValueApiDescriptionModelBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpModelingReturnValueApiDescriptionModel>
      get serializer =>
          _$HttpModelingReturnValueApiDescriptionModelSerializer();
}

class _$HttpModelingReturnValueApiDescriptionModelSerializer
    implements PrimitiveSerializer<HttpModelingReturnValueApiDescriptionModel> {
  @override
  final Iterable<Type> types = const [
    HttpModelingReturnValueApiDescriptionModel,
    _$HttpModelingReturnValueApiDescriptionModel
  ];

  @override
  final String wireName = r'HttpModelingReturnValueApiDescriptionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpModelingReturnValueApiDescriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'Type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.typeSimple != null) {
      yield r'TypeSimple';
      yield serializers.serialize(
        object.typeSimple,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpModelingReturnValueApiDescriptionModel object, {
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
    required HttpModelingReturnValueApiDescriptionModelBuilder result,
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
        case r'TypeSimple':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.typeSimple = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpModelingReturnValueApiDescriptionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpModelingReturnValueApiDescriptionModelBuilder();
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
