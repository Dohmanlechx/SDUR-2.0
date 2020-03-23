import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/models/sdur_event.dart';
import 'package:sdur_app/resource/sdur_strings.dart';
import 'package:sdur_app/screens/events_overview_screen/widgets/sdur_event_item.dart';
import 'package:sdur_app/util/device_info.dart';
import 'package:sdur_app/views/sdur_scaffold.dart';

class EventsOverviewScreen extends StatefulWidget {
  static const routeName = "/event_screen";

  @override
  State<StatefulWidget> createState() => _EventsOverviewScreenState();
}

class _EventsOverviewScreenState extends State<EventsOverviewScreen> {
  List<SdurEvent> _sdurEvents = [];
  DatabaseReference _eventsRef;

  @override
  void initState() {
    super.initState();
    _eventsRef = FirebaseDatabase.instance.reference();
    _eventsRef.onChildAdded.listen(_onEntryAdded);
    _eventsRef.onChildChanged.listen(_onEntryChanged);
    _eventsRef.onChildRemoved.listen(_onEntryRemoved);
  }

  void _onEntryAdded(Event firebaseEvent) {
    setState(() {
      _sdurEvents.add(SdurEvent.fromSnapshot(firebaseEvent.snapshot));
      _sortEventsByDate();
    });
  }

  void _onEntryChanged(Event firebaseEvent) {
    final SdurEvent oldSdurEvent = _sdurEvents.singleWhere((entry) => entry.snapshotKey == firebaseEvent.snapshot.key);
    setState(() {
      _sdurEvents[_sdurEvents.indexOf(oldSdurEvent)] = SdurEvent.fromSnapshot(firebaseEvent.snapshot);
      _sortEventsByDate();
    });
  }

  void _onEntryRemoved(Event firebaseEvent) {
    setState(() {
      _sdurEvents.removeWhere((entry) => entry.snapshotKey == firebaseEvent.snapshot.key);
    });
  }

  void _sortEventsByDate() {
    _sdurEvents.sort((a, b) => a.dateTime.compareTo(b.dateTime));
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
          ..._sdurEvents.map((sdurEvent) => SdurEventItem(sdurEvent)).toList(),
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

//final databaseRef = FirebaseDatabase.instance.reference();
//final idGenerator = Uuid();
//
//    for (var event in DUMMY_EVENTS) {
//      databaseRef.child("Event: ${idGenerator.v1()}").set({
//        'title': event.title,
//        'description': event.description,
//        'dateTime': event.dateTime.toIso8601String(),
//        'targetGroup': event.targetGroup.toString(),
//      });
//    }
//
//databaseRef.once().then((snapshot) {
//print("Data: ${snapshot.value}");
//});
