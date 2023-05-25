//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_configurations_clock_dto.g.dart';

/// ApplicationConfigurationsClockDto
///
/// Properties:
/// * [kind]
@BuiltValue()
abstract class ApplicationConfigurationsClockDto
    implements
        Built<ApplicationConfigurationsClockDto,
            ApplicationConfigurationsClockDtoBuilder> {
  @BuiltValueField(wireName: r'Kind')
  String? get kind;

  ApplicationConfigurationsClockDto._();

  factory ApplicationConfigurationsClockDto(
          [void updates(ApplicationConfigurationsClockDtoBuilder b)]) =
      _$ApplicationConfigurationsClockDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApplicationConfigurationsClockDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationConfigurationsClockDto> get serializer =>
      _$ApplicationConfigurationsClockDtoSerializer();
}

class _$ApplicationConfigurationsClockDtoSerializer
    implements PrimitiveSerializer<ApplicationConfigurationsClockDto> {
  @override
  final Iterable<Type> types = const [
    ApplicationConfigurationsClockDto,
    _$ApplicationConfigurationsClockDto
  ];

  @override
  final String wireName = r'ApplicationConfigurationsClockDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationConfigurationsClockDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kind != null) {
      yield r'Kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationConfigurationsClockDto object, {
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
    required ApplicationConfigurationsClockDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationConfigurationsClockDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplicationConfigurationsClockDtoBuilder();
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
