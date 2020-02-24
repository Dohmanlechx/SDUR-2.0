import 'package:flutter/material.dart';

enum TargetGroup { KIDS, TEENAGERS, ADULTS, EVERYONE }

class Event {
  final String name;
  final DateTime dateTime;
  final TargetGroup targetGroup;

  const Event({
    @required this.name,
    @required this.dateTime,
    @required this.targetGroup,
  });
}
