import 'package:flutter/material.dart';

final class WeatherLoading extends StatelessWidget {
  const WeatherLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          '⛅',
          style: TextStyle(fontSize: 64),
        ),
        Text(
          'Loading Weather',
          style: theme.textTheme.headlineLarge,
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: CircularProgressIndicator.adaptive(),
        ),
      ],
    );
  }
}
