// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveCrossTenantTransferModelFormConsumer extends StatelessWidget {
  const ReactiveCrossTenantTransferModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      CrossTenantTransferModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCrossTenantTransferModelForm.of(context);

    if (formModel is! CrossTenantTransferModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class CrossTenantTransferModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const CrossTenantTransferModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final CrossTenantTransferModelForm form;
}

class ReactiveCrossTenantTransferModelForm extends StatelessWidget {
  const ReactiveCrossTenantTransferModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final CrossTenantTransferModelForm form;

  final WillPopCallback? onWillPop;

  static CrossTenantTransferModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              CrossTenantTransferModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        CrossTenantTransferModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as CrossTenantTransferModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return CrossTenantTransferModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class CrossTenantTransferModelFormBuilder extends StatefulWidget {
  const CrossTenantTransferModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final CrossTenantTransferModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      CrossTenantTransferModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, CrossTenantTransferModelForm formModel)? initState;

  @override
  _CrossTenantTransferModelFormBuilderState createState() =>
      _CrossTenantTransferModelFormBuilderState();
}

class _CrossTenantTransferModelFormBuilderState
    extends State<CrossTenantTransferModelFormBuilder> {
  late CrossTenantTransferModelForm _formModel;

  @override
  void initState() {
    _formModel = CrossTenantTransferModelForm(widget.model,
        CrossTenantTransferModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(
      covariant CrossTenantTransferModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = CrossTenantTransferModelForm(widget.model,
          CrossTenantTransferModelForm.formElements(widget.model), null);

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
    return ReactiveCrossTenantTransferModelForm(
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

class CrossTenantTransferModelForm
    implements FormModel<CrossTenantTransferModel> {
  CrossTenantTransferModelForm(
    this.crossTenantTransferModel,
    this.form,
    this.path,
  ) {}

  static const String documentControlName = "document";

  static const String tenantControlName = "tenant";

  static const String countControlName = "count";

  static const String notesControlName = "notes";

  static const String pricePerItemControlName = "pricePerItem";

  final CrossTenantTransferModel? crossTenantTransferModel;

  final FormGroup form;

  final String? path;

  String documentControlPath() => pathBuilder(documentControlName);
  String tenantControlPath() => pathBuilder(tenantControlName);
  String countControlPath() => pathBuilder(countControlName);
  String notesControlPath() => pathBuilder(notesControlName);
  String pricePerItemControlPath() => pathBuilder(pricePerItemControlName);
  BdayaBLCIRMStateMeiliDocumentDto? get _documentValue =>
      documentControl?.value;
  BdayaBLCIRMTenantsAppTenantDto? get _tenantValue => tenantControl?.value;
  int get _countValue => countControl.value as int;
  String? get _notesValue => notesControl?.value;
  num? get _pricePerItemValue => pricePerItemControl?.value;
  bool get containsDocument {
    try {
      form.control(documentControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTenant {
    try {
      form.control(tenantControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCount {
    try {
      form.control(countControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsNotes {
    try {
      form.control(notesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPricePerItem {
    try {
      form.control(pricePerItemControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get documentErrors => documentControl?.errors;
  Object? get tenantErrors => tenantControl?.errors;
  Object? get countErrors => countControl.errors;
  Object? get notesErrors => notesControl?.errors;
  Object? get pricePerItemErrors => pricePerItemControl?.errors;
  void get documentFocus => form.focus(documentControlPath());
  void get tenantFocus => form.focus(tenantControlPath());
  void get countFocus => form.focus(countControlPath());
  void get notesFocus => form.focus(notesControlPath());
  void get pricePerItemFocus => form.focus(pricePerItemControlPath());
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

  void tenantRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsTenant) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          tenantControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            tenantControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void notesRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsNotes) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          notesControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            notesControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void pricePerItemRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPricePerItem) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          pricePerItemControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            pricePerItemControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void documentValueUpdate(
    BdayaBLCIRMStateMeiliDocumentDto? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tenantValueUpdate(
    BdayaBLCIRMTenantsAppTenantDto? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    tenantControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void notesValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    notesControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void pricePerItemValueUpdate(
    num? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    pricePerItemControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentValuePatch(
    BdayaBLCIRMStateMeiliDocumentDto? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tenantValuePatch(
    BdayaBLCIRMTenantsAppTenantDto? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    tenantControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void notesValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    notesControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void pricePerItemValuePatch(
    num? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    pricePerItemControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentValueReset(
    BdayaBLCIRMStateMeiliDocumentDto? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      documentControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void tenantValueReset(
    BdayaBLCIRMTenantsAppTenantDto? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      tenantControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void countValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      countControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void notesValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      notesControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void pricePerItemValueReset(
    num? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      pricePerItemControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<BdayaBLCIRMStateMeiliDocumentDto>? get documentControl =>
      containsDocument
          ? form.control(documentControlPath())
              as FormControl<BdayaBLCIRMStateMeiliDocumentDto>?
          : null;
  FormControl<BdayaBLCIRMTenantsAppTenantDto>? get tenantControl =>
      containsTenant
          ? form.control(tenantControlPath())
              as FormControl<BdayaBLCIRMTenantsAppTenantDto>?
          : null;
  FormControl<int> get countControl =>
      form.control(countControlPath()) as FormControl<int>;
  FormControl<String>? get notesControl => containsNotes
      ? form.control(notesControlPath()) as FormControl<String>?
      : null;
  FormControl<num>? get pricePerItemControl => containsPricePerItem
      ? form.control(pricePerItemControlPath()) as FormControl<num>?
      : null;
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

  void tenantSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      tenantControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      tenantControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void countSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      countControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      countControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void notesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      notesControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      notesControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void pricePerItemSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      pricePerItemControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      pricePerItemControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  CrossTenantTransferModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return CrossTenantTransferModel(
        document: _documentValue,
        tenant: _tenantValue,
        count: _countValue,
        notes: _notesValue,
        pricePerItem: _pricePerItemValue);
  }

  CrossTenantTransferModelForm copyWithPath(String? path) {
    return CrossTenantTransferModelForm(crossTenantTransferModel, form, path);
  }

  @override
  void updateValue(
    CrossTenantTransferModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          CrossTenantTransferModelForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void reset({
    CrossTenantTransferModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(
          CrossTenantTransferModel? crossTenantTransferModel) =>
      FormGroup({
        documentControlName: FormControl<BdayaBLCIRMStateMeiliDocumentDto>(
            value: crossTenantTransferModel?.document,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        tenantControlName: FormControl<BdayaBLCIRMTenantsAppTenantDto>(
            value: crossTenantTransferModel?.tenant,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        countControlName: FormControl<int>(
            value: crossTenantTransferModel?.count,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        notesControlName: FormControl<String>(
            value: crossTenantTransferModel?.notes,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        pricePerItemControlName: FormControl<num>(
            value: crossTenantTransferModel?.pricePerItem,
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

class ReactiveCrossTenantTransferModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveCrossTenantTransferModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(CrossTenantTransferModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      CrossTenantTransferModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      CrossTenantTransferModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCrossTenantTransferModelForm.of(context);

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

class ReactiveCrossTenantTransferModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveCrossTenantTransferModelFormFormGroupArrayBuilder({
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
      CrossTenantTransferModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      CrossTenantTransferModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      CrossTenantTransferModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCrossTenantTransferModelForm.of(context);

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
