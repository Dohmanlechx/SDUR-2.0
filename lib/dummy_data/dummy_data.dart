import 'package:sdur_app/models/event.dart';

const dummyDesc =
    "Lorem Ipsum är en utfyllnadstext från tryck- och förlagsindustrin. Lorem ipsum har varit standard ända sedan 1500-talet, när en okänd boksättare tog att antal bokstäver och blandade dem för att göra ett provexemplar av en bok. Lorem ipsum har inte bara överlevt fem århundraden, utan även övergången till elektronisk typografi utan större förändringar. Det blev allmänt känt på 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker.";

// ignore: non_constant_identifier_names
final DUMMY_EVENTS = [
  Event(
    title: "Uteritten",
    description: dummyDesc,
    dateTime: DateTime.utc(2020, 10, 11),
    targetGroup: TargetGroup.TEENAGERS_AND_ADULTS,
  ),
  Event(
    title: "Julafton!",
    description: dummyDesc,
    dateTime: DateTime.utc(2020, 12, 24),
    targetGroup: TargetGroup.TEENAGERS,
  ),
  Event(
    title: "KIDS@DUKiS",
    description: dummyDesc,
    dateTime: DateTime.utc(2020, 9, 6),
    targetGroup: TargetGroup.KIDS,
  ),
  Event(
    title: "Miljötänk av Chuck Norris",
    description: dummyDesc,
    dateTime: DateTime.utc(2020, 9, 28),
    targetGroup: TargetGroup.EVERYONE,
  ),
  Event(
    title: "Dövas Dag",
    description: dummyDesc,
    dateTime: DateTime.utc(2020, 11, 15),
    targetGroup: TargetGroup.ADULTS,
  ),
];
