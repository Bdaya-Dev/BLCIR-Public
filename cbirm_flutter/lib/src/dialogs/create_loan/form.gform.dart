// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveCreateLoanModelFormConsumer extends StatelessWidget {
  const ReactiveCreateLoanModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, CreateLoanModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCreateLoanModelForm.of(context);

    if (formModel is! CreateLoanModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class CreateLoanModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const CreateLoanModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final CreateLoanModelForm form;
}

class ReactiveCreateLoanModelForm extends StatelessWidget {
  const ReactiveCreateLoanModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final CreateLoanModelForm form;

  final WillPopCallback? onWillPop;

  static CreateLoanModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              CreateLoanModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        CreateLoanModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as CreateLoanModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return CreateLoanModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class CreateLoanModelFormBuilder extends StatefulWidget {
  const CreateLoanModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final CreateLoanModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, CreateLoanModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, CreateLoanModelForm formModel)?
      initState;

  @override
  _CreateLoanModelFormBuilderState createState() =>
      _CreateLoanModelFormBuilderState();
}

class _CreateLoanModelFormBuilderState
    extends State<CreateLoanModelFormBuilder> {
  late CreateLoanModelForm _formModel;

  @override
  void initState() {
    _formModel = CreateLoanModelForm(
        widget.model, CreateLoanModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant CreateLoanModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = CreateLoanModelForm(
          widget.model, CreateLoanModelForm.formElements(widget.model), null);

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
    return ReactiveCreateLoanModelForm(
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

class CreateLoanModelForm implements FormModel<CreateLoanModel> {
  CreateLoanModelForm(
    this.createLoanModel,
    this.form,
    this.path,
  ) {}

  static const String userControlName = "user";

  static const String documentControlName = "document";

  static const String amountControlName = "amount";

  static const String returnDateControlName = "returnDate";

  final CreateLoanModel? createLoanModel;

  final FormGroup form;

  final String? path;

  String userControlPath() => pathBuilder(userControlName);
  String documentControlPath() => pathBuilder(documentControlName);
  String amountControlPath() => pathBuilder(amountControlName);
  String returnDateControlPath() => pathBuilder(returnDateControlName);
  ResultContainer<BdayaBLCIRMStatePersonDto>? get _userValue =>
      userControl?.value;
  ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>? get _documentValue =>
      documentControl?.value;
  int get _amountValue => amountControl.value as int;
  Date? get _returnDateValue => returnDateControl?.value;
  bool get containsUser {
    try {
      form.control(userControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDocument {
    try {
      form.control(documentControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAmount {
    try {
      form.control(amountControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsReturnDate {
    try {
      form.control(returnDateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get userErrors => userControl?.errors;
  Object? get documentErrors => documentControl?.errors;
  Object? get amountErrors => amountControl.errors;
  Object? get returnDateErrors => returnDateControl?.errors;
  void get userFocus => form.focus(userControlPath());
  void get documentFocus => form.focus(documentControlPath());
  void get amountFocus => form.focus(amountControlPath());
  void get returnDateFocus => form.focus(returnDateControlPath());
  void userRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsUser) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          userControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            userControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void documentRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsDocument) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          documentControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            documentControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void returnDateRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsReturnDate) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          returnDateControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            returnDateControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void userValueUpdate(
    ResultContainer<BdayaBLCIRMStatePersonDto>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    userControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentValueUpdate(
    ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void amountValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    amountControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void returnDateValueUpdate(
    Date? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    returnDateControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void userValuePatch(
    ResultContainer<BdayaBLCIRMStatePersonDto>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    userControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentValuePatch(
    ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void amountValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    amountControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void returnDateValuePatch(
    Date? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    returnDateControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void userValueReset(
    ResultContainer<BdayaBLCIRMStatePersonDto>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      userControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void documentValueReset(
    ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      documentControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void amountValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      amountControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void returnDateValueReset(
    Date? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      returnDateControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<ResultContainer<BdayaBLCIRMStatePersonDto>>? get userControl =>
      containsUser
          ? form.control(userControlPath())
              as FormControl<ResultContainer<BdayaBLCIRMStatePersonDto>>?
          : null;
  FormControl<ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>>?
      get documentControl => containsDocument
          ? form.control(documentControlPath())
              as FormControl<ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>>?
          : null;
  FormControl<int> get amountControl =>
      form.control(amountControlPath()) as FormControl<int>;
  FormControl<Date>? get returnDateControl => containsReturnDate
      ? form.control(returnDateControlPath()) as FormControl<Date>?
      : null;
  void userSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      userControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      userControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void documentSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      documentControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      documentControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void amountSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      amountControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      amountControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void returnDateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      returnDateControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      returnDateControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  CreateLoanModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return CreateLoanModel(
        user: _userValue,
        document: _documentValue,
        amount: _amountValue,
        returnDate: _returnDateValue);
  }

  CreateLoanModelForm copyWithPath(String? path) {
    return CreateLoanModelForm(createLoanModel, form, path);
  }

  @override
  void updateValue(
    CreateLoanModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(CreateLoanModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    CreateLoanModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(CreateLoanModel? createLoanModel) => FormGroup({
        userControlName:
            FormControl<ResultContainer<BdayaBLCIRMStatePersonDto>>(
                value: createLoanModel?.user,
                validators: [requiredValidator],
                asyncValidators: [],
                asyncValidatorsDebounceTime: 250,
                disabled: false,
                touched: false),
        documentControlName:
            FormControl<ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>>(
                value: createLoanModel?.document,
                validators: [requiredValidator],
                asyncValidators: [],
                asyncValidatorsDebounceTime: 250,
                disabled: false,
                touched: false),
        amountControlName: FormControl<int>(
            value: createLoanModel?.amount,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        returnDateControlName: FormControl<Date>(
            value: createLoanModel?.returnDate,
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

class ReactiveCreateLoanModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveCreateLoanModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(CreateLoanModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      CreateLoanModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, CreateLoanModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCreateLoanModelForm.of(context);

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

class ReactiveCreateLoanModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveCreateLoanModelFormFormGroupArrayBuilder({
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
      CreateLoanModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      CreateLoanModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, CreateLoanModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCreateLoanModelForm.of(context);

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
