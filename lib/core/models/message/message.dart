// Package imports:
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:weather/utils/date_formatter.dart';

part 'message.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class Message {
  @JsonKey()
  final String? id;

  @JsonKey()
  final String? chatId;

  @JsonKey()
  final bool isOwn;

  @JsonKey()
  final bool isRead;

  @JsonKey()
  final String? text;

  @JsonKey()
  final String? name;

  @JsonKey()
  final String? avatar;

  @JsonKey(
    toJson: _dateToJson,
    fromJson: _datefromJson,
  )
  final DateTime? sentTime;

  //
  String get dateSt => MyDateFormatter.fHHmm(sentTime);

  //
  Message({
    this.id,
    this.text,
    this.isOwn = false,
    this.isRead = false,
    this.chatId,
    this.name,
    this.avatar,
    this.sentTime,
  });

  //
  static String? _dateToJson(DateTime? date) {
    return date != null ? MyDateFormatter.fddMMyyyy(date) : null;
  }

  static DateTime? _datefromJson(String? date) {
    return date != null && date != '' ? MyDateFormatter.pddMMyyyy(date) : null;
  }

  //
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
