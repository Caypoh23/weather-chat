// Flutter imports:
import 'package:flutter/foundation.dart' show kDebugMode;

enum Env { prod, dev, mock }

const String _domain = 'openweathermap.org';

extension EnvExtension on Env {
  //

  String get url {
    switch (this) {
      case Env.prod:
        return 'api.$_domain';

      case Env.dev:
        return 'testapi.$_domain';

      default:
        return 'd7bc2c81-8d47-41bf-88d6-a0a97bd0b624' '.mock.pstmn.io';
    }
  }

  bool get isRelease => this == Env.prod && !kDebugMode;
}
