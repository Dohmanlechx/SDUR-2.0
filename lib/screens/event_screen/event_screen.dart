import 'package:flutter/material.dart';
import 'package:sdur_app/util/sdur_strings.dart';
import 'package:sdur_app/views/sdur_scaffold.dart';

class EventScreen extends StatefulWidget {
  static const routeName = "/event_screen";

  @override
  State<StatefulWidget> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return SDURScaffold(
      appBarTitle: SdurStrings.ACTION_ITEM_EVENTS,
      body: Center(child: Text("EventScreen")),
    );
  }
}
