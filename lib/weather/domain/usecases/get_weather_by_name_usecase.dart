import 'package:weather_app/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/weather/domain/repositories/weather_repository.dart';

class GetWeatherByNameUsecase {
  final WeatherRepository weatherRepository;

  GetWeatherByNameUsecase({required this.weatherRepository});

  Future<WeatherEntity> execute(cityName) async{
    return await weatherRepository.getWeatherByCityName(cityName);
  }
}
