// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:weather/core/models/weather/data/weather_data.dart';
import 'package:weather/core/root/observable_store.dart';
import 'middleware.dart';
import 'reducers.dart';

class WeatherState extends ObservableState {
  //
  final WeatherData? weather;
  final String searchText;

  final dynamic action;

  WeatherState({
    required this.weather,
    required this.searchText,
    required this.action,
    //
    bool isLoading = false,
    String? errorMessage,
  }) : super(
          isLoading: isLoading,
          errorMessage: errorMessage,
        );

  factory WeatherState.init() => WeatherState(
        weather: null,
        searchText: '',
        action: null,
      );
}

@singleton
class WeatherStore extends ObservableStore<WeatherState, dynamic> {
  WeatherStore()
      : super(
          weatherReducer,
          WeatherState.init(),
          [weatherMiddleware, loggerMiddleware],
        );
}
