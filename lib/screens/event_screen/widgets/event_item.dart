import 'package:flutter/material.dart';
import 'package:sdur_app/models/event_model.dart';
import 'package:sdur_app/util/sdur_colors.dart';

class EventItem extends StatelessWidget {
  final Event event;

  const EventItem(this.event);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SdurColors.ACCENT,
      child: Center(child: Text(event.name)),
    );
  }
}
