![header](github_assets/header.jpg)
# flutter_weather_icons 0.0.7

## 222 Weather Themed Icons for Flutter.

This flutter package allows you to use all of the [Weather Icons](https://raw.githubusercontent.com/erikflowers/weather-icons) made by [Erik Flowers](https://github.com/erikflowers)

Find it at at [pub.dartlang.org](https://pub.dev/packages/flutter_weather_icons)

![Icon Preview](http://i.imgur.com/XmZW2q3.png)

## Installation

In the dependencies: section of your pubspec.yaml, add the following line:

`flutter_weather_icons: <latest_version>`

## Usage

```dart
import 'package:flutter_weather_icons/flutter_weather_icons.dart';

class MyAwesomeWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return IconButton(
      // Use the EvaIcons class for the IconData
      icon: Icon(WeatherIcons.daySunny),
      onPressed: () { 
          print("Weather Icon Pressed! It's Sunny"); 
      }
     );
  }
}
```

## Example

View the Flutter app in the `example` directory.

## Screenshot
![screenshot](github_assets/screenshot.jpg)


## Developers

*Made with ❤️ by [Rishi Banerjee](https://github.com/rshrc) and [Nikhil Anand](https://github.com/muj-programmer)*


