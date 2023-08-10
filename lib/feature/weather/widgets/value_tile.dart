// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/theme/container/empty_container.dart';

class ValueTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData? iconData;

  const ValueTile(
    this.label,
    this.value, {
    super.key,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
        ),
        const SizedBox(
          height: 5,
        ),
        iconData != null
            ? Icon(
                iconData,
                size: 20,
              )
            : const EmptyContainer(),
        const SizedBox(
          height: 10,
        ),
        Text(
          value,
        ),
      ],
    );
  }
}
