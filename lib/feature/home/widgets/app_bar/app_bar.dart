// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:weather/conf/enums/menu_enum.dart';
import 'package:weather/feature/home/mobx/store.dart';
import 'package:weather/theme/default/default_app_bar.dart';
import 'package:weather/utils/media_helper.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.read<HomeStore>();

    return Observer(
      builder: (_) => MyAppBar(
        canPop: false,
        title: store.list[store.index].title,
      ),
    );
  }

  @override
  Size get preferredSize => MediaHelper.appBarSize!;
}
