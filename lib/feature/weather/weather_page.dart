// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/utils/location_helper.dart';
import 'widgets/content.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  //
  @override
  void initState() {
    MyLocationHelper.getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const WeatherContent();
  }
}
