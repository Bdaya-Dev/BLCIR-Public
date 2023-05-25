// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'document.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveDocumentModelFormConsumer extends StatelessWidget {
  const ReactiveDocumentModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, DocumentModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDocumentModelForm.of(context);

    if (formModel is! DocumentModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class DocumentModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const DocumentModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final DocumentModelForm form;
}

class ReactiveDocumentModelForm extends StatelessWidget {
  const ReactiveDocumentModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final DocumentModelForm form;

  final WillPopCallback? onWillPop;

  static DocumentModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              DocumentModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        DocumentModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as DocumentModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return DocumentModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class DocumentModelFormBuilder extends StatefulWidget {
  const DocumentModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final DocumentModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, DocumentModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, DocumentModelForm formModel)?
      initState;

  @override
  _DocumentModelFormBuilderState createState() =>
      _DocumentModelFormBuilderState();
}

class _DocumentModelFormBuilderState extends State<DocumentModelFormBuilder> {
  late DocumentModelForm _formModel;

  @override
  void initState() {
    _formModel = DocumentModelForm(
        widget.model, DocumentModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant DocumentModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = DocumentModelForm(
          widget.model, DocumentModelForm.formElements(widget.model), null);

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
    return ReactiveDocumentModelForm(
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

class DocumentModelForm implements FormModel<DocumentModel> {
  DocumentModelForm(
    this.documentModel,
    this.form,
    this.path,
  ) {
    metadataValuesMetadataValueForm = (documentModel?.metadataValues ?? [])
        .asMap()
        .map((k, v) => MapEntry(
            k, MetadataValueForm(v, form, pathBuilder("metadataValues.$k"))))
        .values
        .toList();
  }

  static const String titleControlName = "title";

  static const String languageControlName = "language";

  static const String coverImageContentHashesControlName =
      "coverImageContentHashes";

  static const String contentHashesControlName = "contentHashes";

  static const String authorsControlName = "authors";

  static const String metadataValuesControlName = "metadataValues";

  final DocumentModel? documentModel;

  final FormGroup form;

  final String? path;

  late List<MetadataValueForm> metadataValuesMetadataValueForm;

  String titleControlPath() => pathBuilder(titleControlName);
  String languageControlPath() => pathBuilder(languageControlName);
  String coverImageContentHashesControlPath() =>
      pathBuilder(coverImageContentHashesControlName);
  String contentHashesControlPath() => pathBuilder(contentHashesControlName);
  String authorsControlPath() => pathBuilder(authorsControlName);
  String metadataValuesControlPath() => pathBuilder(metadataValuesControlName);
  String get _titleValue => titleControl.value ?? "";
  String? get _languageValue => languageControl?.value;
  List<String> get _coverImageContentHashesValue =>
      coverImageContentHashesControl.value?.whereType<String>().toList() ?? [];
  List<String> get _contentHashesValue =>
      contentHashesControl.value?.whereType<String>().toList() ?? [];
  List<BdayaBLCIRMStateAuthorDto> get _authorsValue =>
      authorsControl.value?.whereType<BdayaBLCIRMStateAuthorDto>().toList() ??
      [];
  List<MetadataValue> get _metadataValuesValue =>
      metadataValuesMetadataValueForm
          .asMap()
          .map(
            (k, v) => MapEntry(
              k,
              v
                  .copyWithPath(
                    pathBuilder("metadataValues.$k"),
                  )
                  .model,
            ),
          )
          .values
          .toList();
  bool get containsTitle {
    try {
      form.control(titleControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLanguage {
    try {
      form.control(languageControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCoverImageContentHashes {
    try {
      form.control(coverImageContentHashesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsContentHashes {
    try {
      form.control(contentHashesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAuthors {
    try {
      form.control(authorsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMetadataValues {
    try {
      form.control(metadataValuesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get titleErrors => titleControl.errors;
  Object? get languageErrors => languageControl?.errors;
  Object? get coverImageContentHashesErrors =>
      coverImageContentHashesControl.errors;
  Object? get contentHashesErrors => contentHashesControl.errors;
  Object? get authorsErrors => authorsControl.errors;
  Object? get metadataValuesErrors => metadataValuesControl.errors;
  void get titleFocus => form.focus(titleControlPath());
  void get languageFocus => form.focus(languageControlPath());
  void get coverImageContentHashesFocus =>
      form.focus(coverImageContentHashesControlPath());
  void get contentHashesFocus => form.focus(contentHashesControlPath());
  void get authorsFocus => form.focus(authorsControlPath());
  void get metadataValuesFocus => form.focus(metadataValuesControlPath());
  void languageRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsLanguage) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          languageControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            languageControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void titleValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    titleControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void languageValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    languageControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void coverImageContentHashesValueUpdate(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    coverImageContentHashesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void contentHashesValueUpdate(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    contentHashesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void authorsValueUpdate(
    List<BdayaBLCIRMStateAuthorDto> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    authorsControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void metadataValuesValueUpdate(
    List<MetadataValue> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if ((value).isEmpty) {
      metadataValuesClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final updateList = (value)
        .asMap()
        .map(
          (k, v) => MapEntry(
            k,
            MetadataValueForm(v, form, pathBuilder("metadataValues.$k")),
          ),
        )
        .values
        .toList();

    metadataValuesMetadataValueForm.clear();
    metadataValuesMetadataValueForm.addAll(updateList);

    final toUpdate = <MetadataValueForm>[];
    final toAdd = <MetadataValueForm>[];

    updateList.asMap().forEach((k, v) {
      if (metadataValuesMetadataValueForm.asMap().containsKey(k) &&
          (metadataValuesControl.value ?? []).asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      metadataValuesControl.updateValue(
          toUpdate
              .map((e) =>
                  MetadataValueForm.formElements(e.metadataValue).rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        metadataValuesControl.add(
            MetadataValueForm.formElements(e.metadataValue),
            updateParent: updateParent,
            emitEvent: emitEvent);
      });
    }
  }

  void metadataValuesInsert(
    int i,
    MetadataValue value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (metadataValuesMetadataValueForm.length < i) {
      addMetadataValuesItem(value);
      return;
    }

    final item = MetadataValueForm(
      value,
      form,
      pathBuilder('metadataValues.$i'),
    );

    metadataValuesMetadataValueForm.insert(i, item);

    metadataValuesMetadataValueForm.asMap().forEach((k, v) {
      if (k > i) {
        metadataValuesMetadataValueForm[k] = v.copyWithPath(
          pathBuilder("metadataValues.$k"),
        );
      }
    });

    metadataValuesControl.insert(
      i,
      MetadataValueForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void metadataValuesClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    metadataValuesMetadataValueForm.clear();
    metadataValuesControl.clear(
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void titleValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    titleControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void languageValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    languageControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void coverImageContentHashesValuePatch(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    coverImageContentHashesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void contentHashesValuePatch(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    contentHashesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void authorsValuePatch(
    List<BdayaBLCIRMStateAuthorDto> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    authorsControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void metadataValuesValuePatch(
    List<MetadataValue> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = metadataValuesMetadataValueForm.asMap().keys;

    final toPatch = <MetadataValueForm>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          final patch =
              MetadataValueForm(v, form, pathBuilder("metadataValues.$k"));
          metadataValuesMetadataValueForm[k] = patch;
          toPatch.add(patch);
        }
      },
    );

    metadataValuesControl.patchValue(
        toPatch
            .map(
                (e) => MetadataValueForm.formElements(e.metadataValue).rawValue)
            .toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void titleValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      titleControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void languageValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      languageControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void coverImageContentHashesValueReset(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      coverImageContentHashesControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void contentHashesValueReset(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      contentHashesControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void authorsValueReset(
    List<BdayaBLCIRMStateAuthorDto> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      authorsControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void metadataValuesValueReset(
    List<MetadataValue> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      metadataValuesControl.reset(
          value: value
              .map((e) => MetadataValueForm.formElements(e).rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<String> get titleControl =>
      form.control(titleControlPath()) as FormControl<String>;
  FormControl<String>? get languageControl => containsLanguage
      ? form.control(languageControlPath()) as FormControl<String>?
      : null;
  FormArray<String> get coverImageContentHashesControl =>
      form.control(coverImageContentHashesControlPath()) as FormArray<String>;
  FormArray<String> get contentHashesControl =>
      form.control(contentHashesControlPath()) as FormArray<String>;
  FormArray<BdayaBLCIRMStateAuthorDto> get authorsControl =>
      form.control(authorsControlPath())
          as FormArray<BdayaBLCIRMStateAuthorDto>;
  FormArray<Map<String, Object?>> get metadataValuesControl =>
      form.control(metadataValuesControlPath())
          as FormArray<Map<String, Object?>>;
  void titleSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      titleControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      titleControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void languageSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      languageControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      languageControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void coverImageContentHashesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      coverImageContentHashesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      coverImageContentHashesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void contentHashesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      contentHashesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      contentHashesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void authorsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      authorsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      authorsControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void metadataValuesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      metadataValuesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      metadataValuesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<MetadataValueForm>>
      get metadataValuesExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<MetadataValueForm>>(
              form.control(metadataValuesControlPath())
                  as FormArray<Map<String, Object?>>,
              () => metadataValuesMetadataValueForm);
  void addCoverImageContentHashesItem(
    String value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    coverImageContentHashesControl.add(FormControl<String>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  void addContentHashesItem(
    String value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    contentHashesControl.add(FormControl<String>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  void addAuthorsItem(
    BdayaBLCIRMStateAuthorDto value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    authorsControl.add(FormControl<BdayaBLCIRMStateAuthorDto>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  void addMetadataValuesItem(MetadataValue value) {
    final formClass = MetadataValueForm(
        value,
        form,
        pathBuilder(
            'metadataValues.${metadataValuesMetadataValueForm.length}'));

    metadataValuesMetadataValueForm.add(formClass);
    metadataValuesControl.add(MetadataValueForm.formElements(value));
  }

  void removeMetadataValuesItemAtIndex(int i) {
    if (metadataValuesMetadataValueForm.asMap().containsKey(i) &&
        (metadataValuesControl.value ?? []).asMap().containsKey(i)) {
      metadataValuesMetadataValueForm.removeAt(i);

      metadataValuesMetadataValueForm.asMap().forEach((k, v) {
        metadataValuesMetadataValueForm[k] =
            v.copyWithPath(pathBuilder("metadataValues.$k"));
      });

      metadataValuesControl.removeAt(i);
    }
  }

  void addMetadataValuesItemList(List<MetadataValue> value) {
    value.map((e) => addMetadataValuesItem(e));
  }

  @override
  DocumentModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return DocumentModel(
        title: _titleValue,
        language: _languageValue,
        coverImageContentHashes: _coverImageContentHashesValue,
        contentHashes: _contentHashesValue,
        authors: _authorsValue,
        metadataValues: _metadataValuesValue);
  }

  DocumentModelForm copyWithPath(String? path) {
    return DocumentModelForm(documentModel, form, path);
  }

  @override
  void updateValue(
    DocumentModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(DocumentModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    DocumentModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(DocumentModel? documentModel) => FormGroup({
        titleControlName: FormControl<String>(
            value: documentModel?.title,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        languageControlName: FormControl<String>(
            value: documentModel?.language,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        coverImageContentHashesControlName: FormArray<String>(
            (documentModel?.coverImageContentHashes ?? [])
                .map((e) => FormControl<String>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        contentHashesControlName: FormArray<String>(
            (documentModel?.contentHashes ?? [])
                .map((e) => FormControl<String>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        authorsControlName: FormArray<BdayaBLCIRMStateAuthorDto>(
            (documentModel?.authors ?? [])
                .map((e) => FormControl<BdayaBLCIRMStateAuthorDto>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        metadataValuesControlName: FormArray(
            (documentModel?.metadataValues ?? [])
                .map((e) => MetadataValueForm.formElements(e))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class MetadataValueForm implements FormModel<MetadataValue> {
  MetadataValueForm(
    this.metadataValue,
    this.form,
    this.path,
  ) {}

  static const String keyControlName = "key";

  static const String valueControlName = "value";

  final MetadataValue? metadataValue;

  final FormGroup form;

  final String? path;

  String keyControlPath() => pathBuilder(keyControlName);
  String valueControlPath() => pathBuilder(valueControlName);
  String get _keyValue => keyControl.value as String;
  Object? get _valueValue => valueControl?.value;
  bool get containsKey {
    try {
      form.control(keyControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsValue {
    try {
      form.control(valueControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get keyErrors => keyControl.errors;
  Object? get valueErrors => valueControl?.errors;
  void get keyFocus => form.focus(keyControlPath());
  void get valueFocus => form.focus(valueControlPath());
  void valueRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsValue) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          valueControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            valueControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void keyValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    keyControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void valueValueUpdate(
    Object? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    valueControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void keyValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    keyControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void valueValuePatch(
    Object? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    valueControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void keyValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      keyControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void valueValueReset(
    Object? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      valueControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get keyControl =>
      form.control(keyControlPath()) as FormControl<String>;
  FormControl<Object>? get valueControl => containsValue
      ? form.control(valueControlPath()) as FormControl<Object>?
      : null;
  void keySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      keyControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      keyControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void valueSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      valueControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      valueControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  MetadataValue get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return MetadataValue(key: _keyValue, value: _valueValue);
  }

  MetadataValueForm copyWithPath(String? path) {
    return MetadataValueForm(metadataValue, form, path);
  }

  @override
  void updateValue(
    MetadataValue value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(MetadataValueForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    MetadataValue? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(MetadataValue? metadataValue) => FormGroup({
        keyControlName: FormControl<String>(
            value: metadataValue?.key,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        valueControlName: FormControl<Object>(
            value: metadataValue?.value,
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

class ReactiveDocumentModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveDocumentModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(DocumentModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      DocumentModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, DocumentModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDocumentModelForm.of(context);

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

class ReactiveDocumentModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveDocumentModelFormFormGroupArrayBuilder({
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
      DocumentModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      DocumentModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, DocumentModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDocumentModelForm.of(context);

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
