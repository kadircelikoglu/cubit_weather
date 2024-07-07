import 'package:cubit_weather/src/core/base/api/meta_weather_api_client.dart';
import 'package:cubit_weather/src/core/base/services/weather_service.dart';
import 'package:cubit_weather/src/core/base/weather/weather_app.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  final httpClient = http.Client();
  final MetaWeatherApiClient weatherApiClient = MetaWeatherApiClient(httpClient: httpClient);
  final WeatherService weatherService = WeatherService(weatherApiClient: weatherApiClient);
  runApp(WeatherApp(weatherService: weatherService));
}
