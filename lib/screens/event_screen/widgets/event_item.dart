import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/models/event_model.dart';
import 'package:sdur_app/screens/event_screen/widgets/event_item_views/event_item_info_column.dart';
import 'package:sdur_app/util/sdur_util/sdur_colors.dart';

class EventItem extends StatelessWidget {
  final Event event;

  const EventItem(this.event);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: SdurColors.ACCENT,
      child: EventItemInfoColumn(dateTime: event.dateTime, name: event.name),
    );
  }
}
