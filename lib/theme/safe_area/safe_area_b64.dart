// Flutter imports:
import 'package:flutter/material.dart';

class MySafeAreaB64 extends StatelessWidget {
  const MySafeAreaB64({super.key});

  //
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: SizedBox(height: 64),
    );
  }
}
