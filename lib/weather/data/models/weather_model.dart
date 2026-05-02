import 'package:weather_app/weather/domain/entities/weather_entity.dart';

class WeatherModel extends WeatherEntity {
  WeatherModel({
    required super.cityName,
    required super.weatherCondition,
    required super.tempC,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json["location"]["name"],
      weatherCondition: json["current"]["condition"]["text"],
      tempC: json["current"]["temp_c"],
    );
  }
}
