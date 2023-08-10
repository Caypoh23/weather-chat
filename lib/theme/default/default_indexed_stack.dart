// Flutter imports:
import 'package:flutter/material.dart';

class MyIndexedStack extends StatelessWidget {
  //
  final int index;
  final List<Widget> children;

  const MyIndexedStack({super.key, 
    required this.index,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: index,
      children: children,
    );
  }
}
