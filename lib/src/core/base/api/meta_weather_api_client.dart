import 'dart:async';
import 'dart:convert';

import 'package:cubit_weather/src/core/constants/app/string_constants.dart';
import 'package:http/http.dart' as http;

import 'api.dart';

final class LocationIdRequestFailure implements Exception {}

final class WeatherRequestFailure implements Exception {}

final class MetaWeatherApiClient {
  const MetaWeatherApiClient({required http.Client httpClient}) : _httpClient = httpClient;

  final http.Client _httpClient;

  Future<Location?> locationSearch(String query) async {
    final locationRequest = Uri.https(StringConstants.baseUrl, '/api/location/search', {
      'query': query,
    });
    final locationResponse = await _httpClient.get(locationRequest);

    if (locationResponse.statusCode != 200) {
      throw LocationIdRequestFailure();
    }

    final locationJson = jsonDecode(
      locationResponse.body,
    ) as List;
    return locationJson.isNotEmpty == true ? Location.fromJson(locationJson.first as Map<String, dynamic>) : null;
  }

  Future<WeatherDetail?> getWeather(int locationId) async {
    final weatherRequest = Uri.https(StringConstants.baseUrl, '/api/location/$locationId');
    final weatherResponse = await _httpClient.get(weatherRequest);

    if (weatherResponse.statusCode != 200) {
      throw WeatherRequestFailure();
    }

    final weatherJson = jsonDecode(
      weatherResponse.body,
    )['consolidated_weather'] as List;
    return weatherJson.isNotEmpty == true ? WeatherDetail.fromJson(weatherJson.first as Map<String, dynamic>) : null;
  }
}
