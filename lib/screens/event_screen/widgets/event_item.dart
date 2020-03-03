import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/models/event.dart';
import 'package:sdur_app/resource/sdur_colors.dart';
import 'package:sdur_app/screens/event_details_screen/event_details_screen.dart';
import 'package:sdur_app/screens/event_details_screen/event_details_views/event_item_info_column.dart';

class EventItem extends StatelessWidget {
  final Event event;

  const EventItem(this.event);

  void _selectEvent(BuildContext ctx) => Navigator.of(ctx).pushNamed(EventDetailsScreen.routeName, arguments: event);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectEvent(context),
      child: Hero(
        tag: "${event.hashCode}",
        child: Container(
          padding: const EdgeInsets.all(16),
          color: SdurColors.ACCENT,
          child: EventItemInfoColumn(
            dateTime: event.dateTime,
            name: event.title,
            targetGroup: event.targetGroup,
          ),
        ),
      ),
    );
  }
}
