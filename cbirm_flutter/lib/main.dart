import 'package:blcirm_api/blcirm_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:cbirm_flutter/common.dart';

import 'src/app.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(
    bdayaOnRecordHandlerFactory(
      showSequenceNumber: false,
    ),
  );
  bdayaDefaultLoadableAreaIsLoadingBuilder = (context, displayName) =>
      const Center(child: CircularProgressIndicator.adaptive());
  setPathUrlStrategy();
  getIt.allowReassignment = true;
  configureDependencies();
  standardSerializers = (standardSerializers.toBuilder()
        ..addBuilderFactory(
          const FullType(BuiltList, [FullType(NameValue)]),
          () => ListBuilder<NameValue>(),
        ))
      .build();
  runApp(SharedValue.wrapApp(const MyApp()));
}
