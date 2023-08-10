// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChatCWProxy {
  Chat id(String? id);

  Chat messages(List<Message>? messages);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Chat(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Chat(...).copyWith(id: 12, name: "My name")
  /// ````
  Chat call({
    String? id,
    List<Message>? messages,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChat.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChat.copyWith.fieldName(...)`
class _$ChatCWProxyImpl implements _$ChatCWProxy {
  const _$ChatCWProxyImpl(this._value);

  final Chat _value;

  @override
  Chat id(String? id) => this(id: id);

  @override
  Chat messages(List<Message>? messages) => this(messages: messages);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Chat(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Chat(...).copyWith(id: 12, name: "My name")
  /// ````
  Chat call({
    Object? id = const $CopyWithPlaceholder(),
    Object? messages = const $CopyWithPlaceholder(),
  }) {
    return Chat(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      messages: messages == const $CopyWithPlaceholder()
          ? _value.messages
          // ignore: cast_nullable_to_non_nullable
          : messages as List<Message>?,
    );
  }
}

extension $ChatCopyWith on Chat {
  /// Returns a callable class that can be used as follows: `instanceOfChat.copyWith(...)` or like so:`instanceOfChat.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChatCWProxy get copyWith => _$ChatCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chat _$ChatFromJson(Map<String, dynamic> json) => Chat(
      id: json['id'] as String?,
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
      'id': instance.id,
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
    };
