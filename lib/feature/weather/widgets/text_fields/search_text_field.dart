// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/duration_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/feature/weather/redux/service.dart';
import 'package:weather/theme/text_fields/search_text_field.dart';

class WeatherSearchField extends StatefulWidget {
  const WeatherSearchField({super.key});

  @override
  State<WeatherSearchField> createState() => _WeatherSearchFieldState();
}

class _WeatherSearchFieldState extends State<WeatherSearchField> {
  //
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyEdgeInsets.all16.copyWith(bottom: 12),
      child: SearchTextField(
        onChanged: onChanged,
        hintText: MyStrings.searchByCity,
      ),
    );
  }

  void onChanged(String search) {
    injector<WeatherService>().search(search);

    timer?.cancel();
    timer = Timer.periodic(MyDurations.ms500, (timer) {
      injector<WeatherService>().fetch();
      timer.cancel();
    });
  }
}
