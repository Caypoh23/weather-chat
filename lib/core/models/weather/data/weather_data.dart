// Package imports:
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:weather/core/models/weather/main/weather_main.dart';
import 'package:weather/core/models/weather/weather.dart';

part 'weather_data.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: false)
class WeatherData {
  //
  @JsonKey(
    name: 'weather',
    defaultValue: [],
  )
  final List<Weather>? weatherList;

  @JsonKey(defaultValue: '')
  final String? name;

  @JsonKey()
  final WeatherMain? main;

  //

  WeatherData({
    this.weatherList,
    this.name,
    this.main,
  });

  //

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDataToJson(this);
}
