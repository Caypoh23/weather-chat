import 'package:flutter/material.dart';
import 'package:weather/core/models/chat/chat.dart';
import 'package:weather/feature/chat/details/chat_details_page.dart';
import 'package:weather/feature/home/home_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:weather/feature/splash/splash_page.dart';

import 'routes.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|View,Route')
class AppRouter extends _$AppRouter {
  //
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          path: '/${MyRoutes.splash}',
          page: SplashRoute.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        AutoRoute(
          path: '/${MyRoutes.home}',
          page: HomeRoute.page,
        ),
        CustomRoute(
          path: '/${MyRoutes.chatDetails}',
          page: ChatDetailsRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        )
      ];
}
