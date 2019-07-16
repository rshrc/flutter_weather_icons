import "dart:convert";
import "dart:io";

import 'package:recase/recase.dart';

void main(List<String> args) {
  File fontsConfigFile = File(args[0]);

  if (!fontsConfigFile.existsSync()) {
    print('config file not found');
    exit(0);
  }

  String content = fontsConfigFile.readAsStringSync();
  List<dynamic> icons = json.decode(content);

  List<String> generatedOutput = [
    "library flutter_weather_icons;\n",
    "import \"package:flutter/widgets.dart\";\n",
    "import \"package:flutter_weather_icons/src/icon_data.dart\";\n\n",
    "// THIS FILE IS AUTOMATICALLY GENERATED!\n\n",
    "class WeatherIcons {\n"
  ];

  for (Map<String, dynamic> icon in icons) {
    icon.forEach((String iconName, dynamic iconUnicode) => generatedOutput.add(
        "static const IconData ${ReCase(iconName).camelCase} = const WeatherIconData(0x$iconUnicode);\n"));
  }

  generatedOutput.add("}\n");

  File output = File('./lib/flutter_weather_icons.dart');
  output.writeAsStringSync(generatedOutput.join());
}