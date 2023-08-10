// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:weather/conf/enums/menu_enum.dart';
import 'package:weather/feature/home/mobx/store.dart';
import 'package:weather/theme/default/default_indexed_stack.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.read<HomeStore>();

    return Observer(
      builder: (_) => MyIndexedStack(
        index: store.index,
        children: store.list.map((i) => i.viewWidget).toList(),
      ),
    );
  }
}
