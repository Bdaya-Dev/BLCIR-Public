// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveNewLibraryModelFormConsumer extends StatelessWidget {
  const ReactiveNewLibraryModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, NewLibraryModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNewLibraryModelForm.of(context);

    if (formModel is! NewLibraryModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class NewLibraryModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const NewLibraryModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final NewLibraryModelForm form;
}

class ReactiveNewLibraryModelForm extends StatelessWidget {
  const ReactiveNewLibraryModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final NewLibraryModelForm form;

  final WillPopCallback? onWillPop;

  static NewLibraryModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              NewLibraryModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        NewLibraryModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as NewLibraryModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return NewLibraryModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class NewLibraryModelFormBuilder extends StatefulWidget {
  const NewLibraryModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final NewLibraryModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, NewLibraryModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, NewLibraryModelForm formModel)?
      initState;

  @override
  _NewLibraryModelFormBuilderState createState() =>
      _NewLibraryModelFormBuilderState();
}

class _NewLibraryModelFormBuilderState
    extends State<NewLibraryModelFormBuilder> {
  late NewLibraryModelForm _formModel;

  @override
  void initState() {
    _formModel = NewLibraryModelForm(
        widget.model, NewLibraryModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant NewLibraryModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = NewLibraryModelForm(
          widget.model, NewLibraryModelForm.formElements(widget.model), null);

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
    return ReactiveNewLibraryModelForm(
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

class NewLibraryModelForm implements FormModel<NewLibraryModel> {
  NewLibraryModelForm(
    this.newLibraryModel,
    this.form,
    this.path,
  ) {
    infoForm =
        LibraryInfoModelForm(newLibraryModel?.info, form, pathBuilder('info'));
  }

  static const String nameControlName = "name";

  static const String emailControlName = "email";

  static const String passwordControlName = "password";

  static const String infoControlName = "info";

  static const String orgTypeControlName = "orgType";

  late LibraryInfoModelForm infoForm;

  final NewLibraryModel? newLibraryModel;

  final FormGroup form;

  final String? path;

  String nameControlPath() => pathBuilder(nameControlName);
  String emailControlPath() => pathBuilder(emailControlName);
  String passwordControlPath() => pathBuilder(passwordControlName);
  String orgTypeControlPath() => pathBuilder(orgTypeControlName);
  String infoControlPath() => pathBuilder(infoControlName);
  String get _nameValue => nameControl.value ?? "";
  String get _emailValue => emailControl.value ?? "";
  String get _passwordValue => passwordControl.value ?? "";
  BdayaBLCIRMOrgType get _orgTypeValue =>
      orgTypeControl.value as BdayaBLCIRMOrgType;
  LibraryInfoModel get _infoValue => infoForm.model;
  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPassword {
    try {
      form.control(passwordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsOrgType {
    try {
      form.control(orgTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsInfo {
    try {
      form.control(infoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nameErrors => nameControl.errors;
  Object? get emailErrors => emailControl.errors;
  Object? get passwordErrors => passwordControl.errors;
  Object? get orgTypeErrors => orgTypeControl.errors;
  Object? get infoErrors => infoControl.errors;
  void get nameFocus => form.focus(nameControlPath());
  void get emailFocus => form.focus(emailControlPath());
  void get passwordFocus => form.focus(passwordControlPath());
  void get orgTypeFocus => form.focus(orgTypeControlPath());
  void get infoFocus => form.focus(infoControlPath());
  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void orgTypeValueUpdate(
    BdayaBLCIRMOrgType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    orgTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void infoValueUpdate(
    LibraryInfoModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    infoControl.updateValue(LibraryInfoModelForm.formElements(value).rawValue,
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

  void emailValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void orgTypeValuePatch(
    BdayaBLCIRMOrgType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    orgTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void infoValuePatch(
    LibraryInfoModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    infoControl.updateValue(LibraryInfoModelForm.formElements(value).rawValue,
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
  void emailValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void passwordValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      passwordControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void orgTypeValueReset(
    BdayaBLCIRMOrgType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      orgTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void infoValueReset(
    LibraryInfoModel value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      infoControl.reset(
          value: LibraryInfoModelForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  FormControl<String> get passwordControl =>
      form.control(passwordControlPath()) as FormControl<String>;
  FormControl<BdayaBLCIRMOrgType> get orgTypeControl =>
      form.control(orgTypeControlPath()) as FormControl<BdayaBLCIRMOrgType>;
  FormGroup get infoControl => form.control(infoControlPath()) as FormGroup;
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

  void emailSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void passwordSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      passwordControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      passwordControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void orgTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      orgTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      orgTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void infoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      infoControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      infoControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  NewLibraryModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return NewLibraryModel(
        name: _nameValue,
        email: _emailValue,
        password: _passwordValue,
        info: _infoValue,
        orgType: _orgTypeValue);
  }

  NewLibraryModelForm copyWithPath(String? path) {
    return NewLibraryModelForm(newLibraryModel, form, path);
  }

  @override
  void updateValue(
    NewLibraryModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(NewLibraryModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    NewLibraryModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(NewLibraryModel? newLibraryModel) => FormGroup({
        nameControlName: FormControl<String>(
            value: newLibraryModel?.name,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: newLibraryModel?.email,
            validators: [requiredValidator, emailValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: newLibraryModel?.password,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        orgTypeControlName: FormControl<BdayaBLCIRMOrgType>(
            value: newLibraryModel?.orgType,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        infoControlName:
            LibraryInfoModelForm.formElements(newLibraryModel?.info)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class LibraryInfoModelForm implements FormModel<LibraryInfoModel> {
  LibraryInfoModelForm(
    this.libraryInfoModel,
    this.form,
    this.path,
  ) {}

  static const String addressControlName = "address";

  static const String phoneControlName = "phone";

  static const String logoControlName = "logo";

  static const String websiteControlName = "website";

  static const String emailControlName = "email";

  static const String creationTimeControlName = "creationTime";

  final LibraryInfoModel? libraryInfoModel;

  final FormGroup form;

  final String? path;

  String addressControlPath() => pathBuilder(addressControlName);
  String phoneControlPath() => pathBuilder(phoneControlName);
  String logoControlPath() => pathBuilder(logoControlName);
  String websiteControlPath() => pathBuilder(websiteControlName);
  String emailControlPath() => pathBuilder(emailControlName);
  String creationTimeControlPath() => pathBuilder(creationTimeControlName);
  String? get _addressValue => addressControl?.value;
  String? get _phoneValue => phoneControl?.value;
  String? get _logoValue => logoControl?.value;
  String? get _websiteValue => websiteControl?.value;
  String? get _emailValue => emailControl?.value;
  DateTime? get _creationTimeValue => creationTimeControl?.value;
  bool get containsAddress {
    try {
      form.control(addressControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPhone {
    try {
      form.control(phoneControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLogo {
    try {
      form.control(logoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsWebsite {
    try {
      form.control(websiteControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCreationTime {
    try {
      form.control(creationTimeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get addressErrors => addressControl?.errors;
  Object? get phoneErrors => phoneControl?.errors;
  Object? get logoErrors => logoControl?.errors;
  Object? get websiteErrors => websiteControl?.errors;
  Object? get emailErrors => emailControl?.errors;
  Object? get creationTimeErrors => creationTimeControl?.errors;
  void get addressFocus => form.focus(addressControlPath());
  void get phoneFocus => form.focus(phoneControlPath());
  void get logoFocus => form.focus(logoControlPath());
  void get websiteFocus => form.focus(websiteControlPath());
  void get emailFocus => form.focus(emailControlPath());
  void get creationTimeFocus => form.focus(creationTimeControlPath());
  void addressRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsAddress) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          addressControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            addressControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void phoneRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPhone) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          phoneControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            phoneControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void logoRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsLogo) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          logoControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            logoControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void websiteRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsWebsite) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          websiteControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            websiteControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void emailRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsEmail) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          emailControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            emailControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void creationTimeRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsCreationTime) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          creationTimeControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            creationTimeControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void addressValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void logoValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    logoControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void websiteValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    websiteControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void creationTimeValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    creationTimeControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void logoValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    logoControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void websiteValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    websiteControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void creationTimeValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    creationTimeControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      addressControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void phoneValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      phoneControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void logoValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      logoControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void websiteValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      websiteControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void emailValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void creationTimeValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      creationTimeControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String>? get addressControl => containsAddress
      ? form.control(addressControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get phoneControl => containsPhone
      ? form.control(phoneControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get logoControl => containsLogo
      ? form.control(logoControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get websiteControl => containsWebsite
      ? form.control(websiteControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get emailControl => containsEmail
      ? form.control(emailControlPath()) as FormControl<String>?
      : null;
  FormControl<DateTime>? get creationTimeControl => containsCreationTime
      ? form.control(creationTimeControlPath()) as FormControl<DateTime>?
      : null;
  void addressSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      addressControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      addressControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void phoneSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      phoneControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      phoneControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void logoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      logoControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      logoControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void websiteSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      websiteControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      websiteControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void emailSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void creationTimeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      creationTimeControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      creationTimeControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  LibraryInfoModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return LibraryInfoModel(
        address: _addressValue,
        phone: _phoneValue,
        logo: _logoValue,
        website: _websiteValue,
        email: _emailValue,
        creationTime: _creationTimeValue);
  }

  LibraryInfoModelForm copyWithPath(String? path) {
    return LibraryInfoModelForm(libraryInfoModel, form, path);
  }

  @override
  void updateValue(
    LibraryInfoModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(LibraryInfoModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    LibraryInfoModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(LibraryInfoModel? libraryInfoModel) =>
      FormGroup({
        addressControlName: FormControl<String>(
            value: libraryInfoModel?.address,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        phoneControlName: FormControl<String>(
            value: libraryInfoModel?.phone,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        logoControlName: FormControl<String>(
            value: libraryInfoModel?.logo,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        websiteControlName: FormControl<String>(
            value: libraryInfoModel?.website,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: libraryInfoModel?.email,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        creationTimeControlName: FormControl<DateTime>(
            value: libraryInfoModel?.creationTime,
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

class ReactiveNewLibraryModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveNewLibraryModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(NewLibraryModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      NewLibraryModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, NewLibraryModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNewLibraryModelForm.of(context);

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

class ReactiveNewLibraryModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveNewLibraryModelFormFormGroupArrayBuilder({
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
      NewLibraryModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      NewLibraryModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, NewLibraryModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNewLibraryModelForm.of(context);

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
