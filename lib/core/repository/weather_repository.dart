// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:weather/core/api/api_provider.dart';
import 'package:weather/core/models/error/api_error.dart';
import 'package:weather/core/models/weather/weather.dart';
import 'package:weather/utils/api_helper.dart';

@injectable
class WeatherRepository {
  //
  final ApiProvider apiProvider;

  WeatherRepository(this.apiProvider);

  //

  Future<Weather> fetchWeather(String cityName) async {
    final response = await ApiHelper.request(
      apiProvider.weatherApi.fetchWeather(cityName: cityName),
    );
    if (!response.isSuccessful) throw ApiError.basic(response);
    return response.body.data;
  }
}
