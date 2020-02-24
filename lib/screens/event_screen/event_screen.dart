import 'package:flutter/material.dart';
import 'package:sdur_app/dummy_data/dummy_data.dart';
import 'package:sdur_app/screens/event_screen/widgets/event_item.dart';
import 'package:sdur_app/util/device_info.dart';
import 'package:sdur_app/util/sdur_util/sdur_strings.dart';
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
      body: GridView(
        padding: const EdgeInsets.all(32),
        children: <Widget>[
          ...DUMMY_EVENTS.map((event) => EventItem(event)).toList(),
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: DeviceInfo.isSmallDevice(context) ? 400 : 200,
          childAspectRatio: 1,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
        ),
      ),
    );
  }
}
