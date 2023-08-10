// Project imports:

// Project imports:
import 'package:weather/core/models/weather/data/weather_data.dart';

class FetchWeatherAction {}

class SearchWeatherAction {
  final String searchText;

  SearchWeatherAction(this.searchText);
}

class UpdateWeatherAction {
  final WeatherData weather;

  UpdateWeatherAction(this.weather);
}

class ErrorWeatherAction {
  final String errorMessage;

  ErrorWeatherAction(this.errorMessage);
}
