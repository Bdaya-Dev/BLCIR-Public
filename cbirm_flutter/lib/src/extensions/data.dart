import 'package:blcirm_api/blcirm_api.dart';

extension OrgTypeExt on BdayaBLCIRMOrgType {
  String toFriendlyString() {
    switch (this) {
      case BdayaBLCIRMOrgType.number0:
        return 'Library';
      case BdayaBLCIRMOrgType.number1:
        return 'Publisher';
      case BdayaBLCIRMOrgType.number2:
        return 'Trusted Authority';
      default:
        throw StateError("Unkown org type $this");
    }
  }
}
