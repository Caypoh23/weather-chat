// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart';

// Project imports:
import 'conf/values/strings_constants.dart';
import 'core/root/injector.dart';
import 'core/router/navigator_service.dart';
import 'theme/theme.dart';
import 'utils/media_helper.dart';
import 'utils/my_scroll_behavior.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = injector<NavigatorService>().router;

    return MaterialApp.router(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      builder: builder,
      routerConfig: appRouter.config(),
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (_) => MyStrings.appName,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      //
    );
  }

  Widget builder(context, child) {
    MediaHelper.init(context);
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Builder(
        builder: (_) => ScrollConfiguration(
          behavior: MyScrollBehavior(),
          child: child,
        ),
      ),
    );
  }
}
