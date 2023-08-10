// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/weather/redux/service.dart' as _i7;
import '../../feature/weather/redux/store.dart' as _i6;
import '../api/api_provider.dart' as _i3;
import '../repository/weather_repository.dart' as _i5;
import '../router/navigator_service.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ApiProvider>(_i3.ApiProvider());
    gh.singleton<_i4.NavigatorService>(_i4.NavigatorService());
    gh.factory<_i5.WeatherRepository>(
        () => _i5.WeatherRepository(gh<_i3.ApiProvider>()));
    gh.singleton<_i6.WeatherStore>(_i6.WeatherStore());
    gh.singleton<_i7.WeatherService>(
        _i7.WeatherService(gh<_i6.WeatherStore>()));
    return this;
  }
}
