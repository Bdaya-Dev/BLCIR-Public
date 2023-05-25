import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:reactive_flutter_typeahead/reactive_flutter_typeahead.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'form.dart';

class CreateLoanView extends StatelessWidget {
  const CreateLoanView({
    super.key,
    required this.controller,
  });

  final CreateLoanController controller;

  static Future<BdayaBLCIRMStateFullLoanDetailsDto?> showModal(
    BuildContext context, {
    CreateLoanParams? params,
  }) async {
    return await showDialog<BdayaBLCIRMStateFullLoanDetailsDto>(
      context: context,
      builder: (context) => HookBuilder(
        builder: (context) => Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CreateLoanView(
              controller: useBdayaViewController(
                hookMode: BdayaGetItHookMode.factory,
                param1: params,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CreateLoanModelFormBuilder(
      model: controller.initialModelRx.of(context),
      initState: (context, formModel) => controller.formRx.$ = formModel,
      builder: (context, form, _) {
        return ListView(
          shrinkWrap: true,
          children: [
            ReactiveCreateLoanModelFormConsumer(
              builder: (context, form, _) => BdayaLoadableAreaWrapper.custom(
                area: controller.defaultArea,
                customBuilder: (context, state) => Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    AppText(
                      'Add New Loan',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    if (state.isLoading)
                      const CircularProgressIndicator.adaptive()
                    else ...[
                      IconButton(
                        onPressed: form.form.valid
                            ? () => controller.submit(context, form: form)
                            : null,
                        icon: const Icon(Icons.check),
                      ),
                      IconButton(
                        onPressed: () => controller.reset(
                          context,
                          form: form,
                        ),
                        icon: const Icon(Icons.restore),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            ReactiveTypeAhead<ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>,
                ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>>(
              formControl: form.documentControl,
              stringify: (value) => value.object.info?.title ?? '',
              suggestionsCallback: (pattern) => controller.requestBookItems(
                searchText: pattern,
                limit: 50,
                offset: 0,
                currentFacetFilter: {},
              ).then(
                (value) => value?.mappedRes.map((e) => e.hits).flattened ?? [],
              ),
              textFieldConfiguration: const TextFieldConfiguration(
                decoration: InputDecoration(
                  labelText: "Documents",
                  hintText: "Search for document ...",
                ),
              ),
              itemBuilder: (context, itemData) => BookViewerWidget(
                item: itemData,
                focusLibraryId: controller.initialParams?.libraryId,
                tapToNavigate: false,
              ),
            ),
            ReactiveTypeAhead<ResultContainer<BdayaBLCIRMStatePersonDto>,
                ResultContainer<BdayaBLCIRMStatePersonDto>>(
              formControl: form.userControl,
              stringify: (value) => value.object.info?.name ?? '',
              suggestionsCallback: (pattern) =>
                  controller.fetchPeoplePage(pattern),
              textFieldConfiguration: TextFieldConfiguration(
                decoration: InputDecoration(
                  icon: IconButton(
                    onPressed: () => controller.startAddPersonFlow(
                      context,
                      form: form,
                    ),
                    icon: const Icon(Icons.person_add),
                  ),
                  labelText: "Person",
                  hintText: "Search for person ...",
                ),
              ),
              itemBuilder: (context, itemData) => ListTile(
                title: HighlightedText(
                  original: itemData.formattedOr(
                        'Info.Name',
                        (item) => item.info?.name,
                      ) ??
                      '',
                  preTag: '<em>',
                  postTag: '</em>',
                ),
              ),
            ),
            ReactiveFormField<Date, Date>(
              formControl: form.returnDateControl,
              builder: (field) => TextField(
                readOnly: true,
                controller: TextEditingController(
                  text: field.value?.toString(),
                ),
                decoration: InputDecoration(
                  labelText: 'Return Date',
                  icon: IconButton(
                    onPressed: () async {
                      final res = await showDatePicker(
                        context: context,
                        initialDate:
                            field.value?.toDateTime() ?? DateTime.now().toUtc(),
                        firstDate: DateTime.now().toUtc(),
                        lastDate: DateTime.now()
                            .toUtc()
                            .add(const Duration(days: 365 * 3)),
                        initialDatePickerMode: DatePickerMode.day,
                        initialEntryMode: DatePickerEntryMode.calendar,
                      );
                      if (res != null) {
                        field.didChange(res.toDate());
                      }
                    },
                    icon: const Icon(Icons.calendar_month),
                  ),
                ),
              ),
            ),
            ReactiveTextField(
              decoration: const InputDecoration(
                labelText: "How many copies",
              ),
              formControl: form.amountControl,
              valueAccessor: IntValueAccessor(),
            )
          ],
        );
      },
    );
  }
}
