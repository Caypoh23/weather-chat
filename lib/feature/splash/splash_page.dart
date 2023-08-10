// Flutter imports:
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/core/router/app_router.dart';
import 'package:weather/core/router/navigator_service.dart';
import 'package:weather/theme/default/default_no_app_bar.dart';
import 'package:weather/theme/safe_area/safe_area_b16.dart';

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
    // addPostFrameCallback(() => injector<>.appVersion.fetch());
    //TODO: fetch weather
    injector<NavigatorService>().push(const HomeRoute());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.primary,
      appBar: MyNoAppBar(isLight: false),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            //TODO: loading wether
            //  StreamBuilder<bool>(
            //   stream: RootService.profile.loading$,
            //   initialData: RootService.profile.loading,
            //   builder: (context, authSnapshot) {
            //     final isAuthLoading = authSnapshot.data ?? false;

            //     return MyText16s(
            //       isAppVersionLoading
            //           ? MyStrings.updatingWeather
            //           : (isAuthLoading ? MyStrings.checkForSettings : ''),
            //     );
            //   },

            MySafeAreaB16(),
          ],
        ),
      ),
    );
  }
}
