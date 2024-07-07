import 'package:flutter/material.dart';

final class WeatherEmpty extends StatelessWidget {
  const WeatherEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          '🏙️',
          style: TextStyle(fontSize: 64),
        ),
        Text(
          'Please Select a City!',
          style: theme.textTheme.headlineLarge,
        ),
      ],
    );
  }
}
