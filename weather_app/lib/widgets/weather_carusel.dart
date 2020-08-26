import 'package:flutter/material.dart';
import 'package:weather_app/models/day_weather.dart';

import '../data.dart';

class WeatherCarusel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.black,
          width: 1.0
        )
        ),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dayWeather.weatherOnWeek.length,
            itemBuilder: (BuildContext context, int index) {
              DayWeather dayWeath = weekWeather[index];
              return Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                    child: Column(
                      children: <Widget>[
                        Text('${dayWeath.day}'),
                        Image(
                          image: AssetImage(dayWeath.iconUrl),
                          width: 50.0,
                        ),
                        Text(
                          '${dayWeath.curentTemperature}',
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider()
                ],
              );
            }),
      ),
    );
  }
}
