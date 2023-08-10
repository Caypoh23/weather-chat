// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MyErrorCWProxy {
  MyError status(bool? status);

  MyError errorMessage(String? errorMessage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MyError(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MyError(...).copyWith(id: 12, name: "My name")
  /// ````
  MyError call({
    bool? status,
    String? errorMessage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMyError.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMyError.copyWith.fieldName(...)`
class _$MyErrorCWProxyImpl implements _$MyErrorCWProxy {
  const _$MyErrorCWProxyImpl(this._value);

  final MyError _value;

  @override
  MyError status(bool? status) => this(status: status);

  @override
  MyError errorMessage(String? errorMessage) =>
      this(errorMessage: errorMessage);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MyError(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MyError(...).copyWith(id: 12, name: "My name")
  /// ````
  MyError call({
    Object? status = const $CopyWithPlaceholder(),
    Object? errorMessage = const $CopyWithPlaceholder(),
  }) {
    return MyError(
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as bool?,
      errorMessage: errorMessage == const $CopyWithPlaceholder()
          ? _value.errorMessage
          // ignore: cast_nullable_to_non_nullable
          : errorMessage as String?,
    );
  }
}

extension $MyErrorCopyWith on MyError {
  /// Returns a callable class that can be used as follows: `instanceOfMyError.copyWith(...)` or like so:`instanceOfMyError.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MyErrorCWProxy get copyWith => _$MyErrorCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyError _$MyErrorFromJson(Map<String, dynamic> json) => MyError(
      status: json['success'] as bool?,
      errorMessage: json['errorText'] as String?,
    );

Map<String, dynamic> _$MyErrorToJson(MyError instance) => <String, dynamic>{
      'success': instance.status,
      'errorText': instance.errorMessage,
    };
