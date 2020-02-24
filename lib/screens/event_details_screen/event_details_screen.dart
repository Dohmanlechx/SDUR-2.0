import 'package:flutter/material.dart';
import 'package:sdur_app/models/event.dart';
import 'package:sdur_app/views/sdur_scaffold.dart';

class EventDetailsScreen extends StatelessWidget {
  static const routeName = "/event_details_screen";

  @override
  Widget build(BuildContext context) {
    final event = ModalRoute.of(context).settings.arguments as Event;

    return SDURScaffold(
      appBarTitle: event.title,
      body: Container(),
    );
  }
}
