import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/models/sdur_event.dart';
import 'package:sdur_app/util/datetime_helper.dart';

class EventItemInfoColumn extends StatelessWidget {
  final DateTime dateTime;
  final String name;
  final TargetGroup targetGroup;

  const EventItemInfoColumn({
    @required this.dateTime,
    @required this.name,
    this.targetGroup,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _targetGroup(context),
          _dateAndMonth(context),
          _name(context),
        ],
      ),
    );
  }

  _targetGroup(BuildContext ctx) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            targetGroup.toText(),
            style: Theme.of(ctx).textTheme.title.copyWith(fontSize: 22),
          ),
        ),
        Divider(),
      ],
    );
  }

  _dateAndMonth(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Text.rich(
        TextSpan(
          text: dateTime.day.toString(),
          style: Theme.of(ctx).textTheme.title.copyWith(fontSize: 32, fontWeight: FontWeight.bold),
          children: <InlineSpan>[
            TextSpan(
              text: " ${DateTimeHelper.getNameOfMonth(dateTime.month)}",
              style: Theme.of(ctx).textTheme.title.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  _name(BuildContext ctx) {
    return Expanded(
      child: AutoSizeText(
        name,
        style: Theme.of(ctx).textTheme.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
