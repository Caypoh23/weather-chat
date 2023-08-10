// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WeatherDataCWProxy {
  WeatherData weatherList(List<Weather>? weatherList);

  WeatherData name(String? name);

  WeatherData main(WeatherMain? main);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WeatherData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WeatherData(...).copyWith(id: 12, name: "My name")
  /// ````
  WeatherData call({
    List<Weather>? weatherList,
    String? name,
    WeatherMain? main,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWeatherData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWeatherData.copyWith.fieldName(...)`
class _$WeatherDataCWProxyImpl implements _$WeatherDataCWProxy {
  const _$WeatherDataCWProxyImpl(this._value);

  final WeatherData _value;

  @override
  WeatherData weatherList(List<Weather>? weatherList) =>
      this(weatherList: weatherList);

  @override
  WeatherData name(String? name) => this(name: name);

  @override
  WeatherData main(WeatherMain? main) => this(main: main);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WeatherData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WeatherData(...).copyWith(id: 12, name: "My name")
  /// ````
  WeatherData call({
    Object? weatherList = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? main = const $CopyWithPlaceholder(),
  }) {
    return WeatherData(
      weatherList: weatherList == const $CopyWithPlaceholder()
          ? _value.weatherList
          // ignore: cast_nullable_to_non_nullable
          : weatherList as List<Weather>?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      main: main == const $CopyWithPlaceholder()
          ? _value.main
          // ignore: cast_nullable_to_non_nullable
          : main as WeatherMain?,
    );
  }
}

extension $WeatherDataCopyWith on WeatherData {
  /// Returns a callable class that can be used as follows: `instanceOfWeatherData.copyWith(...)` or like so:`instanceOfWeatherData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WeatherDataCWProxy get copyWith => _$WeatherDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) => WeatherData(
      weatherList: (json['weather'] as List<dynamic>?)
              ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      name: json['name'] as String? ?? '',
      main: json['main'] == null
          ? null
          : WeatherMain.fromJson(json['main'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherDataToJson(WeatherData instance) =>
    <String, dynamic>{
      'weather': instance.weatherList,
      'name': instance.name,
      'main': instance.main,
    };
