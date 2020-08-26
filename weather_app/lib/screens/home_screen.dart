import 'package:flutter/material.dart';
import 'package:weather_app/models/day_weather.dart';
import 'package:weather_app/data.dart';
import 'package:weather_app/widgets/weather_carusel.dart';

class HomeScreen extends StatefulWidget {
  final DayWeather dayWeather;

  const HomeScreen({Key key, this.dayWeather}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Breezy'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 36,
                    ),
                    Text(
                      '${dayWeather.geoLocation}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  '${dayWeather.skystatus}',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image(
                      image: AssetImage(dayWeather.iconUrl),
                      width: 180.0,
                    ),
                    RichText(
                      text: TextSpan(
                          text: '${dayWeather.curentTemperature}',
                          style: TextStyle(fontSize: 56),
                          children: [
                            TextSpan(
                                text: '℃',
                                style: TextStyle(color: Colors.yellow))
                          ]),
                    )
                  ],
                ),
              ),
            ),
           WeatherCarusel(),
          ],
        ),
      ),
    );
  }
}
