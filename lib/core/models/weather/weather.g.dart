// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WeatherCWProxy {
  Weather id(int? id);

  Weather main(String? main);

  Weather description(String? description);

  Weather iconCode(String? iconCode);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Weather(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Weather(...).copyWith(id: 12, name: "My name")
  /// ````
  Weather call({
    int? id,
    String? main,
    String? description,
    String? iconCode,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWeather.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWeather.copyWith.fieldName(...)`
class _$WeatherCWProxyImpl implements _$WeatherCWProxy {
  const _$WeatherCWProxyImpl(this._value);

  final Weather _value;

  @override
  Weather id(int? id) => this(id: id);

  @override
  Weather main(String? main) => this(main: main);

  @override
  Weather description(String? description) => this(description: description);

  @override
  Weather iconCode(String? iconCode) => this(iconCode: iconCode);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Weather(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Weather(...).copyWith(id: 12, name: "My name")
  /// ````
  Weather call({
    Object? id = const $CopyWithPlaceholder(),
    Object? main = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? iconCode = const $CopyWithPlaceholder(),
  }) {
    return Weather(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      main: main == const $CopyWithPlaceholder()
          ? _value.main
          // ignore: cast_nullable_to_non_nullable
          : main as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      iconCode: iconCode == const $CopyWithPlaceholder()
          ? _value.iconCode
          // ignore: cast_nullable_to_non_nullable
          : iconCode as String?,
    );
  }
}

extension $WeatherCopyWith on Weather {
  /// Returns a callable class that can be used as follows: `instanceOfWeather.copyWith(...)` or like so:`instanceOfWeather.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WeatherCWProxy get copyWith => _$WeatherCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      id: json['id'] as int?,
      main: json['main'] as String?,
      description: json['description'] as String?,
      iconCode: json['icon'] as String?,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.iconCode,
    };
