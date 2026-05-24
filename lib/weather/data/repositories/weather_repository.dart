import 'package:weather_app/weather/data/datasource/remote_datasource.dart';
import 'package:weather_app/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/weather/domain/repositories/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository({required this.baseRemoteDataSource});

  @override
  Future<WeatherEntity> getWeatherByCityName(String cityName) async {
    return (await baseRemoteDataSource.getWeatherByCirtName(cityName))!;
  }
}
