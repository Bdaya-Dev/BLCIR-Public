//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identity_identity_user_create_or_update_dto_base.g.dart';

/// IdentityIdentityUserCreateOrUpdateDtoBase
///
/// Properties:
/// * [extraProperties]
/// * [userName]
/// * [name]
/// * [surname]
/// * [email]
/// * [phoneNumber]
/// * [isActive]
/// * [lockoutEnabled]
/// * [roleNames]
@BuiltValue(instantiable: false)
abstract class IdentityIdentityUserCreateOrUpdateDtoBase {
  @BuiltValueField(wireName: r'ExtraProperties')
  BuiltMap<String, JsonObject?>? get extraProperties;

  @BuiltValueField(wireName: r'UserName')
  String get userName;

  @BuiltValueField(wireName: r'Name')
  String? get name;

  @BuiltValueField(wireName: r'Surname')
  String? get surname;

  @BuiltValueField(wireName: r'Email')
  String get email;

  @BuiltValueField(wireName: r'PhoneNumber')
  String? get phoneNumber;

  @BuiltValueField(wireName: r'IsActive')
  bool? get isActive;

  @BuiltValueField(wireName: r'LockoutEnabled')
  bool? get lockoutEnabled;

  @BuiltValueField(wireName: r'RoleNames')
  BuiltList<String>? get roleNames;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdentityIdentityUserCreateOrUpdateDtoBase> get serializer =>
      _$IdentityIdentityUserCreateOrUpdateDtoBaseSerializer();
}

class _$IdentityIdentityUserCreateOrUpdateDtoBaseSerializer
    implements PrimitiveSerializer<IdentityIdentityUserCreateOrUpdateDtoBase> {
  @override
  final Iterable<Type> types = const [
    IdentityIdentityUserCreateOrUpdateDtoBase
  ];

  @override
  final String wireName = r'IdentityIdentityUserCreateOrUpdateDtoBase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdentityIdentityUserCreateOrUpdateDtoBase object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.extraProperties != null) {
      yield r'ExtraProperties';
      yield serializers.serialize(
        object.extraProperties,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    yield r'UserName';
    yield serializers.serialize(
      object.userName,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'Name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.surname != null) {
      yield r'Surname';
      yield serializers.serialize(
        object.surname,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'Email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.phoneNumber != null) {
      yield r'PhoneNumber';
      yield serializers.serialize(
        object.phoneNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isActive != null) {
      yield r'IsActive';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.lockoutEnabled != null) {
      yield r'LockoutEnabled';
      yield serializers.serialize(
        object.lockoutEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.roleNames != null) {
      yield r'RoleNames';
      yield serializers.serialize(
        object.roleNames,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IdentityIdentityUserCreateOrUpdateDtoBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  IdentityIdentityUserCreateOrUpdateDtoBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
            specifiedType: FullType($IdentityIdentityUserCreateOrUpdateDtoBase))
        as $IdentityIdentityUserCreateOrUpdateDtoBase;
  }
}

/// a concrete implementation of [IdentityIdentityUserCreateOrUpdateDtoBase], since [IdentityIdentityUserCreateOrUpdateDtoBase] is not instantiable
@BuiltValue(instantiable: true)
abstract class $IdentityIdentityUserCreateOrUpdateDtoBase
    implements
        IdentityIdentityUserCreateOrUpdateDtoBase,
        Built<$IdentityIdentityUserCreateOrUpdateDtoBase,
            $IdentityIdentityUserCreateOrUpdateDtoBaseBuilder> {
  $IdentityIdentityUserCreateOrUpdateDtoBase._();

  factory $IdentityIdentityUserCreateOrUpdateDtoBase(
      [void Function($IdentityIdentityUserCreateOrUpdateDtoBaseBuilder)?
          updates]) = _$$IdentityIdentityUserCreateOrUpdateDtoBase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($IdentityIdentityUserCreateOrUpdateDtoBaseBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$IdentityIdentityUserCreateOrUpdateDtoBase>
      get serializer =>
          _$$IdentityIdentityUserCreateOrUpdateDtoBaseSerializer();
}

class _$$IdentityIdentityUserCreateOrUpdateDtoBaseSerializer
    implements PrimitiveSerializer<$IdentityIdentityUserCreateOrUpdateDtoBase> {
  @override
  final Iterable<Type> types = const [
    $IdentityIdentityUserCreateOrUpdateDtoBase,
    _$$IdentityIdentityUserCreateOrUpdateDtoBase
  ];

  @override
  final String wireName = r'$IdentityIdentityUserCreateOrUpdateDtoBase';

  @override
  Object serialize(
    Serializers serializers,
    $IdentityIdentityUserCreateOrUpdateDtoBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(IdentityIdentityUserCreateOrUpdateDtoBase))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IdentityIdentityUserCreateOrUpdateDtoBaseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ExtraProperties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.extraProperties.replace(valueDes);
          break;
        case r'UserName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userName = valueDes;
          break;
        case r'Name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'Surname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.surname = valueDes;
          break;
        case r'Email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'PhoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phoneNumber = valueDes;
          break;
        case r'IsActive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'LockoutEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.lockoutEnabled = valueDes;
          break;
        case r'RoleNames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.roleNames.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $IdentityIdentityUserCreateOrUpdateDtoBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $IdentityIdentityUserCreateOrUpdateDtoBaseBuilder();
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
