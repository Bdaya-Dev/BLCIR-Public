import 'package:blcirm_api/blcirm_api.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import 'package:cbirm_flutter/common.dart';

part 'form.gform.dart';

@ReactiveFormAnnotation()
class CrossTenantTransferModel {
  const CrossTenantTransferModel({
    @FormControlAnnotation(validators: [requiredValidator]) this.document,
    @FormControlAnnotation(validators: [requiredValidator]) this.tenant,
    @FormControlAnnotation(validators: [requiredValidator]) this.count = 0,
    @FormControlAnnotation() this.notes,
    @FormControlAnnotation() this.pricePerItem,
  });

  final BdayaBLCIRMStateMeiliDocumentDto? document;
  final BdayaBLCIRMTenantsAppTenantDto? tenant;
  final int count;
  final String? notes;
  final num? pricePerItem;

  CrossTenantTransferModel copyWith({
    BdayaBLCIRMStateMeiliDocumentDto? document,
    BdayaBLCIRMTenantsAppTenantDto? tenant,
    int? count,
    String? notes,
    num? pricePerItem,
  }) {
    return CrossTenantTransferModel(
      document: document ?? this.document,
      tenant: tenant ?? this.tenant,
      count: count ?? this.count,
      notes: notes ?? this.notes,
      pricePerItem: pricePerItem ?? this.pricePerItem,
    );
  }
}
