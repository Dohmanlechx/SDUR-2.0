import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/screens/event_screen/event_screen.dart';
import 'package:sdur_app/screens/main_screen/main_screen.dart';
import 'package:sdur_app/util/sdur_colors.dart';
import 'package:sdur_app/util/sdur_strings.dart';

void main() => runApp(SDURApp());

class SDURApp extends StatelessWidget {
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: SDURStrings.APP_NAME,
      theme: _themeData(),
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
      // TODO: Should we really use this?
//      onUnknownRoute: (RouteSettings settings) {
//        return MaterialPageRoute(builder: (_) => MainScreen());
//      },
    );
  }

  _themeData() => ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Helvetica",
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: "Helvetica",
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              body2: TextStyle(
                fontFamily: "Helvetica",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: SDURColors.WHITE,
              ),
            ),
      );
}
