// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart';

// Project imports:
import 'app.dart';
import 'conf/enums/api_env_enum.dart';
import 'conf/values/system_ui_overlay_style_constants.dart';
import 'core/root/injector.dart';
import 'localization.dart';
import 'utils/log_helper.dart';
import 'utils/shared_preference_helper.dart';

const env = Env.prod;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(MySystemUiOverlayStyle.lightNavBar);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await EasyLocalization.ensureInitialized();

  await MySPHelper.init();

  MyLogHelper.init();

  configureDependencies();

  runApp(const MyLocalization(child: MyApp()));
}
