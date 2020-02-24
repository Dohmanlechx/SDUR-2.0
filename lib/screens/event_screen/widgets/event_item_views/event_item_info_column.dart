import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/util/datetime_helper.dart';

class EventItemInfoColumn extends StatelessWidget {
  final DateTime dateTime;
  final String name;

  const EventItemInfoColumn({
    @required this.dateTime,
    @required this.name,
  });

  Widget _dateAndMonth(BuildContext ctx) {
    return Text.rich(
      TextSpan(
        text: dateTime.day.toString(),
        style: Theme.of(ctx).textTheme.title.copyWith(fontSize: 32),
        children: <InlineSpan>[
          TextSpan(
            text: " ${DateTimeHelper.getNameOfMonth(dateTime.month)}",
            style: Theme.of(ctx).textTheme.title,
          ),
        ],
      ),
    );
  }

  Widget _name(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: AutoSizeText(
        name,
        style: Theme.of(ctx).textTheme.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Spacer(),
        _dateAndMonth(context),
        _name(context),
        const Spacer(),
      ],
    );
  }
}
