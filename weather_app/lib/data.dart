import 'package:weather_app/functions.dart';
import 'models/day_weather.dart';

List<DayWeather> weekWeather = [
  DayWeather(
    skystatus: 'Clear sky',
    curentTemperature: 29,
    iconUrl:'assets/icons/sun.png',
    day: getCurentDay(),
    ),
  DayWeather(
    skystatus: 'Clear sky',
    curentTemperature: 25,
    iconUrl:'assets/icons/sun.png',
    day: getCurentDay(),
    ),
  DayWeather(
    skystatus: 'Cloudy',
    curentTemperature: 22,
    iconUrl:'assets/icons/cloudy.png',
    day: getCurentDay(),
    ),
  DayWeather(
    skystatus: 'Rainy',
    curentTemperature: 28,
    iconUrl:'assets/icons/rain.png',
    day: getCurentDay(),
    ),
  DayWeather(
    skystatus: 'Rainy',
    curentTemperature: 21,
    iconUrl:'assets/icons/rain.png',
    day: getCurentDay(),
    ),
];

DayWeather dayWeather = DayWeather(geoLocation:'Svytoshino', curentTemperature: 28, skystatus: 'Clear sky', iconUrl: 'assets/icons/sun.png',weatherOnWeek: weekWeather );