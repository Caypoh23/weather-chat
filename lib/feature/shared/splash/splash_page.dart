// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/system_ui_overlay_style_constants.dart';
import 'package:weather/theme/default/default_container.dart';
import 'package:weather/theme/default/default_no_app_bar.dart';
import 'package:weather/theme/safe_area/safe_area_b24.dart';
import 'package:weather/utils/media_helper.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  //
  @override
  void initState() {
    // addPostFrameCallback(injector<AppVersionService>().fetch);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.neutral,
      appBar: const MyNoAppBar(isLight: true),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: MySystemUiOverlayStyle.lightNavBar,
        child: Stack(
          children: [
            // Center(
            //   child: Image.asset(
            //     MyImages.logo,
            //     width: MediaHelper.width * 0.44,
            //   ),
            // ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MyContainer(
                    color: MyColors.white,
                    width: MediaHelper.width,
                    child: const MySafeAreaB24(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
