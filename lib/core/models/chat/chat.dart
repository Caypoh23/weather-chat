// Package imports:
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather/core/models/message/message.dart';

part 'chat.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class Chat {
  @JsonKey()
  final String? id;

  @JsonKey()
  final List<Message>? messages;

  //
  Chat({
    this.id,
    this.messages,
  });

  //
  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  Map<String, dynamic> toJson() => _$ChatToJson(this);
}
