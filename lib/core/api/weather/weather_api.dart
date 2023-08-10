// Package imports:
import 'package:chopper/chopper.dart';

// Project imports:
import 'package:weather/conf/api/url_constants.dart';
import 'package:weather/core/models/weather/weather.dart';

part 'weather_api.chopper.dart';

@ChopperApi(baseUrl: MyUrls.data)
abstract class WeatherApi extends ChopperService {
  static WeatherApi create([ChopperClient? client]) => _$WeatherApi(client);

  @Get()
  Future<Response<Weather>> fetchWeather({
    @Query('q') String? cityName,
    @Query('appid') String? apiKey = apiKey,
  });
}
