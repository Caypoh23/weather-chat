// Flutter imports:
import 'package:flutter/material.dart';

class MyFocusRemover extends StatelessWidget {
  //
  final Widget child;

  const MyFocusRemover({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
    );
  }
}
