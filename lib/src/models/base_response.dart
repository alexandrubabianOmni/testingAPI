import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> extends Equatable {
  final String? status;
  final T? data;
  final String? message;

  const BaseResponse({
    this.status,
    this.data,
    this.message,
  });

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$BaseResponseFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(
    Map<String, dynamic> Function(T? value) toJsonT,
  ) {
    return _$BaseResponseToJson<T>(this, toJsonT);
  }

  @override
  List<Object?> get props => [
        status,
        data,
        message,
      ];
}
