// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import 'package:weather/core/models/weather/weather.dart';
import 'package:weather/feature/weather/widgets/value_tile.dart';

class WeatherWidget extends StatelessWidget {
  //
  final Weather weather;

  const WeatherWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            weather.cityName.toUpperCase(),
            style: const TextStyle(
              fontSize: 25,
              letterSpacing: 5,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            weather.description.toUpperCase(),
            style: const TextStyle(
              fontSize: 15,
              letterSpacing: 5,
              fontWeight: FontWeight.w100,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Divider(),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Divider(),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            ValueTile('wind speed', '${weather.windSpeed} m/s'),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Center(
                  child: SizedBox(
                width: 1,
                height: 30,
              )),
            ),
            ValueTile(
                'sunrise',
                DateFormat('h:m a').format(DateTime.fromMillisecondsSinceEpoch(
                    weather.sunrise * 1000))),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Center(
                  child: SizedBox(
                width: 1,
                height: 30,
              )),
            ),
            ValueTile(
                'sunset',
                DateFormat('h:m a').format(DateTime.fromMillisecondsSinceEpoch(
                    weather.sunset * 1000))),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Center(
                  child: SizedBox(
                width: 1,
                height: 30,
              )),
            ),
            ValueTile('humidity', '${weather.humidity}%'),
          ]),
        ],
      ),
    );
  }
}
