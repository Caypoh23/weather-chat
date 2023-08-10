// Package imports:
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:weather/utils/temperature_converter.dart';

part 'weather_main.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: false)
class WeatherMain {
  //
  @JsonKey()
  final double? temp;

  @JsonKey(name: 'feels_like')
  final double? feelsLike;

  @JsonKey(name: 'temp_min')
  final double? tempMin;

  @JsonKey(name: 'temp_max')
  final double? tempMax;

  @JsonKey()
  final int? pressure;

  @JsonKey()
  final int? humidity;

  @JsonKey(name: 'sea_level')
  final int? seaLevel;

  @JsonKey(name: 'grnd_level')
  final int? groundLevel;

  //
  String get tempSt =>
      Temperature(temp!).as(TemperatureUnit.celsius).toStringAsFixed(1);

  //
  WeatherMain({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.seaLevel,
    this.groundLevel,
  });

  //

  factory WeatherMain.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherMainToJson(this);
}
