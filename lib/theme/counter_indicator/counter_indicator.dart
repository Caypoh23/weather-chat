// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'counter.dart';

class CounterIndicator extends StatelessWidget {
  //
  final Stream<int> stream;
  final int counter;
  final bool isDashboard;

  const CounterIndicator({
    super.key,
    required this.stream,
    required this.counter,
    this.isDashboard = false,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: stream,
      initialData: counter,
      builder: (context, snapshot) {
        final counter = snapshot.data ?? 0;
        return Counter(
          counter: counter,
          isDashboard: isDashboard,
        );
      },
    );
  }
}
