import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/resource/sdur_colors.dart';
import 'package:sdur_app/screens/main_screen/widgets/action_item_views/box_decoration.dart';
import 'package:sdur_app/screens/main_screen/widgets/action_item_views/hollowed_circle.dart';

class ActionItem extends StatelessWidget {
  final String title;
  final Color color;
  final Function onClick;

  const ActionItem({
    this.title,
    this.color,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      splashColor: SdurColors.BLACK,
      borderRadius: BorderRadius.circular(4),
      child: ActionContainer(title, color),
    );
  }
}

class ActionContainer extends StatelessWidget {
  final String title;
  final Color color;

  const ActionContainer(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: <Widget>[
            const Spacer(),
            HollowedCircle(color),
            const SizedBox(height: 16),
            Text(title, style: Theme.of(context).textTheme.bodyText2),
            const Spacer(),
          ],
        ),
      ),
      decoration: ActionItemBoxDecoration.getBoxDecoration(color),
    );
  }
}
