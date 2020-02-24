import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/models/event.dart';
import 'package:sdur_app/screens/event_screen/widgets/event_item_views/event_item_info_column.dart';
import 'package:sdur_app/util/sdur_util/sdur_colors.dart';
import 'package:sdur_app/views/sdur_scaffold.dart';

class EventDetailsScreen extends StatelessWidget {
  static const routeName = "/event_details_screen";

  @override
  Widget build(BuildContext context) {
    final event = ModalRoute.of(context).settings.arguments as Event;

    return SDURScaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Hero(
                  tag: "eventItem${event.dateTime}",
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.only(top: 32),
                    padding: const EdgeInsets.all(16),
                    color: SdurColors.ACCENT,
                    child: EventItemInfoColumn(
                      dateTime: event.dateTime,
                      name: event.title,
                      targetGroup: event.targetGroup,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              color: SdurColors.ACCENT,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(event.description, style: Theme.of(context).textTheme.body1),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: CupertinoButton(
                  onPressed: () {},
                  color: Colors.blue,
                  child: Text("ANMÄL MIG!"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
