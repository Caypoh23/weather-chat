// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_main.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WeatherMainCWProxy {
  WeatherMain temp(double? temp);

  WeatherMain feelsLike(double? feelsLike);

  WeatherMain tempMin(double? tempMin);

  WeatherMain tempMax(double? tempMax);

  WeatherMain pressure(int? pressure);

  WeatherMain humidity(int? humidity);

  WeatherMain seaLevel(int? seaLevel);

  WeatherMain groundLevel(int? groundLevel);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WeatherMain(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WeatherMain(...).copyWith(id: 12, name: "My name")
  /// ````
  WeatherMain call({
    double? temp,
    double? feelsLike,
    double? tempMin,
    double? tempMax,
    int? pressure,
    int? humidity,
    int? seaLevel,
    int? groundLevel,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWeatherMain.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWeatherMain.copyWith.fieldName(...)`
class _$WeatherMainCWProxyImpl implements _$WeatherMainCWProxy {
  const _$WeatherMainCWProxyImpl(this._value);

  final WeatherMain _value;

  @override
  WeatherMain temp(double? temp) => this(temp: temp);

  @override
  WeatherMain feelsLike(double? feelsLike) => this(feelsLike: feelsLike);

  @override
  WeatherMain tempMin(double? tempMin) => this(tempMin: tempMin);

  @override
  WeatherMain tempMax(double? tempMax) => this(tempMax: tempMax);

  @override
  WeatherMain pressure(int? pressure) => this(pressure: pressure);

  @override
  WeatherMain humidity(int? humidity) => this(humidity: humidity);

  @override
  WeatherMain seaLevel(int? seaLevel) => this(seaLevel: seaLevel);

  @override
  WeatherMain groundLevel(int? groundLevel) => this(groundLevel: groundLevel);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WeatherMain(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WeatherMain(...).copyWith(id: 12, name: "My name")
  /// ````
  WeatherMain call({
    Object? temp = const $CopyWithPlaceholder(),
    Object? feelsLike = const $CopyWithPlaceholder(),
    Object? tempMin = const $CopyWithPlaceholder(),
    Object? tempMax = const $CopyWithPlaceholder(),
    Object? pressure = const $CopyWithPlaceholder(),
    Object? humidity = const $CopyWithPlaceholder(),
    Object? seaLevel = const $CopyWithPlaceholder(),
    Object? groundLevel = const $CopyWithPlaceholder(),
  }) {
    return WeatherMain(
      temp: temp == const $CopyWithPlaceholder()
          ? _value.temp
          // ignore: cast_nullable_to_non_nullable
          : temp as double?,
      feelsLike: feelsLike == const $CopyWithPlaceholder()
          ? _value.feelsLike
          // ignore: cast_nullable_to_non_nullable
          : feelsLike as double?,
      tempMin: tempMin == const $CopyWithPlaceholder()
          ? _value.tempMin
          // ignore: cast_nullable_to_non_nullable
          : tempMin as double?,
      tempMax: tempMax == const $CopyWithPlaceholder()
          ? _value.tempMax
          // ignore: cast_nullable_to_non_nullable
          : tempMax as double?,
      pressure: pressure == const $CopyWithPlaceholder()
          ? _value.pressure
          // ignore: cast_nullable_to_non_nullable
          : pressure as int?,
      humidity: humidity == const $CopyWithPlaceholder()
          ? _value.humidity
          // ignore: cast_nullable_to_non_nullable
          : humidity as int?,
      seaLevel: seaLevel == const $CopyWithPlaceholder()
          ? _value.seaLevel
          // ignore: cast_nullable_to_non_nullable
          : seaLevel as int?,
      groundLevel: groundLevel == const $CopyWithPlaceholder()
          ? _value.groundLevel
          // ignore: cast_nullable_to_non_nullable
          : groundLevel as int?,
    );
  }
}

extension $WeatherMainCopyWith on WeatherMain {
  /// Returns a callable class that can be used as follows: `instanceOfWeatherMain.copyWith(...)` or like so:`instanceOfWeatherMain.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WeatherMainCWProxy get copyWith => _$WeatherMainCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherMain _$WeatherMainFromJson(Map<String, dynamic> json) => WeatherMain(
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      tempMin: (json['temp_min'] as num?)?.toDouble(),
      tempMax: (json['temp_max'] as num?)?.toDouble(),
      pressure: json['pressure'] as int?,
      humidity: json['humidity'] as int?,
      seaLevel: json['sea_level'] as int?,
      groundLevel: json['grnd_level'] as int?,
    );

Map<String, dynamic> _$WeatherMainToJson(WeatherMain instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'sea_level': instance.seaLevel,
      'grnd_level': instance.groundLevel,
    };
