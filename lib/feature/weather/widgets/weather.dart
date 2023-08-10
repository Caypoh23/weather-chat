// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/space.dart';
import 'package:weather/core/models/weather/data/weather_data.dart';
import 'package:weather/theme/text/text24%20copy/text_24_semi_bold.dart';

class WeatherWidget extends StatelessWidget {
  //
  final WeatherData? weather;

  const WeatherWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    final temperature = '${weather?.main?.tempSt}';
    final weatherItem = weather?.weatherList?.first;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText24s(
            weather?.name?.toUpperCase() ?? 'Moscow',
          ),
          const SizedBox(height: 20),
          Text(
            weatherItem?.description?.toUpperCase() ?? '',
            style: const TextStyle(
              fontSize: 15,
              letterSpacing: 5,
              fontWeight: FontWeight.w100,
            ),
          ),
          Icon(
            weatherItem?.getIconData(),
            color: MyColors.primary,
            size: 70,
          ),
          Space.v16,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                temperature,
                style: const TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                '°C',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
