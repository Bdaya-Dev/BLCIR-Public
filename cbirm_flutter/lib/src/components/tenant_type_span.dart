import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';

TextSpan? spanFromTenantType(BdayaBLCIRMOrgType? type) {
  if (type == null) return null;
  String? res;
  switch (type) {
    case BdayaBLCIRMOrgType.number0:
      res = 'Library';
      break;
    case BdayaBLCIRMOrgType.number1:
      res = 'Publisher';
      break;
    case BdayaBLCIRMOrgType.number2:
      res = 'Trusted Authority';
      break;
  }
  return TextSpan(text: res);
}
