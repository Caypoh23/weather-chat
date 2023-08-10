// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:weather/feature/home/mobx/store.dart';
import 'package:weather/theme/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:weather/theme/container/empty_container.dart';

// Package imports:

// Project imports:

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key});

  //
  @override
  Widget build(BuildContext context) {
    final store = context.read<HomeStore>();

    return KeyboardVisibilityBuilder(
      builder: (_, isKeyBoardVisible) {
        if (isKeyBoardVisible) return const EmptyContainer();

        return Observer(
          builder: (_) => MyBottomNavigationBar(
            list: store.list,
            onTap: store.onTap,
            currentIndex: store.index,
          ),
        );
      },
    );
  }
}
