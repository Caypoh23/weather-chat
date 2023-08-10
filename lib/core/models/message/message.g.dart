// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MessageCWProxy {
  Message id(String? id);

  Message text(String? text);

  Message senderId(String? senderId);

  Message name(String? name);

  Message avatar(String? avatar);

  Message sentTime(DateTime? sentTime);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Message(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Message(...).copyWith(id: 12, name: "My name")
  /// ````
  Message call({
    String? id,
    String? text,
    String? senderId,
    String? name,
    String? avatar,
    DateTime? sentTime,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMessage.copyWith.fieldName(...)`
class _$MessageCWProxyImpl implements _$MessageCWProxy {
  const _$MessageCWProxyImpl(this._value);

  final Message _value;

  @override
  Message id(String? id) => this(id: id);

  @override
  Message text(String? text) => this(text: text);

  @override
  Message senderId(String? senderId) => this(senderId: senderId);

  @override
  Message name(String? name) => this(name: name);

  @override
  Message avatar(String? avatar) => this(avatar: avatar);

  @override
  Message sentTime(DateTime? sentTime) => this(sentTime: sentTime);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Message(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Message(...).copyWith(id: 12, name: "My name")
  /// ````
  Message call({
    Object? id = const $CopyWithPlaceholder(),
    Object? text = const $CopyWithPlaceholder(),
    Object? senderId = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? avatar = const $CopyWithPlaceholder(),
    Object? sentTime = const $CopyWithPlaceholder(),
  }) {
    return Message(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      text: text == const $CopyWithPlaceholder()
          ? _value.text
          // ignore: cast_nullable_to_non_nullable
          : text as String?,
      senderId: senderId == const $CopyWithPlaceholder()
          ? _value.senderId
          // ignore: cast_nullable_to_non_nullable
          : senderId as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      avatar: avatar == const $CopyWithPlaceholder()
          ? _value.avatar
          // ignore: cast_nullable_to_non_nullable
          : avatar as String?,
      sentTime: sentTime == const $CopyWithPlaceholder()
          ? _value.sentTime
          // ignore: cast_nullable_to_non_nullable
          : sentTime as DateTime?,
    );
  }
}

extension $MessageCopyWith on Message {
  /// Returns a callable class that can be used as follows: `instanceOfMessage.copyWith(...)` or like so:`instanceOfMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MessageCWProxy get copyWith => _$MessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      id: json['id'] as String?,
      text: json['text'] as String?,
      senderId: json['senderId'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      sentTime: Message._datefromJson(json['sentTime'] as String?),
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'senderId': instance.senderId,
      'name': instance.name,
      'avatar': instance.avatar,
      'sentTime': Message._dateToJson(instance.sentTime),
    };
