// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/assets/icon_constants.dart';
import 'package:weather/feature/chat/chats/chats_page.dart';
import 'package:weather/feature/weather/weather_page.dart';
import 'package:weather/theme/text/text14/text_14_medium.dart';

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
        return MyIcons.docsOn;
      case Menu.chats:
        return MyIcons.financesOn;
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
        return MyIcons.docsOff;

      case Menu.chats:
        return MyIcons.financesOff;

      case Menu.profile:
        return MyIcons.profileOff;

      default:
        return MyIcons.homeOff;
    }
  }

  String get title {
    switch (this) {
      case Menu.weather:
        return 'Weather';
      case Menu.empty:
        return 'Empty';
      case Menu.chats:
        return 'Chats';
      case Menu.profile:
        return 'Profile';
      default:
        return 'Weather';
    }
  }

  Widget get viewWidget {
    switch (this) {
      case Menu.weather:
        return const WeatherPage();
      case Menu.empty:
        return const MyText14m('empty');
      case Menu.chats:
        return const ChatsPage();

      case Menu.profile:
        return const MyText14m('profile');
    }
  }
}
