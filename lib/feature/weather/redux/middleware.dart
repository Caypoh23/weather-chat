// Package imports:
import 'package:redux/redux.dart';

// Project imports:
import 'package:weather/core/repository/weather_repository.dart';
import 'package:weather/core/root/injector.dart';
import 'actions.dart';
import 'store.dart';

void weatherMiddleware(Store<WeatherState> store, action, NextDispatcher next) {
  final repository = injector<WeatherRepository>();

  if (action is FetchWeatherAction) {
    final searhText = store.state.searchText;

    repository.fetchWeather(searhText).then((data) {
      store.dispatch(UpdateWeatherAction(data));
    }).catchError((error) {
      store.dispatch(ErrorWeatherAction(error.toString()));
    });
  }

  next(action);
}
