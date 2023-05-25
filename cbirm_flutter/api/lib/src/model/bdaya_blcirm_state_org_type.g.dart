// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_org_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BdayaBLCIRMStateOrgType _$number0 =
    const BdayaBLCIRMStateOrgType._('number0');
const BdayaBLCIRMStateOrgType _$number1 =
    const BdayaBLCIRMStateOrgType._('number1');
const BdayaBLCIRMStateOrgType _$number2 =
    const BdayaBLCIRMStateOrgType._('number2');

BdayaBLCIRMStateOrgType _$valueOf(String name) {
  switch (name) {
    case 'number0':
      return _$number0;
    case 'number1':
      return _$number1;
    case 'number2':
      return _$number2;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<BdayaBLCIRMStateOrgType> _$values =
    new BuiltSet<BdayaBLCIRMStateOrgType>(const <BdayaBLCIRMStateOrgType>[
  _$number0,
  _$number1,
  _$number2,
]);

class _$BdayaBLCIRMStateOrgTypeMeta {
  const _$BdayaBLCIRMStateOrgTypeMeta();
  BdayaBLCIRMStateOrgType get number0 => _$number0;
  BdayaBLCIRMStateOrgType get number1 => _$number1;
  BdayaBLCIRMStateOrgType get number2 => _$number2;
  BdayaBLCIRMStateOrgType valueOf(String name) => _$valueOf(name);
  BuiltSet<BdayaBLCIRMStateOrgType> get values => _$values;
}

abstract class _$BdayaBLCIRMStateOrgTypeMixin {
  // ignore: non_constant_identifier_names
  _$BdayaBLCIRMStateOrgTypeMeta get BdayaBLCIRMStateOrgType =>
      const _$BdayaBLCIRMStateOrgTypeMeta();
}

Serializer<BdayaBLCIRMStateOrgType> _$bdayaBLCIRMStateOrgTypeSerializer =
    new _$BdayaBLCIRMStateOrgTypeSerializer();

class _$BdayaBLCIRMStateOrgTypeSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateOrgType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
    'number2': 2,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
    2: 'number2',
  };

  @override
  final Iterable<Type> types = const <Type>[BdayaBLCIRMStateOrgType];
  @override
  final String wireName = 'BdayaBLCIRMStateOrgType';

  @override
  Object serialize(Serializers serializers, BdayaBLCIRMStateOrgType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BdayaBLCIRMStateOrgType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BdayaBLCIRMStateOrgType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
