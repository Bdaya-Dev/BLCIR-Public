//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'http_remote_service_validation_error_info.g.dart';

/// HttpRemoteServiceValidationErrorInfo
///
/// Properties:
/// * [message]
/// * [members]
@BuiltValue()
abstract class HttpRemoteServiceValidationErrorInfo
    implements
        Built<HttpRemoteServiceValidationErrorInfo,
            HttpRemoteServiceValidationErrorInfoBuilder> {
  @BuiltValueField(wireName: r'Message')
  String? get message;

  @BuiltValueField(wireName: r'Members')
  BuiltList<String>? get members;

  HttpRemoteServiceValidationErrorInfo._();

  factory HttpRemoteServiceValidationErrorInfo(
          [void updates(HttpRemoteServiceValidationErrorInfoBuilder b)]) =
      _$HttpRemoteServiceValidationErrorInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HttpRemoteServiceValidationErrorInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HttpRemoteServiceValidationErrorInfo> get serializer =>
      _$HttpRemoteServiceValidationErrorInfoSerializer();
}

class _$HttpRemoteServiceValidationErrorInfoSerializer
    implements PrimitiveSerializer<HttpRemoteServiceValidationErrorInfo> {
  @override
  final Iterable<Type> types = const [
    HttpRemoteServiceValidationErrorInfo,
    _$HttpRemoteServiceValidationErrorInfo
  ];

  @override
  final String wireName = r'HttpRemoteServiceValidationErrorInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HttpRemoteServiceValidationErrorInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'Message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.members != null) {
      yield r'Members';
      yield serializers.serialize(
        object.members,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HttpRemoteServiceValidationErrorInfo object, {
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
    required HttpRemoteServiceValidationErrorInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'Members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.members.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HttpRemoteServiceValidationErrorInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpRemoteServiceValidationErrorInfoBuilder();
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
