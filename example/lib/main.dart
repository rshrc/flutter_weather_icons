import 'package:flutter/material.dart';
import 'package:flutter_weather_icons/flutter_weather_icons.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Weather Icon Demo";

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
                title: Text(
                  title,
                  style: TextStyle(color: Colors.deepPurple, fontSize: 28.0),
                ),
                elevation: 0.0,
                centerTitle: true,
                backgroundColor: Colors.white),
            body: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                choices.length,
                (index) {
                  return Center(
                    child: ChoiceCard(choice: choices[index]),
                  );
                },
              ),
            )));
  }
}

class Choice {
  const Choice({this.icon});

  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(icon: WeatherIcons.daySunny),
  const Choice(icon: WeatherIcons.dayCloudy),
  const Choice(icon: WeatherIcons.dayCloudyGusts),
  const Choice(icon: WeatherIcons.dayCloudyWindy),
  const Choice(icon: WeatherIcons.dayFog),
  const Choice(icon: WeatherIcons.dayHail),
  const Choice(icon: WeatherIcons.dayHaze),
  const Choice(icon: WeatherIcons.dayLightning),
  const Choice(icon: WeatherIcons.dayRain),
  const Choice(icon: WeatherIcons.dayRainMix),
  const Choice(icon: WeatherIcons.dayRainWind),
  const Choice(icon: WeatherIcons.dayShowers),
  const Choice(icon: WeatherIcons.daySleet),
  const Choice(icon: WeatherIcons.daySleetStorm),
  const Choice(icon: WeatherIcons.daySnow),
  const Choice(icon: WeatherIcons.daySnowThunderstorm),
  const Choice(icon: WeatherIcons.daySnowWind),
  const Choice(icon: WeatherIcons.dayDaySprinkle),
  const Choice(icon: WeatherIcons.dayStormShowers),
  const Choice(icon: WeatherIcons.daySunnyOvercast),
  const Choice(icon: WeatherIcons.dayThunderstorm),
  const Choice(icon: WeatherIcons.dayWindy),
  const Choice(icon: WeatherIcons.daySolarEclipse),
  const Choice(icon: WeatherIcons.dayHot),
  const Choice(icon: WeatherIcons.dayCloudyHigh),
  const Choice(icon: WeatherIcons.dayLightWind),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.deepPurple,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(choice.icon, size: 60.0, color: Colors.white),
              ]),
        ));
  }
}
