// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/annotations.dart';
import 'package:rxdart/rxdart.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/core/router/navigator_service.dart';
import 'package:weather/feature/weather/redux/service.dart';
import 'package:weather/theme/default/default_no_app_bar.dart';
import 'package:weather/theme/safe_area/safe_area_b16.dart';
import 'package:weather/theme/text/text16/text_16_semi_bold.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static final BehaviorSubject<bool> _isOpen = BehaviorSubject.seeded(false);
  static BehaviorSubject<bool> get isOpen$ => _isOpen;
  static bool get isOpen => _isOpen.value;
  void closeSink() => _isOpen.close();

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with WidgetsBindingObserver {
  //
  @override
  void initState() {
    addPostFrameCallback(() => injector<WeatherService>().fetch());
    SplashPage._isOpen.value = true;
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    SplashPage._isOpen.value = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final weatherService = injector<WeatherService>();

    return Scaffold(
      backgroundColor: MyColors.primary,
      appBar: const MyNoAppBar(isLight: false),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StreamBuilder<bool>(
            stream: weatherService.loading$,
            initialData: weatherService.loading,
            builder: (context, snapshot) {
              final isLoading = snapshot.data ?? false;

              return Center(
                child: MyText16s(
                  isLoading ? MyStrings.updatingWeather : '',
                  textAlign: TextAlign.center,
                  color: MyColors.white,
                ),
              );
            },
          ),
          const MySafeAreaB16(),
        ],
      ),
    );
  }
}
