import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:cbirm_flutter/src/pages/new_library/form.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'controller.dart';

class NewLibraryView extends StatefulWidget {
  const NewLibraryView({
    super.key,
    required this.controller,
  });

  final NewLibraryController controller;

  @override
  State<NewLibraryView> createState() => _NewLibraryViewState();
}

class _NewLibraryViewState extends State<NewLibraryView> {
  final _obscureText = <String, bool>{};
  void _toggle(String name) {
    setState(() {
      final prev = _obscureText[name];
      _obscureText[name] = !(prev ?? true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return NewLibraryModelFormBuilder(
      model: widget.controller.initialModelRx.of(context),
      initState: (context, formModel) {
        widget.controller.formRx.$ = formModel;
      },
      builder: (context, form, child) {
        return ListView(
          children: [
            BdayaLoadableAreaWrapper.custom(
              area: widget.controller.defaultArea,
              customBuilder: (context, area) => Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  const AppText(
                    "Create New Tenant",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (area.isLoading)
                    const CircularProgressIndicator.adaptive()
                  else ...[
                    ElevatedButton.icon(
                      onPressed: form.form.valid
                          ? () => widget.controller.submit(context, form: form)
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        foregroundColor:
                            Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                      icon: const Icon(Icons.check),
                      label: const AppText("Submit"),
                    ),
                    ElevatedButton.icon(
                      onPressed: () =>
                          widget.controller.reset(context, form: form),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.errorContainer,
                        foregroundColor:
                            Theme.of(context).colorScheme.onErrorContainer,
                      ),
                      label: const AppText("Reset"),
                      icon: const Icon(Icons.restore),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 8),
            ReactiveTextField(
              formControl: form.nameControl,
              decoration: const InputDecoration(
                labelText: 'Organization Name',
              ),
            ),
            const SizedBox(height: 8),
            ReactiveDropdownField<BdayaBLCIRMOrgType>(
              formControl: form.orgTypeControl,
              decoration: const InputDecoration(
                labelText: 'Organization Type',
              ),
              items: const [
                DropdownMenuItem(
                  value: BdayaBLCIRMOrgType.number0,
                  child: AppText("Library"),
                ),
                DropdownMenuItem(
                  value: BdayaBLCIRMOrgType.number1,
                  child: AppText("Publisher"),
                ),
                DropdownMenuItem(
                  value: BdayaBLCIRMOrgType.number2,
                  child: AppText("Trusted Authority"),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ReactiveTextField(
              formControl: form.emailControl,
              decoration: const InputDecoration(
                labelText: 'Admin Email (For Login)',
              ),
            ),
            const SizedBox(height: 8),
            Builder(
              builder: (context) {
                final isObscure =
                    _obscureText[NewLibraryModelForm.passwordControlName] ??
                        true;
                return ReactiveTextField(
                  formControl: form.passwordControl,
                  decoration: InputDecoration(
                    labelText: 'Admin Password (For Login)',
                    suffixIcon: IconButton(
                      onPressed: () =>
                          _toggle(NewLibraryModelForm.passwordControlName),
                      icon: Icon(
                        isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      tooltip: isObscure ? "Show Password" : "Hide Password",
                    ),
                  ),
                  obscureText:
                      _obscureText[NewLibraryModelForm.passwordControlName] ??=
                          true,
                );
              },
            ),
            const SizedBox(height: 16),
            const AppText(
              "General Information",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ReactiveTextField(
              formControl: form.infoForm.addressControl,
              decoration: const InputDecoration(
                labelText: 'Full Address',
              ),
            ),
            const SizedBox(height: 8),
            ReactiveTextField(
              formControl: form.infoForm.emailControl,
              decoration: const InputDecoration(
                labelText: 'Contact Email (can be different from admin email)',
              ),
            ),
            const SizedBox(height: 8),
            ReactiveTextField(
              formControl: form.infoForm.logoControl,
              decoration: const InputDecoration(
                labelText: 'Logo Image Url',
              ),
            ),
            const SizedBox(height: 8),
            ReactiveDatePicker(
              formControl: form.infoForm.creationTimeControl,
              builder: (context, picker, child) {
                return ListTile(
                  onTap: picker.showPicker,
                  title: const AppText("Founded At"),
                  subtitle: picker.value == null
                      ? null
                      : AppText(picker.value!.toIso8601String()),
                );
              },
              firstDate: DateTime(1700, 1, 1),
              lastDate: DateTime.now(),
            ),
          ],
        );
      },
    );
  }
}
