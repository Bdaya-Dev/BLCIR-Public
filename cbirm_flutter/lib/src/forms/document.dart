import 'package:blcirm_api/blcirm_api.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import 'package:cbirm_flutter/common.dart';

part 'document.gform.dart';

@ReactiveFormAnnotation()
class DocumentModel {
  final String title;
  final String? language;
  final List<String> coverImageContentHashes;
  final List<String> contentHashes;
  final List<BdayaBLCIRMStateAuthorDto> authors;
  final List<MetadataValue> metadataValues;

  const DocumentModel({
    @FormControlAnnotation(validators: [requiredValidator]) this.title = '',
    @FormControlAnnotation(validators: [requiredValidator]) this.language,
    @FormArrayAnnotation() this.coverImageContentHashes = const [],
    @FormArrayAnnotation() this.contentHashes = const [],
    @FormArrayAnnotation() this.authors = const [],
    @FormArrayAnnotation() this.metadataValues = const [],
  });

  DocumentModel copyWith({
    String? title,
    String? language,
    List<String>? coverImageContentHashes,
    List<String>? contentHashes,
    List<BdayaBLCIRMStateAuthorDto>? authors,
    List<MetadataValue>? metadataValues,
  }) {
    return DocumentModel(
      title: title ?? this.title,
      language: language ?? this.language,
      coverImageContentHashes: coverImageContentHashes ?? this.coverImageContentHashes,
      contentHashes: contentHashes ?? this.contentHashes,
      authors: authors ?? this.authors,
      metadataValues: metadataValues ?? this.metadataValues,
    );
  }
}

@FormGroupAnnotation()
class MetadataValue {
  final String key;

  final Object? value;

  const MetadataValue({
    @FormControlAnnotation() required this.key,
    @FormControlAnnotation() this.value,
  });
}
