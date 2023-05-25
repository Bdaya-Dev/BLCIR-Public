import 'package:reactive_forms/reactive_forms.dart';

Map<String, dynamic>? requiredValidator(AbstractControl control) =>
    Validators.required(control);
Map<String, dynamic>? emailValidator(AbstractControl control) =>
    Validators.email(control);
    