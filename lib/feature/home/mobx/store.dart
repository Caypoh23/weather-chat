// Dart imports:
import 'dart:async';

// Package imports:
import 'package:mobx/mobx.dart';

// Project imports:
import 'package:weather/conf/enums/menu_enum.dart';

part 'store.g.dart';

class HomeStore extends _HomeStore with _$HomeStore {}

abstract class _HomeStore with Store {
  //

  @observable
  int index = 0;

  List<Menu> get list => [
        Menu.weather,
        Menu.empty,
        Menu.chats,
        Menu.profile,
      ];

  Future<bool> onWillPop() async {
    if (index == 0) return true;

    return false;
  }

  void onTap(int newIndex) {
    if (index != newIndex) {
      setIndex(newIndex);
    }
  }

  @action
  void setIndex(int value) => index = value;
}
