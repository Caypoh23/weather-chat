// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:weather/utils/icon_mapper.dart';

part 'weather.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class Weather {
  //
  @JsonKey()
  final int id;

  @JsonKey()
  final int time;

  @JsonKey()
  final int sunrise;

  @JsonKey()
  final int sunset;

  @JsonKey()
  final int humidity;

  @JsonKey()
  final String description;

  @JsonKey()
  final String iconCode;

  @JsonKey()
  final String main;

  @JsonKey()
  final String cityName;

  @JsonKey()
  final double windSpeed;

  @JsonKey()
  final List<Weather> forecast;

  //

  Weather(
    this.id,
    this.time,
    this.sunrise,
    this.sunset,
    this.humidity,
    this.description,
    this.iconCode,
    this.main,
    this.cityName,
    this.windSpeed,
    this.forecast,
  );
  //

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  //

  IconData getIconData() {
    switch (iconCode) {
      case '01d':
        return WeatherIcons.clearDay;
      case '01n':
        return WeatherIcons.clearNight;
      case '02d':
        return WeatherIcons.fewCloudsDay;
      case '02n':
        return WeatherIcons.fewCloudsDay;
      case '03d':
      case '04d':
        return WeatherIcons.cloudsDay;
      case '03n':
      case '04n':
        return WeatherIcons.clearNight;
      case '09d':
        return WeatherIcons.showerRainDay;
      case '09n':
        return WeatherIcons.showerRainNight;
      case '10d':
        return WeatherIcons.rainDay;
      case '10n':
        return WeatherIcons.rainNight;
      case '11d':
        return WeatherIcons.thunderStormDay;
      case '11n':
        return WeatherIcons.thunderStormNight;
      case '13d':
        return WeatherIcons.snowDay;
      case '13n':
        return WeatherIcons.snowNight;
      case '50d':
        return WeatherIcons.mistDay;
      case '50n':
        return WeatherIcons.mistNight;
      default:
        return WeatherIcons.clearDay;
    }
  }
}
