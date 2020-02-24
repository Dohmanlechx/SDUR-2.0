import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/screens/event_screen/event_screen.dart';
import 'package:sdur_app/screens/main_screen/main_screen.dart';
import 'package:sdur_app/util/sdur_util/sdur_strings.dart';
import 'package:sdur_app/util/sdur_util/sdur_theme.dart';

void main() => runApp(SDURApp());

class SDURApp extends StatelessWidget {
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: SdurStrings.APP_NAME,
      theme: SdurTheme.getData(),
      home: MainScreen(),
      initialRoute: SDURApp.routeName,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case EventScreen.routeName:
            return CupertinoPageRoute(builder: (_) => EventScreen(), settings: settings);

          default:
            return null;
        }
      },
    );
  }
}
