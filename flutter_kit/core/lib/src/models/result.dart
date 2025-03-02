import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network/network.dart';

part 'result.freezed.dart';

class ErrorMessage<T> {
  final ResultErrorType resultErrorType;
  final T? extra;

  const ErrorMessage({this.extra, required this.resultErrorType});
}

enum ResultErrorType {
  unauthorised(401),
  forbidden(403),
  noData(404),
  unProcessable(422),
  server(500),
  cancel(0),
  badConnection(1),
  parsing(2),
  uploadingFailed(3),
  download(-1),
  client(-2),
  other(-3);

  const ResultErrorType(this.value);

  final int value;

  static ResultErrorType fromObject(Object obj) {
    if (obj is DioException) {
      switch (obj.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.connectionError:
          return ResultErrorType.badConnection;
        case DioExceptionType.badResponse:
        case DioExceptionType.badCertificate:
          return ResultErrorType.server;
        case DioExceptionType.cancel:
          return ResultErrorType.cancel;
        case DioExceptionType.unknown:
          return ResultErrorType.other;
      }
    } else if (obj is SocketException) {
      return ResultErrorType.badConnection;
    } else {
      return ResultErrorType.other;
    }
  }
}

extension NetworkErrorTypeExtension on NetworkErrorType {
  ResultErrorType toResultErrorType() {
    switch (this) {
      case NetworkErrorType.cancel:
        return ResultErrorType.cancel;
      case NetworkErrorType.parsing:
        return ResultErrorType.parsing;
      case NetworkErrorType.unauthorised:
        return ResultErrorType.unauthorised;
      case NetworkErrorType.forbidden:
        return ResultErrorType.forbidden;
      case NetworkErrorType.noData:
        return ResultErrorType.noData;
      case NetworkErrorType.badConnection:
        return ResultErrorType.badConnection;
      case NetworkErrorType.server:
        return ResultErrorType.server;
      case NetworkErrorType.unprocessable:
        return ResultErrorType.unProcessable;
      case NetworkErrorType.badRequest:
      case NetworkErrorType.other:
        return ResultErrorType.other;
    }
  }
}

@freezed
class Result<T, R> with _$Result<T, R> {
  const Result._();

  const factory Result.success(T data) = _success<T, R>;

  const factory Result.failure(R error) = _failure<T, R>;

  // final ErrorMessage errorMessage;

  bool get hasData => maybeWhen(success: (_) => true, orElse: () => false);

  bool get hasError => maybeWhen(failure: (_) => true, orElse: () => false);

  D? ifHasData<D>(D Function(T data) dataFunction) {
    final data = maybeWhen(
      success: (data) => data,
      orElse: () => null,
    );
    if (data != null) {
      return dataFunction(data);
    }
    return null;
  }

  static Result<T, ResultErrorType> dataOrParsingError<T>(T? data) {
    if (data == null) {
      return const Result.failure(ResultErrorType.parsing);
    } else {
      return Result.success(data);
    }
  }
}
