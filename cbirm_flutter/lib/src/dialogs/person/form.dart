import 'package:blcirm_api/blcirm_api.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import 'package:cbirm_flutter/common.dart';

part 'form.gform.dart';

@ReactiveFormAnnotation()
class PersonModel {
  final String name;
  final String? nationalId;
  final String? countryCodeIso3166;
  final Date? birthday;
  final bool? isAuthor;

  const PersonModel({
    @FormControlAnnotation(validators: [
      requiredValidator,
    ])
    this.name = '',
    @FormControlAnnotation() this.nationalId,
    @FormControlAnnotation() this.countryCodeIso3166,
    @FormControlAnnotation() this.birthday,
    @FormControlAnnotation() this.isAuthor,
  });

  PersonModel copyWith({
    String? name,
    String? nationalId,
    String? countryCodeIso3166,
    Date? birthday,
    bool? isAuthor,
  }) {
    return PersonModel(
      name: name ?? this.name,
      nationalId: nationalId ?? this.nationalId,
      countryCodeIso3166: countryCodeIso3166 ?? this.countryCodeIso3166,
      birthday: birthday ?? this.birthday,
      isAuthor: isAuthor ?? this.isAuthor,
    );
  }
}
