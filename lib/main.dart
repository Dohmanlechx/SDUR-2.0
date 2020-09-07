import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/config/sdur_config.dart';
import 'package:sdur_app/resource//sdur_strings.dart';
import 'package:sdur_app/resource/sdur_theme.dart';
import 'package:sdur_app/screens/contact_screen/contact_screen.dart';
import 'package:sdur_app/screens/event_details_screen/event_details_screen.dart';
import 'package:sdur_app/screens/events_overview_screen/events_overview_screen.dart';
import 'package:sdur_app/screens/main_screen/main_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final fbApp = await Firebase.initializeApp(
    name: 'sdur_db',
    options: const FirebaseOptions(
      appId: FirebaseConfig.GOOGLE_APP_ID,
      apiKey: FirebaseConfig.API_KEY,
      databaseURL: FirebaseConfig.DATABASE_URL,
      projectId: 'sdur-3467d',
      messagingSenderId: '854332587940',
    ),
  );

  runApp(SDURApp(fbApp));
}

class SDURApp extends StatelessWidget {
  static const routeName = '/';

  final FirebaseApp fbApp;

  const SDURApp(this.fbApp);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: SdurStrings.APP_NAME,
      theme: SdurTheme.getData(),
      home: MainScreen(),
      initialRoute: SDURApp.routeName,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case EventsOverviewScreen.routeName:
            return CupertinoPageRoute(builder: (_) => EventsOverviewScreen(), settings: settings);
          case EventDetailsScreen.routeName:
            return MaterialPageRoute(builder: (_) => EventDetailsScreen(), settings: settings);
          case ContactScreen.routeName:
            return CupertinoPageRoute(builder: (_) => ContactScreen(), settings: settings);
          default:
            return null;
        }
      },
    );
  }
}
