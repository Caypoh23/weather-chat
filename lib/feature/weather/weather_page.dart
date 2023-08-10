// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'widgets/content.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  //
  @override
  Widget build(BuildContext context) {
    return const WeatherContent();
  }
}
