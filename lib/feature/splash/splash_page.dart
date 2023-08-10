// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/annotations.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/core/router/app_router.dart';
import 'package:weather/core/router/navigator_service.dart';
import 'package:weather/feature/weather/redux/service.dart';
import 'package:weather/theme/default/default_no_app_bar.dart';
import 'package:weather/theme/safe_area/safe_area_b16.dart';
import 'package:weather/theme/text/text16/text_16_semi_bold.dart';

// Project imports:
@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  //
  @override
  void initState() {
    addPostFrameCallback(() => injector<WeatherService>().fetch());
    injector<NavigatorService>().push(const HomeRoute());
    super.initState();
  }

  @override
  void dispose() {
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
        children: [
          StreamBuilder<bool>(
            stream: weatherService.loading$,
            initialData: weatherService.loading,
            builder: (context, snapshot) {
              final isLoading = snapshot.data ?? false;

              return MyText16s(
                isLoading
                    ? MyStrings.updatingWeather
                    : (isLoading ? MyStrings.updatingWeather : ''),
              );
            },
          ),
          const MySafeAreaB16(),
        ],
      ),
    );
  }
}
