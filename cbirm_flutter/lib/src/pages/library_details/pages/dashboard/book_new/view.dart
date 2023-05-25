import 'package:cbirm_flutter/common.dart';
import 'controller.dart';

class RegisterDocumentView extends StatelessWidget {
  const RegisterDocumentView({
    super.key,
    required this.controller,
  });

  final RegisterDocumentController controller;

  @override
  Widget build(BuildContext context) {
    final model = controller.initialModelRx.of(context);
    return DocumentModelFormBuilder(
      initState: (context, formModel) => controller.formRx.$ = formModel,
      model: model,
      builder: (context, form, child) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ReactiveDocumentModelFormConsumer(
              builder: (context, form, _) => BdayaLoadableAreaWrapper.custom(
                area: controller.defaultArea,
                customBuilder: (context, state) {
                  return Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      AppText(
                        'Add New Resource',
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
                            initial: model,
                          ),
                          icon: const Icon(Icons.restore),
                        ),
                      ],
                    ],
                  );
                },
              ),
            ),
            ...ReactiveDocumentFields.build(
              context,
              controller: controller,
              form: form,
            ),
          ],
        ),
      ),
    );
  }
}
