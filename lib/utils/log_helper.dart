// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:logging/logging.dart';

class MyLogHelper {
  //
  static init() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen(
        (rec) => debugPrint('${rec.level.name}: ${rec.time}: ${rec.message}'));
  }
}
