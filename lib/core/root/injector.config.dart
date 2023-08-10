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

import '../api/api_provider.dart' as _i3;
import '../repository/app_repository.dart' as _i4;
import '../router/navigator_service.dart' as _i5;

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
    gh.factory<_i4.AppRepository>(
        () => _i4.AppRepository(gh<_i3.ApiProvider>()));
    gh.singleton<_i5.NavigatorService>(_i5.NavigatorService());
    return this;
  }
}
