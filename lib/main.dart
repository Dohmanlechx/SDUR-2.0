import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/resource//sdur_strings.dart';
import 'package:sdur_app/resource/sdur_theme.dart';
import 'package:sdur_app/screens/event_details_screen/event_details_screen.dart';
import 'package:sdur_app/screens/event_screen/event_screen.dart';
import 'package:sdur_app/screens/main_screen/main_screen.dart';

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
          case EventDetailsScreen.routeName:
            return MaterialPageRoute(builder: (_) => EventDetailsScreen(), settings: settings);

          default:
            return null;
        }
      },
    );
  }
}
