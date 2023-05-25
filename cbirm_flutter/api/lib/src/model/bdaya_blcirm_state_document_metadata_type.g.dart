// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdaya_blcirm_state_document_metadata_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BdayaBLCIRMStateDocumentMetadataType _$number0 =
    const BdayaBLCIRMStateDocumentMetadataType._('number0');
const BdayaBLCIRMStateDocumentMetadataType _$number1 =
    const BdayaBLCIRMStateDocumentMetadataType._('number1');
const BdayaBLCIRMStateDocumentMetadataType _$number2 =
    const BdayaBLCIRMStateDocumentMetadataType._('number2');
const BdayaBLCIRMStateDocumentMetadataType _$number3 =
    const BdayaBLCIRMStateDocumentMetadataType._('number3');

BdayaBLCIRMStateDocumentMetadataType _$valueOf(String name) {
  switch (name) {
    case 'number0':
      return _$number0;
    case 'number1':
      return _$number1;
    case 'number2':
      return _$number2;
    case 'number3':
      return _$number3;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<BdayaBLCIRMStateDocumentMetadataType> _$values = new BuiltSet<
    BdayaBLCIRMStateDocumentMetadataType>(const <BdayaBLCIRMStateDocumentMetadataType>[
  _$number0,
  _$number1,
  _$number2,
  _$number3,
]);

class _$BdayaBLCIRMStateDocumentMetadataTypeMeta {
  const _$BdayaBLCIRMStateDocumentMetadataTypeMeta();
  BdayaBLCIRMStateDocumentMetadataType get number0 => _$number0;
  BdayaBLCIRMStateDocumentMetadataType get number1 => _$number1;
  BdayaBLCIRMStateDocumentMetadataType get number2 => _$number2;
  BdayaBLCIRMStateDocumentMetadataType get number3 => _$number3;
  BdayaBLCIRMStateDocumentMetadataType valueOf(String name) => _$valueOf(name);
  BuiltSet<BdayaBLCIRMStateDocumentMetadataType> get values => _$values;
}

abstract class _$BdayaBLCIRMStateDocumentMetadataTypeMixin {
  // ignore: non_constant_identifier_names
  _$BdayaBLCIRMStateDocumentMetadataTypeMeta
      get BdayaBLCIRMStateDocumentMetadataType =>
          const _$BdayaBLCIRMStateDocumentMetadataTypeMeta();
}

Serializer<BdayaBLCIRMStateDocumentMetadataType>
    _$bdayaBLCIRMStateDocumentMetadataTypeSerializer =
    new _$BdayaBLCIRMStateDocumentMetadataTypeSerializer();

class _$BdayaBLCIRMStateDocumentMetadataTypeSerializer
    implements PrimitiveSerializer<BdayaBLCIRMStateDocumentMetadataType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
    'number2': 2,
    'number3': 3,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
    2: 'number2',
    3: 'number3',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BdayaBLCIRMStateDocumentMetadataType
  ];
  @override
  final String wireName = 'BdayaBLCIRMStateDocumentMetadataType';

  @override
  Object serialize(
          Serializers serializers, BdayaBLCIRMStateDocumentMetadataType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BdayaBLCIRMStateDocumentMetadataType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BdayaBLCIRMStateDocumentMetadataType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
