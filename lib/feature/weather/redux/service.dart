// Package imports:
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

// Project imports:
import 'package:weather/core/models/weather/data/weather_data.dart';
import 'actions.dart';
import 'store.dart';

@singleton
class WeatherService {
  //
  final WeatherStore _store;

  //

  final _loading = BehaviorSubject<bool>.seeded(false);
  BehaviorSubject<bool> get loading$ => _loading;
  bool get loading => loading$.value;

  //

  final _weather = BehaviorSubject<WeatherData?>();
  BehaviorSubject<WeatherData?> get weather$ => _weather;
  WeatherData? get weather => weather$.valueOrNull;

  //

  final _searchText = BehaviorSubject<String>.seeded('');
  BehaviorSubject<String> get searchText$ => _searchText;
  String get searchText => searchText$.value;

  //

  WeatherService(this._store) {
    _store.state$
        .map((state) => state.isLoading)
        .where((data) => data != loading)
        .pipe(_loading);

    //

    _store.state$
        .map((state) => state.weather)
        .where((data) => data != weather)
        .pipe(_weather);

    //

    _store.state$
        .map((state) => state.searchText)
        .where((data) => data != searchText)
        .pipe(_searchText);
  }

  //

  void dispose() {
    _loading.close();
    _weather.close();
    _searchText.close();
  }

  //

  void fetch() {
    _store.dispatch(FetchWeatherAction());
  }

  void search(String text) {
    _store.dispatch(SearchWeatherAction(text));
  }
}
