import 'package:firebase_database/firebase_database.dart';

enum TargetGroup { KIDS, TEENAGERS, TEENAGERS_AND_ADULTS, ADULTS, EVERYONE }

class SdurEvent {
  final String snapshotKey;
  final String title;
  final String description;
  final DateTime dateTime;
  final TargetGroup targetGroup;

  const SdurEvent({
    this.snapshotKey,
    this.title,
    this.description,
    this.dateTime,
    this.targetGroup,
  });

  SdurEvent.fromSnapshot(DataSnapshot snapshot)
      : snapshotKey = snapshot.key,
        title = snapshot.value["title"],
        description = snapshot.value["description"],
        targetGroup = snapshot.value["targetGroup"].toString().fromTextToTargetGroup(),
        dateTime = DateTime.parse(snapshot.value["dateTime"]);
}

extension ParseTargetGroupToString on TargetGroup {
  toText() {
    switch (this) {
      case TargetGroup.KIDS:
        return "KiDS";
      case TargetGroup.TEENAGERS:
        return "13-17";
      case TargetGroup.TEENAGERS_AND_ADULTS:
        return "13-31";
      case TargetGroup.ADULTS:
        return "18-31";
      default:
        return "Alla";
    }
  }
}

extension ParseStringToTargetGroup on String {
  fromTextToTargetGroup() {
    switch (this) {
      case "TargetGroup.KIDS":
        return TargetGroup.KIDS;
      case "TargetGroup.TEENAGERS":
        return TargetGroup.TEENAGERS;
      case "TargetGroup.TEENAGERS_AND_ADULTS":
        return TargetGroup.TEENAGERS_AND_ADULTS;
      case "TargetGroup.ADULTS":
        return TargetGroup.ADULTS;
      default:
        return TargetGroup.EVERYONE;
    }
  }
}
