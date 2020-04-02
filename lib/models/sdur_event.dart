import 'package:firebase_database/firebase_database.dart';

enum TargetGroup {
  KIDS,
  TEENAGERS,
  TEENAGERS_AND_ADULTS,
  ADULTS,
  DEAF_PLUS,
  EVERYONE,
}

class SdurEvent {
  final String snapshotKey;
  final String title;
  final String description;
  final String url;
  final DateTime dateTime;
  final TargetGroup targetGroup;

  const SdurEvent({
    this.snapshotKey,
    this.title,
    this.description,
    this.url,
    this.dateTime,
    this.targetGroup,
  });

  SdurEvent.fromSnapshot(DataSnapshot snapshot)
      : snapshotKey = snapshot.key,
        title = snapshot.value["title"],
        description = snapshot.value["description"],
        url = snapshot.value["url"],
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
      case TargetGroup.DEAF_PLUS:
        return "DÖV+";
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
      case "TargetGroup.DEAF_PLUS":
        return TargetGroup.DEAF_PLUS;
      default:
        return TargetGroup.EVERYONE;
    }
  }
}
