import 'package:sdur_app/models/event_model.dart';

// ignore: non_constant_identifier_names
final DUMMY_EVENTS = [
  Event(
    name: "KIDS@DUKiS",
    dateTime: DateTime.utc(2020, 9, 6),
    targetGroup: TargetGroup.KIDS,
  ),
  Event(
    name: "Miljötänk av Chuck Norris",
    dateTime: DateTime.utc(2020, 9, 28),
    targetGroup: TargetGroup.EVERYONE,
  ),
  Event(
    name: "Uteritten",
    dateTime: DateTime.utc(2020, 10, 11),
    targetGroup: TargetGroup.TEENAGERS,
  ),
  Event(
    name: "Dövas Dag",
    dateTime: DateTime.utc(2020, 11, 15),
    targetGroup: TargetGroup.EVERYONE,
  ),
  Event(
    name: "Julafton!",
    dateTime: DateTime.utc(2020, 12, 24),
    targetGroup: TargetGroup.EVERYONE,
  ),
];
