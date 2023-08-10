// Package imports:
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class MyError {
  @JsonKey(name: 'success')
  final bool? status;

  @JsonKey(name: 'errorText')
  final String? errorMessage;

  MyError({
    this.status,
    this.errorMessage,
  });

  factory MyError.fromJson(Map<String, dynamic> json) =>
      _$MyErrorFromJson(json);

  Map<String, dynamic> toJson() => _$MyErrorToJson(this);
}
