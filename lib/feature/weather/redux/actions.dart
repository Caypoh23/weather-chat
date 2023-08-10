// Project imports:

// Project imports:
import 'package:weather/core/models/weather/weather.dart';

class FetchWeatherAction {}

class SearchWeatherAction {
  final String searchText;

  SearchWeatherAction(this.searchText);
}

class UpdateWeatherAction {
  final Weather weather;

  UpdateWeatherAction(this.weather);
}

class ErrorWeatherAction {
  final String errorMessage;

  ErrorWeatherAction(this.errorMessage);
}
