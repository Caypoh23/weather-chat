// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:provider/provider.dart';
import 'package:weather/conf/enums/menu_enum.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/system_ui_overlay_style_constants.dart';
import 'package:weather/feature/home/mobx/store.dart';
import 'package:weather/feature/home/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:weather/feature/home/widgets/content.dart';
import 'package:weather/theme/default/default_app_bar.dart';
import 'package:weather/theme/gestures/focus_remover.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = HomeStore();

    return Provider(
      create: (_) => store,
      child: WillPopScope(
        onWillPop: store.onWillPop,
        child: MyFocusRemover(
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: MySystemUiOverlayStyle.lightNavBar,
            child: Scaffold(
              backgroundColor: MyColors.white,
              appBar: MyAppBar(
                canPop: false,
                title: store.list[store.index].title,
              ),
              body: const HomeContent(),
              resizeToAvoidBottomInset: false,
              bottomNavigationBar: const HomeBottomNavigationBar(),
            ),
          ),
        ),
      ),
    );
  }
}
