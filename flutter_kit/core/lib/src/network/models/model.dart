// ignore_for_file: avoid_dynamic_calls, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

part 'model.g.dart';

typedef FromJson<T> = T Function(Map<String, dynamic> json);

dynamic toNull(_) {
  return null;
}

class MessageIn {
  MessageIn._();

  // ignore: avoid_annotating_with_dynamic
  static Map<String, dynamic> of(dynamic data) => {'Data': data};
}

class MessageOut<T> {
  MessageOutPaginationMetadata? get paginationMetadata => _paginationMetadata;
  MessageOutPaginationMetadata? _paginationMetadata;

  List<T> get items => _items;
  late List<T> _items;

  T get item => _item;
  late T _item;

  T Function(Map<String, dynamic>) dataFromJson;

  MessageOut({
    required this.dataFromJson,
  });

  MessageOut<T> listFromJson(Map<String, dynamic> json) {
    _items = (json['Data'] as List<dynamic>).map((e) => dataFromJson.call(e as Map<String, dynamic>)).toList();
    final metadata = json['Metadata'];
    if (metadata != null) {
      _paginationMetadata = MessageOutPaginationMetadata.fromJson(metadata as Map<String, dynamic>);
    }
    return this;
  }

  MessageOut<T> singleFromJson(Map<String, dynamic> json) {
    final item = json['Data'] as Map<String, dynamic>;
    _item = dataFromJson.call(item);
    final metadata = json['Metadata'];
    if (metadata != null) {
      _paginationMetadata = MessageOutPaginationMetadata.fromJson(metadata as Map<String, dynamic>);
    }
    return this;
  }
}

class MessageOutError {
  final String message;
  final int code;

  MessageOutError(this.message, this.code);

  // ignore: avoid_annotating_with_dynamic
  static MessageOutError? fromJson(dynamic json) {
    if (json is Map<String, dynamic> && json['Error'] != null) {
      final error = json['Error'];
      if (error != null) {
        final message = error['Message'];
        final code = error['Code'];

        return MessageOutError(
          message is String ? message : '',
          code is int ? code : -1,
        );
      }
    }

    return null;
  }
}

@freezed
class MessageOutPaginationMetadata with _$MessageOutPaginationMetadata {
  factory MessageOutPaginationMetadata({
    @JsonKey(name: 'TotalPages') @Default(1) int totalPages,
  }) = _MessageOutPaginationMetadata;

  factory MessageOutPaginationMetadata.fromJson(Map<String, dynamic> json) =>
      _$MessageOutPaginationMetadataFromJson(json);
}

@freezed
class PaginationAndFilter with _$PaginationAndFilter {
  factory PaginationAndFilter({
    required int limit,
    required int page,
    String? sort,
    String? searchByName,
    String? searchBy,
    String? parentId,
  }) = _PaginationAndFilter;

  const PaginationAndFilter._();
}
