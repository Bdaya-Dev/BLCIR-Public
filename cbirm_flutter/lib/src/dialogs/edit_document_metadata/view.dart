import 'package:cbirm_flutter/common.dart';
import 'controller.dart';

class EditDocumentMetadataView extends StatelessWidget {
  const EditDocumentMetadataView({
    super.key,
    required this.controller,
  });

  static Widget hooked({
    BdayaGetItHookMode hookMode = BdayaGetItHookMode.factory,
    String? instanceName,
    Object? param1,
    Object? param2,
    List<Object?>? keys,
  }) =>
      HookBuilder(
        builder: (context) => EditDocumentMetadataView(
          controller: useBdayaViewController(
            hookMode: hookMode,
            instanceName: instanceName,
            keys: keys,
            param1: param1,
            param2: param2,
          ),
        ),
      );

  
  static Future<bool?> showModal(
    BuildContext context, {
    required EditDocumentMetadataFormParameters params,
  }) async {
    return await showDialog<bool>(
      context: context,
      builder: (context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: hooked(
            param1: params,
          ),
        ),
      ),
    );
  }

  final EditDocumentMetadataController controller;

  @override
  Widget build(BuildContext context) {
    final model = controller.initialModelRx.of(context);
    return DocumentModelFormBuilder(
      model: controller.initialModelRx.of(context),
      initState: (context, formModel) => controller.formRx.$ = formModel,
      builder: (context, form, _) {
        return ListView(
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
                        'Update Resource',
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
        );
      },
    );
  }
}
