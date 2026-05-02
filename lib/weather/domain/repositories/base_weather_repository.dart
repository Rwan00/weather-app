import 'package:weather_app/weather/domain/entities/weather_entity.dart';

abstract class BaseWeatherRepository {
  Future<WeatherEntity> getWeatherByCityName(String cityName);
}
