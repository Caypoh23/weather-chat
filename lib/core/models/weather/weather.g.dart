// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WeatherCWProxy {
  Weather id(int id);

  Weather time(int time);

  Weather sunrise(int sunrise);

  Weather sunset(int sunset);

  Weather humidity(int humidity);

  Weather description(String description);

  Weather iconCode(String iconCode);

  Weather main(String main);

  Weather cityName(String cityName);

  Weather windSpeed(double windSpeed);

  Weather forecast(List<Weather> forecast);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Weather(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Weather(...).copyWith(id: 12, name: "My name")
  /// ````
  Weather call({
    int? id,
    int? time,
    int? sunrise,
    int? sunset,
    int? humidity,
    String? description,
    String? iconCode,
    String? main,
    String? cityName,
    double? windSpeed,
    List<Weather>? forecast,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWeather.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWeather.copyWith.fieldName(...)`
class _$WeatherCWProxyImpl implements _$WeatherCWProxy {
  const _$WeatherCWProxyImpl(this._value);

  final Weather _value;

  @override
  Weather id(int id) => this(id: id);

  @override
  Weather time(int time) => this(time: time);

  @override
  Weather sunrise(int sunrise) => this(sunrise: sunrise);

  @override
  Weather sunset(int sunset) => this(sunset: sunset);

  @override
  Weather humidity(int humidity) => this(humidity: humidity);

  @override
  Weather description(String description) => this(description: description);

  @override
  Weather iconCode(String iconCode) => this(iconCode: iconCode);

  @override
  Weather main(String main) => this(main: main);

  @override
  Weather cityName(String cityName) => this(cityName: cityName);

  @override
  Weather windSpeed(double windSpeed) => this(windSpeed: windSpeed);

  @override
  Weather forecast(List<Weather> forecast) => this(forecast: forecast);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Weather(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Weather(...).copyWith(id: 12, name: "My name")
  /// ````
  Weather call({
    Object? id = const $CopyWithPlaceholder(),
    Object? time = const $CopyWithPlaceholder(),
    Object? sunrise = const $CopyWithPlaceholder(),
    Object? sunset = const $CopyWithPlaceholder(),
    Object? humidity = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? iconCode = const $CopyWithPlaceholder(),
    Object? main = const $CopyWithPlaceholder(),
    Object? cityName = const $CopyWithPlaceholder(),
    Object? windSpeed = const $CopyWithPlaceholder(),
    Object? forecast = const $CopyWithPlaceholder(),
  }) {
    return Weather(
      id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      time == const $CopyWithPlaceholder() || time == null
          ? _value.time
          // ignore: cast_nullable_to_non_nullable
          : time as int,
      sunrise == const $CopyWithPlaceholder() || sunrise == null
          ? _value.sunrise
          // ignore: cast_nullable_to_non_nullable
          : sunrise as int,
      sunset == const $CopyWithPlaceholder() || sunset == null
          ? _value.sunset
          // ignore: cast_nullable_to_non_nullable
          : sunset as int,
      humidity == const $CopyWithPlaceholder() || humidity == null
          ? _value.humidity
          // ignore: cast_nullable_to_non_nullable
          : humidity as int,
      description == const $CopyWithPlaceholder() || description == null
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String,
      iconCode == const $CopyWithPlaceholder() || iconCode == null
          ? _value.iconCode
          // ignore: cast_nullable_to_non_nullable
          : iconCode as String,
      main == const $CopyWithPlaceholder() || main == null
          ? _value.main
          // ignore: cast_nullable_to_non_nullable
          : main as String,
      cityName == const $CopyWithPlaceholder() || cityName == null
          ? _value.cityName
          // ignore: cast_nullable_to_non_nullable
          : cityName as String,
      windSpeed == const $CopyWithPlaceholder() || windSpeed == null
          ? _value.windSpeed
          // ignore: cast_nullable_to_non_nullable
          : windSpeed as double,
      forecast == const $CopyWithPlaceholder() || forecast == null
          ? _value.forecast
          // ignore: cast_nullable_to_non_nullable
          : forecast as List<Weather>,
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
      json['id'] as int,
      json['time'] as int,
      json['sunrise'] as int,
      json['sunset'] as int,
      json['humidity'] as int,
      json['description'] as String,
      json['iconCode'] as String,
      json['main'] as String,
      json['cityName'] as String,
      (json['windSpeed'] as num).toDouble(),
      (json['forecast'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'time': instance.time,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'humidity': instance.humidity,
      'description': instance.description,
      'iconCode': instance.iconCode,
      'main': instance.main,
      'cityName': instance.cityName,
      'windSpeed': instance.windSpeed,
      'forecast': instance.forecast.map((e) => e.toJson()).toList(),
    };
