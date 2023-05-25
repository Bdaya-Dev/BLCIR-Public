import 'package:blcirm_api/blcirm_api.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import 'package:cbirm_flutter/common.dart';

part 'form.gform.dart';

@ReactiveFormAnnotation()
class NewLibraryModel {
  final String name;
  final String email;
  final String password;
  final LibraryInfoModel info;
  final BdayaBLCIRMOrgType orgType;

  const NewLibraryModel({
    @FormControlAnnotation(validators: [requiredValidator])
        this.name = '',
    @FormControlAnnotation(validators: [
      requiredValidator,
      emailValidator,
    ])
        this.email = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.password = '',
    @FormGroupAnnotation(validators: [requiredValidator])
        required this.info,
    @FormControlAnnotation(validators: [requiredValidator])
        this.orgType = BdayaBLCIRMOrgType.number0,
  });

  NewLibraryModel copyWith({
    String? name,
    String? email,
    String? password,
    LibraryInfoModel? info,
    BdayaBLCIRMOrgType? orgType,
  }) {
    return NewLibraryModel(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      info: info ?? this.info,
      orgType: orgType ?? this.orgType,
    );
  }
}

@FormGroupAnnotation()
class LibraryInfoModel {
  final String? address;
  final String? phone;
  final String? logo;
  final String? website;
  final String? email;
  final DateTime? creationTime;

  const LibraryInfoModel({
    @FormControlAnnotation() this.address,
    @FormControlAnnotation() this.phone,
    @FormControlAnnotation() this.logo,
    @FormControlAnnotation() this.website,
    @FormControlAnnotation() this.email,
    @FormControlAnnotation() this.creationTime,
  });
}
