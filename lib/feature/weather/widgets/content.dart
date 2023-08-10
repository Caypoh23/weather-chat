// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/space.dart';
import 'package:weather/core/models/weather/data/weather_data.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/feature/weather/redux/service.dart';
import 'package:weather/theme/states/loading_state.dart';
import 'package:weather/theme/text/text16/text_16_medium.dart';
import 'package:weather/utils/date_formatter.dart';
import 'package:weather/utils/date_helper.dart';
import 'text_fields/search_text_field.dart';
import 'weather.dart';

class WeatherContent extends StatelessWidget {
  const WeatherContent({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherService = injector<WeatherService>();

    return Column(
      children: [
        const WeatherSearchField(),
        StreamBuilder<bool>(
          stream: weatherService.loading$,
          initialData: weatherService.loading,
          builder: (context, snapshot) {
            final isLoading = snapshot.data ?? false;

            if (isLoading) {
              return const Expanded(child: MyLoadingState());
            }

            return StreamBuilder<WeatherData?>(
              stream: weatherService.weather$,
              initialData: weatherService.weather,
              builder: (context, snapshot) {
                final model = snapshot.data;

                return Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Space.v12,
                      MyText16m(
                        MyDateFormatter.fdMMMMyyyy(
                          MyDateHelper.today,
                        ),
                      ),
                      Space.v12,
                      WeatherWidget(
                        weather: model,
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
