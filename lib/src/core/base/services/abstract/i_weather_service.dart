import 'package:cubit_weather/src/core/base/services/models/models.dart';

abstract class IWeatherService {
  Future<Weather> fetchWeather(String city);
}
