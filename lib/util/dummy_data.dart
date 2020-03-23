//final databaseRef = FirebaseDatabase.instance.reference();
//final idGenerator = Uuid();
//
//const dummyDesc =
//    "Lorem Ipsum är en utfyllnadstext från tryck- och förlagsindustrin. Lorem ipsum har varit standard ända sedan 1500-talet, när en okänd boksättare tog att antal bokstäver och blandade dem för att göra ett provexemplar av en bok. Lorem ipsum har inte bara överlevt fem århundraden, utan även övergången till elektronisk typografi utan större förändringar. Det blev allmänt känt på 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker.";
//
//final DUMMY_EVENTS = [
//  SdurEvent(
//    title: "Uteritten",
//    description: dummyDesc,
//    url: "https://www.sdur.se/event/boda-borg-2/",
//    dateTime: DateTime.utc(2020, 10, 11),
//    targetGroup: TargetGroup.TEENAGERS_AND_ADULTS,
//  ),
//  SdurEvent(
//    title: "Julafton!",
//    description: dummyDesc,
//    dateTime: DateTime.utc(2020, 12, 24),
//    targetGroup: TargetGroup.TEENAGERS,
//  ),
//  SdurEvent(
//    title: "KIDS@DUKiS",
//    description: dummyDesc,
//    url: "https://www.sdur.se/event/boda-borg-2/",
//    dateTime: DateTime.utc(2020, 9, 6),
//    targetGroup: TargetGroup.KIDS,
//  ),
//  SdurEvent(
//    title: "Miljötänk av Chuck Norris",
//    description: dummyDesc,
//    dateTime: DateTime.utc(2020, 9, 28),
//    targetGroup: TargetGroup.EVERYONE,
//  ),
//  SdurEvent(
//    title: "Dövas Dag",
//    description: dummyDesc,
//    url: "https://www.sdur.se/event/boda-borg-2/",
//    dateTime: DateTime.utc(2020, 11, 15),
//    targetGroup: TargetGroup.ADULTS,
//  ),
//];
//
//for (var event in DUMMY_EVENTS) {
//databaseRef.child("Event: ${idGenerator.v1()}").set({
//'title': event.title,
//'description': event.description,
//'url': event.url,
//'dateTime': event.dateTime.toIso8601String(),
//'targetGroup': event.targetGroup.toString(),
//});
//}