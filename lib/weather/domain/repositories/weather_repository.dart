import 'package:weather_app/weather/domain/entities/weather_entity.dart';

abstract class WeatherRepository {
  Future<WeatherEntity> getWeatherByCityName(String cityName);
}
