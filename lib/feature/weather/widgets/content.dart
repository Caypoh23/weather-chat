// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/conf/values/space.dart';
import 'package:weather/core/models/weather/weather.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/feature/weather/redux/service.dart';
import 'package:weather/theme/text/text16/text_16_medium.dart';
import 'package:weather/utils/date_formatter.dart';
import 'package:weather/utils/date_helper.dart';
import 'text_fields/search_text_field.dart';

class WeatherContent extends StatelessWidget {
  const WeatherContent({super.key});

  @override
  Widget build(BuildContext context) {
    final service = injector<WeatherService>();

    return StreamBuilder<Weather?>(
      stream: service.weather$,
      initialData: service.weather,
      builder: (context, snapshot) {
        final model = snapshot.data ?? null;

        return ListView(
          padding: MyEdgeInsets.all16.copyWith(top: 0),
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const WeatherSearchField(),
            Space.v12,
            MyText16m(
              MyDateFormatter.fdMMMMyyyy(
                MyDateHelper.today,
              ),
              textAlign: TextAlign.center,
            ),
            // WeatherWidget(weather: model)
          ],
        );
      },
    );
  }
}
