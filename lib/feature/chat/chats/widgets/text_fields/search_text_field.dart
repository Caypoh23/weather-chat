// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/duration_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/theme/text_fields/search_text_field.dart';

class ChatsSearchField extends StatefulWidget {
  const ChatsSearchField({super.key});

  @override
  State<ChatsSearchField> createState() => _ChatsSearchFieldState();
}

class _ChatsSearchFieldState extends State<ChatsSearchField> {
  //
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      snap: false,
      pinned: false,
      floating: true,
      toolbarHeight: 0,
      expandedHeight: 87,
      collapsedHeight: 87,
      backgroundColor: MyColors.white,
      shadowColor: MyColors.transparent,
      flexibleSpace: Padding(
        padding: MyEdgeInsets.all16.copyWith(bottom: 12),
        child: SearchTextField(onChanged: onChanged),
      ),
    );
  }

  void onChanged(String search) {
    timer?.cancel();
    timer = Timer.periodic(MyDurations.ms400, (timer) {
      // MySearchHelper.search(search, nameById, itemById);
      timer.cancel();
    });
  }
}
