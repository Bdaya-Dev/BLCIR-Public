//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:blcirm_api/src/model/users_user_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_dtos_list_result_dto1_volo_abp_users_user_data.g.dart';

/// ApplicationDtosListResultDto1VoloAbpUsersUserData
///
/// Properties:
/// * [items]
@BuiltValue()
abstract class ApplicationDtosListResultDto1VoloAbpUsersUserData
    implements
        Built<ApplicationDtosListResultDto1VoloAbpUsersUserData,
            ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder> {
  @BuiltValueField(wireName: r'Items')
  BuiltList<UsersUserData>? get items;

  ApplicationDtosListResultDto1VoloAbpUsersUserData._();

  factory ApplicationDtosListResultDto1VoloAbpUsersUserData(
          [void updates(
              ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder b)]) =
      _$ApplicationDtosListResultDto1VoloAbpUsersUserData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplicationDtosListResultDto1VoloAbpUsersUserData>
      get serializer =>
          _$ApplicationDtosListResultDto1VoloAbpUsersUserDataSerializer();
}

class _$ApplicationDtosListResultDto1VoloAbpUsersUserDataSerializer
    implements
        PrimitiveSerializer<ApplicationDtosListResultDto1VoloAbpUsersUserData> {
  @override
  final Iterable<Type> types = const [
    ApplicationDtosListResultDto1VoloAbpUsersUserData,
    _$ApplicationDtosListResultDto1VoloAbpUsersUserData
  ];

  @override
  final String wireName = r'ApplicationDtosListResultDto1VoloAbpUsersUserData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplicationDtosListResultDto1VoloAbpUsersUserData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'Items';
      yield serializers.serialize(
        object.items,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(UsersUserData)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplicationDtosListResultDto1VoloAbpUsersUserData object, {
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
    required ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(UsersUserData)]),
          ) as BuiltList<UsersUserData>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApplicationDtosListResultDto1VoloAbpUsersUserData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplicationDtosListResultDto1VoloAbpUsersUserDataBuilder();
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
