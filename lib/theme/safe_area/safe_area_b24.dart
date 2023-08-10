// Flutter imports:
import 'package:flutter/material.dart';

class MySafeAreaB24 extends StatelessWidget {
  const MySafeAreaB24({super.key});

  //
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: SizedBox(height: 24),
    );
  }
}
