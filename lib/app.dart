// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart';

// Project imports:
import 'conf/values/color_constants.dart';
import 'conf/values/font_constants.dart';
import 'conf/values/strings_constants.dart';
import 'core/navigator/route_generator.dart';
import 'core/navigator/routes_constants.dart';
import 'core/root/navigator_service.dart';
import 'utils/media_helper.dart';
import 'utils/my_scroll_behavior.dart';
import 'utils/permission_helper.dart';
import 'utils/shared_preference_helper.dart';

// Package imports:

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  //
  static MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<MyAppState>();

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with WidgetsBindingObserver {
  //
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    MyPermissionHelper.checkAll();
    super.initState();
  }

  void updateLocale() {
    context.setLocale(Locale(MySPHelper.lang));
    rebuildAllChildren();
  }

  void rebuildAllChildren() {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) MyPermissionHelper.checkAll();
  }

  void updateState() => {if (mounted) setState(() {})};

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: MyFonts.main,
        primaryColor: MyColors.primary,
        colorScheme: const ColorScheme.light(
          primary: MyColors.primary,
          secondary: MyColors.secondary,
        ),
      ),
      //
      builder: builder,
      locale: context.locale,
      initialRoute: MyRoutes.chat,
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (_) => MyStrings.appName,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      //
      navigatorKey: NavigatorService.key,
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorObservers: const <NavigatorObserver>[],
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
