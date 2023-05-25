import 'package:reactive_forms/reactive_forms.dart';

final RegExp numberRegex = RegExp(r'^-?[0-9]+$');
typedef ValueValidationFunction<T> = Map<String, Object?>? Function(T value);
typedef AsyncValueValidationFunction<T> = Future<Map<String, Object?>?>
    Function(T value);

class ValidationValueAccessor<TModel, TView>
    extends ControlValueAccessor<TModel, TView> {
  final ControlValueAccessor<TModel, TView> accessor;
  final List<ValueValidationFunction<TView?>>? validators;
  final List<AsyncValueValidationFunction<TView?>>? asyncValidators;

  TView? latestView;
  Map<String, Object?>? selfValidator(AbstractControl? control) {
    return _validate(latestView);
  }

  Future<Map<String, Object?>?> selfValidatorAsync(AbstractControl? control) {
    return _validateAsync(latestView);
  }

  ValidationValueAccessor({
    required this.accessor,
    this.validators,
    this.asyncValidators,
  });

  Map<String, Object?> _validate(TView? value) {
    final res = <String, Object?>{};
    final v = validators;
    if (v == null) return {};
    for (final element in v) {
      final vE = element(value);
      if (vE != null) {
        res.addAll(vE);
      }
    }
    return res;
  }

  Future<Map<String, Object?>?> _validateAsync(TView? value) async {
    final v = asyncValidators;
    if (v == null) return {};
    final allFutures = v.map((e) => e(value));
    return await Future.wait(allFutures).then((value) => value.isEmpty
        ? {}
        : value.reduce((value, element) => {...?value, ...?element}));
  }

  void _disposeOld() {
    final oldControl = control;
    if (oldControl != null) {
      //remove old validator
      final oldValidators = oldControl.validators.toList();
      if (oldValidators.contains(selfValidator)) {
        oldControl.setValidators(oldValidators..remove(selfValidator));
      }

      final oldAsyncValidators = oldControl.asyncValidators.toList();
      if (oldAsyncValidators.contains(selfValidatorAsync)) {
        oldControl
            .setAsyncValidators(oldAsyncValidators..remove(selfValidatorAsync));
      }
    }
  }

  @override
  void registerControl(FormControl<TModel> control,
      {ChangeFunction<TView>? onChange}) {
    _disposeOld();
    //register new control
    super.registerControl(control, onChange: onChange);
    //register new validator
    if (!control.validators.contains(selfValidator)) {
      control.setValidators([
        selfValidator, //view errors should appear first before model errors
        ...control.validators,
      ]);
    }
    if (!control.asyncValidators.contains(selfValidatorAsync)) {
      control.setAsyncValidators([
        selfValidatorAsync, //view errors should appear first before model errors
        ...control.asyncValidators,
      ]);
    }
  }

  @override
  void dispose() {
    _disposeOld();
    super.dispose();
  }

  //we persist latest view value for validation
  @override
  TView? modelToViewValue(TModel? modelValue) =>
      latestView = accessor.modelToViewValue(modelValue);
  @override
  TModel? viewToModelValue(TView? viewValue) =>
      accessor.viewToModelValue(latestView = viewValue);
}

/// Represents a control value accessor that convert between data types
/// [num] and [String].
class NumValueAccessor extends ControlValueAccessor<num, String> {
  final int fractionDigits;

  NumValueAccessor({
    this.fractionDigits = 2,
  });

  @override
  String modelToViewValue(num? modelValue) {
    return modelValue == null ? '' : modelValue.toStringAsFixed(fractionDigits);
  }

  @override
  num? viewToModelValue(String? viewValue) {
    return (viewValue == '' || viewValue == null)
        ? null
        : num.tryParse(viewValue);
  }
}
