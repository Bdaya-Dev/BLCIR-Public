import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:meilisearch/meilisearch.dart';

@lazySingleton
class MeiliSearchService with BdayaLoggableMixin {
  // final config =
  //     SharedValue<BdayaBLCIRMTenantsMeiliSearchConfigDto?>(value: null);
  final client = SharedValue<MeiliSearchClient?>(value: null);

  MeiliSearchIndex? tryGetIndexByName(
      String? Function(BdayaBLCIRMMeiliSearchMeiliSearchIndexNames names) fun) {
    final c = client.$;
    final conf = apiService.config.$;
    final indexNames = conf?.indexNames;
    if (c == null || conf == null || indexNames == null) return null;
    final name = fun(indexNames);
    if (name == null) return null;
    return c.index(name);
  }

  MeiliSearchIndex? get tenants => tryGetIndexByName((names) => names.tenants);
  // MeiliSearchIndex? get documents =>
  //     tryGetIndexByName((names) => names.documents);
  MeiliSearchIndex? get people => tryGetIndexByName((names) => names.people);
  MeiliSearchIndex? get loans => tryGetIndexByName((names) => names.loans);

  final ApiService apiService;

  MeiliSearchService(this.apiService);

  Future<void> init() async {
    apiService.config.streamWithInitial.listen((event) {
      final url = event?.url;
      client.$ = event == null || url == null
          ? null
          : MeiliSearchClient(url, event.apiKey, const Duration(seconds: 5));
    });
  }
}
