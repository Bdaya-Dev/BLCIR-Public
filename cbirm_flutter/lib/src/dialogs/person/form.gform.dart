// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactivePersonModelFormConsumer extends StatelessWidget {
  const ReactivePersonModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, PersonModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePersonModelForm.of(context);

    if (formModel is! PersonModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PersonModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const PersonModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PersonModelForm form;
}

class ReactivePersonModelForm extends StatelessWidget {
  const ReactivePersonModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final PersonModelForm form;

  final WillPopCallback? onWillPop;

  static PersonModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              PersonModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PersonModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as PersonModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return PersonModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class PersonModelFormBuilder extends StatefulWidget {
  const PersonModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PersonModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, PersonModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, PersonModelForm formModel)?
      initState;

  @override
  _PersonModelFormBuilderState createState() => _PersonModelFormBuilderState();
}

class _PersonModelFormBuilderState extends State<PersonModelFormBuilder> {
  late PersonModelForm _formModel;

  @override
  void initState() {
    _formModel = PersonModelForm(
        widget.model, PersonModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant PersonModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = PersonModelForm(
          widget.model, PersonModelForm.formElements(widget.model), null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }

      widget.initState?.call(context, _formModel);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactivePersonModelForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class PersonModelForm implements FormModel<PersonModel> {
  PersonModelForm(
    this.personModel,
    this.form,
    this.path,
  ) {}

  static const String nameControlName = "name";

  static const String nationalIdControlName = "nationalId";

  static const String countryCodeIso3166ControlName = "countryCodeIso3166";

  static const String birthdayControlName = "birthday";

  static const String isAuthorControlName = "isAuthor";

  final PersonModel? personModel;

  final FormGroup form;

  final String? path;

  String nameControlPath() => pathBuilder(nameControlName);
  String nationalIdControlPath() => pathBuilder(nationalIdControlName);
  String countryCodeIso3166ControlPath() =>
      pathBuilder(countryCodeIso3166ControlName);
  String birthdayControlPath() => pathBuilder(birthdayControlName);
  String isAuthorControlPath() => pathBuilder(isAuthorControlName);
  String get _nameValue => nameControl.value ?? "";
  String? get _nationalIdValue => nationalIdControl?.value;
  String? get _countryCodeIso3166Value => countryCodeIso3166Control?.value;
  Date? get _birthdayValue => birthdayControl?.value;
  bool? get _isAuthorValue => isAuthorControl?.value;
  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsNationalId {
    try {
      form.control(nationalIdControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCountryCodeIso3166 {
    try {
      form.control(countryCodeIso3166ControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsBirthday {
    try {
      form.control(birthdayControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIsAuthor {
    try {
      form.control(isAuthorControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nameErrors => nameControl.errors;
  Object? get nationalIdErrors => nationalIdControl?.errors;
  Object? get countryCodeIso3166Errors => countryCodeIso3166Control?.errors;
  Object? get birthdayErrors => birthdayControl?.errors;
  Object? get isAuthorErrors => isAuthorControl?.errors;
  void get nameFocus => form.focus(nameControlPath());
  void get nationalIdFocus => form.focus(nationalIdControlPath());
  void get countryCodeIso3166Focus =>
      form.focus(countryCodeIso3166ControlPath());
  void get birthdayFocus => form.focus(birthdayControlPath());
  void get isAuthorFocus => form.focus(isAuthorControlPath());
  void nationalIdRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsNationalId) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          nationalIdControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            nationalIdControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void countryCodeIso3166Remove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsCountryCodeIso3166) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          countryCodeIso3166ControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            countryCodeIso3166ControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void birthdayRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsBirthday) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          birthdayControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            birthdayControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void isAuthorRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsIsAuthor) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          isAuthorControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            isAuthorControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nationalIdValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nationalIdControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countryCodeIso3166ValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countryCodeIso3166Control?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthdayValueUpdate(
    Date? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthdayControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isAuthorValueUpdate(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isAuthorControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nationalIdValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nationalIdControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countryCodeIso3166ValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countryCodeIso3166Control?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthdayValuePatch(
    Date? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthdayControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isAuthorValuePatch(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isAuthorControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void nationalIdValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nationalIdControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void countryCodeIso3166ValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      countryCodeIso3166Control?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void birthdayValueReset(
    Date? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      birthdayControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void isAuthorValueReset(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isAuthorControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormControl<String>? get nationalIdControl => containsNationalId
      ? form.control(nationalIdControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get countryCodeIso3166Control =>
      containsCountryCodeIso3166
          ? form.control(countryCodeIso3166ControlPath())
              as FormControl<String>?
          : null;
  FormControl<Date>? get birthdayControl => containsBirthday
      ? form.control(birthdayControlPath()) as FormControl<Date>?
      : null;
  FormControl<bool>? get isAuthorControl => containsIsAuthor
      ? form.control(isAuthorControlPath()) as FormControl<bool>?
      : null;
  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void nationalIdSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nationalIdControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nationalIdControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void countryCodeIso3166SetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      countryCodeIso3166Control?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      countryCodeIso3166Control?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void birthdaySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      birthdayControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      birthdayControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void isAuthorSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isAuthorControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isAuthorControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  PersonModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return PersonModel(
        name: _nameValue,
        nationalId: _nationalIdValue,
        countryCodeIso3166: _countryCodeIso3166Value,
        birthday: _birthdayValue,
        isAuthor: _isAuthorValue);
  }

  PersonModelForm copyWithPath(String? path) {
    return PersonModelForm(personModel, form, path);
  }

  @override
  void updateValue(
    PersonModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PersonModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    PersonModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(PersonModel? personModel) => FormGroup({
        nameControlName: FormControl<String>(
            value: personModel?.name,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nationalIdControlName: FormControl<String>(
            value: personModel?.nationalId,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        countryCodeIso3166ControlName: FormControl<String>(
            value: personModel?.countryCodeIso3166,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        birthdayControlName: FormControl<Date>(
            value: personModel?.birthday,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isAuthorControlName: FormControl<bool>(
            value: personModel?.isAuthor,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactivePersonModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactivePersonModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(PersonModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PersonModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, PersonModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePersonModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactivePersonModelFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactivePersonModelFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      PersonModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PersonModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, PersonModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePersonModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <V>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
