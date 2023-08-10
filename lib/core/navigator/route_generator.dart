// Flutter imports:
import 'package:flutter/material.dart';
import 'package:weather/core/models/message/message.dart';

// Project imports:
import 'package:weather/feature/chat/chats/chats_page.dart';
import 'package:weather/feature/chat/details/chat_details_page.dart';
import 'package:weather/feature/shared/error/error_page.dart';
import 'package:weather/feature/shared/splash/splash_page.dart';
import 'routes_constants.dart';

class RouteGenerator {
  //
  static Route route(
    String? name,
    Widget widget, {
    bool isFade = false,
    bool isSlide = false,
    bool opaque = true,
  }) {
    if (isFade) {
      return PageRouteBuilder(
        opaque: opaque,
        settings: RouteSettings(name: name),
        pageBuilder: (context, animation, secondaryAnimation) => widget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          animation = CurvedAnimation(curve: Curves.ease, parent: animation);
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
    } else if (isSlide) {
      return PageRouteBuilder(
        opaque: opaque,
        settings: RouteSettings(name: name),
        pageBuilder: (context, animation, secondaryAnimation) => widget,
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, Widget child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, 1.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
      );
    } else {
      return MaterialPageRoute(
        builder: (_) => widget,
        settings: RouteSettings(name: name),
      );
    }
  }

  //

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      ///
      /// System
      ///

      case MyRoutes.splash:
        return route(
          settings.name,
          const SplashPage(),
          isFade: true,
        );

      case MyRoutes.weather:
        return route(
          settings.name,
          const SplashPage(),
        );

      /// Chat

      case MyRoutes.chat:
        return route(
          settings.name,
          const ChatsPage(),
        );

      case MyRoutes.chatDetails:
        if (args is Message) {
          return route(
            settings.name,
            ChatDetailsPage(message: args),
          );
        }
        return _errorRoute();

      ///

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) => const ErrorPage());
  }
}
