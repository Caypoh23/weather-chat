// Package imports:
import 'package:redux/redux.dart';

// Project imports:
import 'package:weather/core/repository/weather_repository.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/core/router/app_router.dart';
import 'package:weather/core/router/navigator_service.dart';
import 'package:weather/feature/splash/splash_page.dart';
import 'actions.dart';
import 'store.dart';

void weatherMiddleware(Store<WeatherState> store, action, NextDispatcher next) {
  final repository = injector<WeatherRepository>();

  if (action is FetchWeatherAction) {
    final searhText =
        store.state.searchText.isEmpty ? 'moscow' : store.state.searchText;

    repository.fetchWeather(searhText).then((data) {
      store.dispatch(UpdateWeatherAction(data));
      if (SplashPage.isOpen) {
        injector<NavigatorService>().replace(const HomeRoute());
      }
    }).catchError((error) {
      store.dispatch(ErrorWeatherAction(error.toString()));
    });
  }

  next(action);
}
