// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_org_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BdayaBLCIRMOrgType _$number0 = const BdayaBLCIRMOrgType._('number0');
const BdayaBLCIRMOrgType _$number1 = const BdayaBLCIRMOrgType._('number1');
const BdayaBLCIRMOrgType _$number2 = const BdayaBLCIRMOrgType._('number2');

BdayaBLCIRMOrgType _$valueOf(String name) {
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

final BuiltSet<BdayaBLCIRMOrgType> _$values =
    new BuiltSet<BdayaBLCIRMOrgType>(const <BdayaBLCIRMOrgType>[
  _$number0,
  _$number1,
  _$number2,
]);

class _$BdayaBLCIRMOrgTypeMeta {
  const _$BdayaBLCIRMOrgTypeMeta();
  BdayaBLCIRMOrgType get number0 => _$number0;
  BdayaBLCIRMOrgType get number1 => _$number1;
  BdayaBLCIRMOrgType get number2 => _$number2;
  BdayaBLCIRMOrgType valueOf(String name) => _$valueOf(name);
  BuiltSet<BdayaBLCIRMOrgType> get values => _$values;
}

abstract class _$BdayaBLCIRMOrgTypeMixin {
  // ignore: non_constant_identifier_names
  _$BdayaBLCIRMOrgTypeMeta get BdayaBLCIRMOrgType =>
      const _$BdayaBLCIRMOrgTypeMeta();
}

Serializer<BdayaBLCIRMOrgType> _$bdayaBLCIRMOrgTypeSerializer =
    new _$BdayaBLCIRMOrgTypeSerializer();

class _$BdayaBLCIRMOrgTypeSerializer
    implements PrimitiveSerializer<BdayaBLCIRMOrgType> {
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
  final Iterable<Type> types = const <Type>[BdayaBLCIRMOrgType];
  @override
  final String wireName = 'BdayaBLCIRMOrgType';

  @override
  Object serialize(Serializers serializers, BdayaBLCIRMOrgType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BdayaBLCIRMOrgType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BdayaBLCIRMOrgType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
