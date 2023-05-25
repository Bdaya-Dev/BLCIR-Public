import 'package:blcirm_api/blcirm_api.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import 'package:cbirm_flutter/common.dart';

part 'form.gform.dart';

@ReactiveFormAnnotation()
class CreateLoanModel {
  final ResultContainer<BdayaBLCIRMStatePersonDto>? user;
  final ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>? document;

  final int amount;
  final Date? returnDate;

  const CreateLoanModel({
    @FormControlAnnotation(validators: [
      requiredValidator,
    ])
        this.user,
    @FormControlAnnotation(validators: [
      requiredValidator,
    ])
        this.document,
    @FormControlAnnotation(validators: [
      requiredValidator,
    ])
        this.amount = 1,
    @FormControlAnnotation()
        this.returnDate,
  });

  CreateLoanModel copyWith({
    ResultContainer<BdayaBLCIRMStatePersonDto>? user,
    ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>? document,
    int? amount,
    Date? returnDate,
  }) {
    return CreateLoanModel(
      user: user ?? this.user,
      document: document ?? this.document,
      amount: amount ?? this.amount,
      returnDate: returnDate ?? this.returnDate,
    );
  }
}
