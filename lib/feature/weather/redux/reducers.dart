// Package imports:
import 'package:redux/redux.dart';

// Project imports:
import 'package:weather/core/models/weather/weather.dart';
import 'actions.dart';
import 'store.dart';

//

Weather? _updateItemReducer(Weather? weather, UpdateWeatherAction action) =>
    action.weather;

Weather? _stateItemByIdReducer(Weather? weather, action) => weather;

Reducer<Weather?> _itemByIdReducer = combineReducers<Weather?>([
  TypedReducer<Weather?, UpdateWeatherAction>(_updateItemReducer),
  TypedReducer<Weather?, dynamic>(_stateItemByIdReducer),
]);

String _searchTextReducer(String searchText, action) =>
    action is SearchWeatherAction ? action.searchText : searchText;

//
bool _isLoadingReducer(bool isLoading, action) {
  if (action is FetchWeatherAction) {
    return true;
  } else if (action is UpdateWeatherAction || action is ErrorWeatherAction) {
    return false;
  } else {
    return isLoading;
  }
}

//
String? _errorMessageReducer(String? errorMessage, action) =>
    action is ErrorWeatherAction ? action.errorMessage : errorMessage;

//
WeatherState weatherReducer(WeatherState state, action) {
  return WeatherState(
    weather: _itemByIdReducer(state.weather, action),
    searchText: _searchTextReducer(state.searchText, action),
    isLoading: _isLoadingReducer(state.isLoading, action),
    errorMessage: _errorMessageReducer(state.errorMessage, action),
    action: action,
  );
}
