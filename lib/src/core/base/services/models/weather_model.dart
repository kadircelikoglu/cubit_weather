import 'package:cubit_weather/src/core/constants/enums/weather_enum.dart';
import 'package:flutter/material.dart';

@immutable
final class Weather {
  const Weather({
    required this.location,
    required this.temperature,
    required this.condition,
  });

  final String location;
  final double temperature;
  final WeatherCondition condition;
}
