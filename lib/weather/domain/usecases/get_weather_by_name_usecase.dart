import 'package:weather_app/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/weather/domain/repositories/base_weather_repository.dart';

class GetWeatherByNameUsecase {
  final BaseWeatherRepository weatherRepository;

  GetWeatherByNameUsecase({required this.weatherRepository});

  Future<WeatherEntity> execute(cityName) async{
    return await weatherRepository.getWeatherByCityName(cityName);
  }
}
