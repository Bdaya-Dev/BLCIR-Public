import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:reactive_flutter_typeahead/reactive_flutter_typeahead.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_language_picker/reactive_language_picker.dart';

class ReactiveDocumentFields {
  static Iterable<Widget> build(
    BuildContext context, {
    required DocumentModelForm form,
    required DocumentFormControllerMixin controller,
  }) sync* {
    final metadataDef = controller.apiService.metadata.of(context);
    final metadataDefDict =
        Map.fromEntries(metadataDef.map((e) => MapEntry(e.id!, e)));
    yield ReactiveTextField(
      formControl: form.titleControl,
      decoration: const InputDecoration(
        labelText: 'Resource Title',
      ),
    );
    yield ReactiveLanguagePickerDialog(
      formControl: form.languageControl,
      valueAccessor: LanguageCodeValueAccessor(),
      languages: [
        Languages.arabic,
        Languages.english,
      ],
      builder: (context, language, showDialog) => ListTile(
        title: AppText(
          language == null
              ? "Select Language"
              : '${language.name} (${language.isoCode})',
        ),
        subtitle: const AppText("Language"),
        onTap: showDialog,
      ),
    );
    yield ReactiveDocumentModelFormArrayBuilder<BdayaBLCIRMStateAuthorDto>(
      formControl: form.authorsControl,
      itemBuilder: (context, i, item, formModel) {
        return ListTile(
          leading: IconButton(
            onPressed: () {
              formModel.authorsControl.removeAt(i);
            },
            icon: const Icon(Icons.delete),
          ),
          title: AppText(item?.info?.name ?? '-'),
        );
      },
      builder: (context, itemList, formModel) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TypeAheadField<ResultContainer<BdayaBLCIRMStateAuthorDto>>(
              textFieldConfiguration: TextFieldConfiguration(
                controller: controller.searchAuthorsController,
                decoration: InputDecoration(
                  icon: IconButton(
                    onPressed: () =>
                        controller.startAuthorAddFlow(context, form),
                    icon: const Icon(Icons.person_add_alt_1),
                  ),
                  labelText: 'Add Authors',
                ),
              ),
              suggestionsBoxDecoration: const SuggestionsBoxDecoration(
                constraints: BoxConstraints(maxHeight: 600),
              ),
              suggestionsCallback: controller.getAuthorSuggestions,
              itemBuilder: (context, itemData) {
                return ListTile(
                  title: HighlightedText(
                    preTag: '<em>',
                    postTag: '</em>',
                    original: itemData.original['_formatted']?['Info']
                            ?['Name'] ??
                        itemData.object.info?.name ??
                        '-',
                  ),
                );
              },
              onSuggestionSelected: (suggestion) {
                formModel.addAuthorsItem(suggestion.object);
                controller.searchAuthorsController.clear();
              },
            ),
            const SizedBox(height: 8),
            ...itemList
          ],
        );
      },
    );
    yield ReactiveDocumentModelFormFormGroupArrayBuilder<MetadataValueForm>(
      extended: form.metadataValuesExtendedControl,
      // builder: (context, itemList, formModel) {

      // },
      itemBuilder: (context, i, item, formModel) {
        final key = item?.keyControl.value;
        if (item == null || key == null) {
          return const SizedBox.shrink();
        }
        final entry = metadataDefDict[key];
        if (entry == null) {
          return const SizedBox.shrink();
        }
        final formControl = item.valueControl;
        final decoration = InputDecoration(
          labelText: entry.title,
          hintText: entry.description,
        );
        switch (entry.type) {
          //Text
          case BdayaBLCIRMStateDocumentMetadataType.number0:
            return ReactiveTextField(
              formControl: formControl,
              decoration: decoration,
            );
          //DateTime
          case BdayaBLCIRMStateDocumentMetadataType.number1:
          //Number
          case BdayaBLCIRMStateDocumentMetadataType.number2:
            return ReactiveTextField<Object>(
              formControl: formControl,
              decoration: decoration,
              valueAccessor: ValidationValueAccessor(
                accessor: NumValueAccessor(),
                validators: [
                  (value) =>
                      (value == null) || !numberRegex.hasMatch(value.toString())
                          ? <String, dynamic>{ValidationMessage.number: true}
                          : null,
                ],
              ),
            );
          //Boolean
          case BdayaBLCIRMStateDocumentMetadataType.number3:
          default:
            return AppText("Not Supported form field! ${entry.type}");
        }
      },
    );
  }
}
