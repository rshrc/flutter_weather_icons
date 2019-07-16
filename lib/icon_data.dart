library weather_icons_flutter;

import 'package:flutter/widgets.dart';

class WeatherIconData extends IconData {
  const WeatherIconData(int codePoint)
      : super(
    codePoint,
    fontFamily: 'WeatherIcons',
    fontPackage: 'weather_icons_flutter',
  );
}