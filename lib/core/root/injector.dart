// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:weather/conf/enums/api_env_enum.dart';
import 'package:weather/main.dart';
import 'injector.config.dart';

final injector = GetIt.instance;

@InjectableInit(
  asExtension: true,
  initializerName: 'init',
  preferRelativeImports: true,
)
void configureDependencies() => injector.init(environment: env.url);

Future<void> resetDependencies() async {
  await injector.reset();
  configureDependencies();
}
