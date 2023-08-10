// Project imports:
import 'package:weather/conf/enums/api_env_enum.dart';
import 'package:weather/main.dart';

class MyUrls {
  ///
  /// Base
  ///
  static final apiUrl = '$https${env.url}';

  static const exec = '/exec';
  static const port90 = ':9090';
  static const https = 'https://';

  ///
  static const version = '/version';
}
