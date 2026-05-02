import 'package:weather_app/weather/data/datasource/remote_datasource.dart';
import 'package:weather_app/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/weather/domain/repositories/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final RemoteDatasource remoteDatasource;

  WeatherRepository({required this.remoteDatasource});

  @override
  Future<WeatherEntity> getWeatherByCityName(String cityName) async {
    return (await remoteDatasource.getWeatherByCirtName(cityName))!;
  }
}
