import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_app/core/utils/app_constants.dart';
import 'package:weather_app/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCirtName(String cityName);
}

class RemoteDatasource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCirtName(String cityName) async {
    try {
      var response = await Dio().get(
        "${AppConstants.baseUrl}/forecast.json?q=$cityName&key=${AppConstants.apiKey}",
      );
      print(response);
      return WeatherModel.fromJson(json.decode(response.data));
    } catch (e) {
      print(e);
      return null;
    }
  }
}
