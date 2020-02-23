import 'package:flutter/material.dart';

import 'screens/main/main_screen.dart';

void main() => runApp(SDURApp());

class SDURApp extends StatelessWidget {
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SDUR',
      theme: _themeData(),
      home: MainScreen(),
      initialRoute: SDURApp.routeName,
      onGenerateRoute: (RouteSettings settings) {
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (_) => MainScreen());
      },
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
            ),
      );
}
