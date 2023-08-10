// Project imports:
import 'package:weather/conf/enums/api_env_enum.dart';
import 'package:weather/main.dart';

const apiKey = 'b67da89c0ac1d4fdb2132abc3c86089b';

class MyUrls {
  ///
  /// Base
  ///
  static final apiUrl = '$https${env.url}';

  static const https = 'https://';

  static const data = 'data/2.5/weather';

  ///
  static const weather = '/version';
}
