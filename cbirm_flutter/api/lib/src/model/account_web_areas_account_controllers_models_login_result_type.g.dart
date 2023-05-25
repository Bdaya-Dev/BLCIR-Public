// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_web_areas_account_controllers_models_login_result_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccountWebAreasAccountControllersModelsLoginResultType _$number1 =
    const AccountWebAreasAccountControllersModelsLoginResultType._('number1');
const AccountWebAreasAccountControllersModelsLoginResultType _$number2 =
    const AccountWebAreasAccountControllersModelsLoginResultType._('number2');
const AccountWebAreasAccountControllersModelsLoginResultType _$number3 =
    const AccountWebAreasAccountControllersModelsLoginResultType._('number3');
const AccountWebAreasAccountControllersModelsLoginResultType _$number4 =
    const AccountWebAreasAccountControllersModelsLoginResultType._('number4');
const AccountWebAreasAccountControllersModelsLoginResultType _$number5 =
    const AccountWebAreasAccountControllersModelsLoginResultType._('number5');

AccountWebAreasAccountControllersModelsLoginResultType _$valueOf(String name) {
  switch (name) {
    case 'number1':
      return _$number1;
    case 'number2':
      return _$number2;
    case 'number3':
      return _$number3;
    case 'number4':
      return _$number4;
    case 'number5':
      return _$number5;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AccountWebAreasAccountControllersModelsLoginResultType>
    _$values = new BuiltSet<
        AccountWebAreasAccountControllersModelsLoginResultType>(const <AccountWebAreasAccountControllersModelsLoginResultType>[
  _$number1,
  _$number2,
  _$number3,
  _$number4,
  _$number5,
]);

class _$AccountWebAreasAccountControllersModelsLoginResultTypeMeta {
  const _$AccountWebAreasAccountControllersModelsLoginResultTypeMeta();
  AccountWebAreasAccountControllersModelsLoginResultType get number1 =>
      _$number1;
  AccountWebAreasAccountControllersModelsLoginResultType get number2 =>
      _$number2;
  AccountWebAreasAccountControllersModelsLoginResultType get number3 =>
      _$number3;
  AccountWebAreasAccountControllersModelsLoginResultType get number4 =>
      _$number4;
  AccountWebAreasAccountControllersModelsLoginResultType get number5 =>
      _$number5;
  AccountWebAreasAccountControllersModelsLoginResultType valueOf(String name) =>
      _$valueOf(name);
  BuiltSet<AccountWebAreasAccountControllersModelsLoginResultType> get values =>
      _$values;
}

abstract class _$AccountWebAreasAccountControllersModelsLoginResultTypeMixin {
  // ignore: non_constant_identifier_names
  _$AccountWebAreasAccountControllersModelsLoginResultTypeMeta
      get AccountWebAreasAccountControllersModelsLoginResultType =>
          const _$AccountWebAreasAccountControllersModelsLoginResultTypeMeta();
}

Serializer<AccountWebAreasAccountControllersModelsLoginResultType>
    _$accountWebAreasAccountControllersModelsLoginResultTypeSerializer =
    new _$AccountWebAreasAccountControllersModelsLoginResultTypeSerializer();

class _$AccountWebAreasAccountControllersModelsLoginResultTypeSerializer
    implements
        PrimitiveSerializer<
            AccountWebAreasAccountControllersModelsLoginResultType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
    'number2': 2,
    'number3': 3,
    'number4': 4,
    'number5': 5,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
    2: 'number2',
    3: 'number3',
    4: 'number4',
    5: 'number5',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AccountWebAreasAccountControllersModelsLoginResultType
  ];
  @override
  final String wireName =
      'AccountWebAreasAccountControllersModelsLoginResultType';

  @override
  Object serialize(Serializers serializers,
          AccountWebAreasAccountControllersModelsLoginResultType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountWebAreasAccountControllersModelsLoginResultType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountWebAreasAccountControllersModelsLoginResultType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
