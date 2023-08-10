// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/core/models/weather/data/weather_data.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/feature/weather/redux/service.dart';
import 'package:weather/theme/states/loading_state.dart';
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
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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

                      return WeatherWidget(
                        weather: model,
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
