// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/assets/icon_constants.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/feature/chat/chats/chats_page.dart';
import 'package:weather/feature/weather/weather_page.dart';
import 'package:weather/theme/container/empty_container.dart';

enum Menu {
  weather,
  empty,
  chats,
  profile,
}

extension MenuExtension on Menu {
  //
  String get iconOn {
    switch (this) {
      case Menu.weather:
        return MyIcons.homeOn;
      case Menu.empty:
        return MyIcons.otherOn;
      case Menu.chats:
        return MyIcons.chatsOn;
      case Menu.profile:
        return MyIcons.profileOn;
      default:
        return MyIcons.homeOn;
    }
  }

  String get iconOff {
    switch (this) {
      case Menu.weather:
        return MyIcons.homeOff;

      case Menu.empty:
        return MyIcons.otherOff;

      case Menu.chats:
        return MyIcons.chatsOff;

      case Menu.profile:
        return MyIcons.profileOff;

      default:
        return MyIcons.homeOff;
    }
  }

  String get title {
    switch (this) {
      case Menu.weather:
        return MyStrings.weather;
      case Menu.empty:
        return MyStrings.other;
      case Menu.chats:
        return MyStrings.chats;
      case Menu.profile:
        return MyStrings.profile;
      default:
        return MyStrings.weather;
    }
  }

  Widget get viewWidget {
    switch (this) {
      case Menu.weather:
        return const WeatherPage();
      case Menu.empty:
        return const EmptyContainer();
      case Menu.chats:
        return const ChatsPage();

      case Menu.profile:
        return const EmptyContainer();
    }
  }

  Stream get counterStream {
    switch (this) {
      case Menu.weather:
        return const Stream.empty();
      case Menu.empty:
        return Stream.value(5);
      case Menu.chats:
        return const Stream.empty();
      case Menu.profile:
        return const Stream.empty();
    }
  }

  int get counter {
    switch (this) {
      case Menu.weather:
        return 0;
      case Menu.empty:
        return 5;
      case Menu.chats:
        return 0;
      case Menu.profile:
        return 0;
    }
  }
}
