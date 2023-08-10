// Flutter imports:
import 'package:flutter/material.dart';

class MySafeAreaB16 extends StatelessWidget {
  const MySafeAreaB16({super.key});

  //
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: SizedBox(height: 16),
    );
  }
}
