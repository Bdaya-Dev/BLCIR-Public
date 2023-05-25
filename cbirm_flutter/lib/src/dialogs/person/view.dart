import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'form.dart';
import 'controller.dart';

class PersonView extends StatelessWidget {
  const PersonView({
    super.key,
    required this.controller,
  });

  final PersonController controller;

  static Future<BdayaBLCIRMStatePersonDto?> showModal(
    BuildContext context, {
    String? initialId,
    required bool isAuthor,
  }) async {
    return await showDialog<BdayaBLCIRMStatePersonDto>(
      context: context,
      builder: (context) => HookBuilder(
        builder: (context) => Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: PersonView(
              controller: useBdayaViewController(
                hookMode: BdayaGetItHookMode.factory,
                param1: PersonControllerParameters(
                  initialId: initialId,
                  isAuthor: isAuthor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PersonModelFormBuilder(
      model: controller.initialModelRx.of(context),
      initState: (context, formModel) => controller.formRx.$ = formModel,
      builder: (context, form, _) {
        return ListView(
          shrinkWrap: true,
          children: [
            ReactivePersonModelFormConsumer(
              builder: (context, form, _) => BdayaLoadableAreaWrapper.custom(
                  area: controller.defaultArea,
                  customBuilder: (context, state) {
                    return Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        AppText(
                          'Add New ${controller.params.isAuthor ? "Author" : "Person"}',
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
                    );
                  }),
            ),
            ReactiveTextField<String>(
              formControl: form.nameControl,
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            ReactiveTextField(
              formControl: form.countryCodeIso3166Control,
              decoration: const InputDecoration(
                  labelText: 'Country code', hintText: 'ISO 3166 country code'),
            ),
            ReactiveFormField<Date, Date>(
              formControl: form.birthdayControl,
              builder: (field) => TextField(
                readOnly: true,
                controller: TextEditingController(
                  text: field.value?.toString(),
                ),
                decoration: InputDecoration(
                  labelText: "Date of birth",
                  icon: IconButton(
                    onPressed: () async {
                      final res = await showDatePicker(
                        context: context,
                        initialDate:
                            field.value?.toDateTime() ?? DateTime.now().toUtc(),
                        firstDate: DateTime(1600, 1, 1),
                        lastDate: DateTime.now().toUtc(),
                        initialDatePickerMode: DatePickerMode.year,
                        initialEntryMode: DatePickerEntryMode.input,
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
          ],
        );
      },
    );
  }
}
