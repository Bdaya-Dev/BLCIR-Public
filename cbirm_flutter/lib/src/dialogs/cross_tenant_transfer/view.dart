import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:reactive_flutter_typeahead/reactive_flutter_typeahead.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'form.dart';

class CrossTenantTransferView extends StatelessWidget {
  const CrossTenantTransferView({
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
        builder: (context) => CrossTenantTransferView(
          controller: useBdayaViewController(
            hookMode: hookMode,
            instanceName: instanceName,
            keys: keys,
            param1: param1,
            param2: param2,
          ),
        ),
      );

  static Future<BdayaBLCIRMTransferPhysicalDocumentsTransactionInfoDto?> showModal(
    BuildContext context, {
    CrossTenantTransferFormParameters? params,
  }) async {
    return await showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: hooked(
            param1: params,
          ),
        ),
      ),
    );
  }

  final CrossTenantTransferController controller;

  @override
  Widget build(BuildContext context) {
    return CrossTenantTransferModelFormBuilder(
      model: controller.initialModelRx.of(context),
      initState: (context, formModel) => controller.formRx.$ = formModel,
      builder: (context, form, _) {
        return ListView(
          shrinkWrap: true,
          children: [
            ReactiveCrossTenantTransferModelFormConsumer(
              builder: (context, form, _) => BdayaLoadableAreaWrapper.custom(
                area: controller.defaultArea,
                customBuilder: (context, state) => Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    AppText(
                      'Transfer Documents To Tenant',
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
            ReactiveTypeAhead<BdayaBLCIRMStateMeiliDocumentDto,
                ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>>(
              formControl: form.documentControl,
              stringify: (value) => value.object.info?.title ?? '',
              valueAccessor: ResultContainerValueAccessor<
                  BdayaBLCIRMStateMeiliDocumentDto>(),
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
                  labelText: "Document",
                  hintText: "Search for document ...",
                ),
              ),
              itemBuilder: (context, itemData) => BookViewerWidget(
                item: itemData,
                focusLibraryId: controller.parameters.libraryId,
                tapToNavigate: false,
              ),
            ),
            ReactiveTypeAhead<BdayaBLCIRMTenantsAppTenantDto,
                ResultContainer<BdayaBLCIRMTenantsAppTenantDto>>(
              formControl: form.tenantControl,
              stringify: (value) => value.object.name ?? '',
              valueAccessor: ResultContainerValueAccessor<
                  BdayaBLCIRMTenantsAppTenantDto>(),
              suggestionsCallback: controller.fetchTenantsPage,
              textFieldConfiguration: const TextFieldConfiguration(
                decoration: InputDecoration(
                  labelText: "Target Tenant",
                  hintText: "Search for tenant ...",
                ),
              ),
              itemBuilder: (context, itemData) => ListTile(
                title: HighlightedText(
                  original: itemData.formattedOr(
                        'Name',
                        (item) => item.name,
                      ) ??
                      '',
                  preTag: '<em>',
                  postTag: '</em>',
                ),
              ),
            ),
            ReactiveTextField(
              decoration: const InputDecoration(
                labelText: "How many copies",
              ),
              formControl: form.countControl,
              valueAccessor: IntValueAccessor(),
            )
          ],
        );
      },
    );
  }
}
