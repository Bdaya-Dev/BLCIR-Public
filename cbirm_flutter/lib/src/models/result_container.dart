import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class ResultContainer<T> {
  final Map<String, dynamic> original;
  final T object;
  final Map<String, dynamic>? _formatted;

  ResultContainer({
    required this.original,
    required this.object,
  }) : _formatted = original['_formatted'];

  String? formattedOr(String attribute, String? Function(T item) func) {
    final path = attribute.split('.');
    String? value;
    if (path.length > 1) {
      var map = _formatted;
      for (var i = 0; i < path.length - 1; i++) {
        if (map is Map<String, dynamic>) {
          map = map[path[i]];
        } else {
          break;
        }
      }
      if (map is Map<String, dynamic>) {
        value = map[path.last];
      }
    } else {
      value = _formatted?[attribute];
    }
    return value ?? func(object);
  }
}

class ResultContainerValueAccessor<TModel>
    extends ControlValueAccessor<TModel, ResultContainer<TModel>> {
  @override
  ResultContainer<TModel>? modelToViewValue(TModel? modelValue) {
    if (modelValue == null) return null;
    return ResultContainer(
      original: {},
      object: modelValue,
    );
  }

  @override
  TModel? viewToModelValue(ResultContainer<TModel>? viewValue) {
    if (viewValue == null) return null;
    return viewValue.object;
  }
}
