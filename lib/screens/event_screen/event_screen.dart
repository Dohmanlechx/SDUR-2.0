import 'package:flutter/material.dart';
import 'package:sdur_app/dummy_data/dummy_data.dart';
import 'package:sdur_app/resource/sdur_strings.dart';
import 'package:sdur_app/screens/event_screen/widgets/event_item.dart';
import 'package:sdur_app/util/device_info.dart';
import 'package:sdur_app/views/sdur_scaffold.dart';

class EventScreen extends StatefulWidget {
  static const routeName = "/event_screen";

  @override
  State<StatefulWidget> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  List<EventItem> _sortedEventItemsByDate() {
    final events = DUMMY_EVENTS;
    events.sort((a, b) => a.dateTime.compareTo(b.dateTime));
    return events.map((event) => EventItem(event)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final fullWidth = DeviceInfo.width(context);
    final halfWidth = DeviceInfo.width(context) / 2;

    return SdurScaffold(
      appBarTitle: SdurStrings.ACTION_ITEM_EVENTS,
      body: GridView(
        padding: const EdgeInsets.all(32),
        children: <Widget>[
          ..._sortedEventItemsByDate(),
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: DeviceInfo.isSmallDevice(context) ? fullWidth : halfWidth,
          childAspectRatio: 1,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
        ),
      ),
    );
  }
}
