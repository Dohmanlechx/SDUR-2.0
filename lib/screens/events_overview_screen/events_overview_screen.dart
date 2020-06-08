import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/models/sdur_event.dart';
import 'package:sdur_app/resource/sdur_strings.dart';
import 'package:sdur_app/screens/events_overview_screen/widgets/sdur_event_item.dart';
import 'package:sdur_app/util/device_info.dart';
import 'package:sdur_app/views/loading_screen.dart';
import 'package:sdur_app/views/sdur_scaffold.dart';

class EventsOverviewScreen extends StatefulWidget {
  static const routeName = "/event_screen";

  @override
  State<StatefulWidget> createState() => _EventsOverviewScreenState();
}

class _EventsOverviewScreenState extends State<EventsOverviewScreen> {
  DatabaseReference _eventsRef = FirebaseDatabase.instance.reference();
  List<SdurEvent> _sdurEvents = [];
  bool _isFirebaseDataEmpty = false;

  @override
  void initState() {
    super.initState();
    _eventsRef.onChildAdded.listen(_onEntryAdded);
    _eventsRef.onChildChanged.listen(_onEntryChanged);
    _eventsRef.onChildRemoved.listen(_onEntryRemoved);
    _eventsRef.once().then((DataSnapshot snapshot) {
      setState(() {
        _isFirebaseDataEmpty = (snapshot.value == null);
      });
    });
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
      _isFirebaseDataEmpty = _sdurEvents.isEmpty;
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
      body: _sdurEvents.isEmpty
          ? _isFirebaseDataEmpty
              ? Center(
                  child: Text(
                    SdurStrings.NO_PENDING_EVENTS,
                    style: Theme.of(context).textTheme.headline1.copyWith(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                )
              : const LoadingScreen()
          : GridView(
              padding: const EdgeInsets.all(32),
              children: <Widget>[
                ..._sdurEvents
                    .where((sdurEvent) => sdurEvent.dateTime.isAfter(DateTime.now().subtract(const Duration(days: 1))))
                    .map((sdurEvent) => SdurEventItem(sdurEvent))
                    .toList(),
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
