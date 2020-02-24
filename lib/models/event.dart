import 'package:flutter/material.dart';

enum TargetGroup { KIDS, TEENAGERS, TEENAGERS_AND_ADULTS, ADULTS, EVERYONE }

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

class Event {
  final String title;
  final String description;
  final DateTime dateTime;
  final TargetGroup targetGroup;

  const Event({
    @required this.title,
    this.description,
    @required this.dateTime,
    @required this.targetGroup,
  });
}
