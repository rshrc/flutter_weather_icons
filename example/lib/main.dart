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
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 28.0,
            ),
          ),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(
            choices.length,
            (index) => Center(
              child: ChoiceCard(choice: choices[index]),
            ),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.icon});

  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(icon: WeatherIcons.wiAlien),
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
            Icon(
              choice.icon,
              size: 60.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
