import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/screens/main_screen/widgets/action_item/hollowed_circle.dart';
import 'package:sdur_app/util/sdur_colors.dart';

class ActionItem extends StatelessWidget {
  final String title;
  final Color color;
  final String navigateTo;

  const ActionItem(this.title, this.color, this.navigateTo);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectAction(context),
      splashColor: SDURColors.BLACK,
      borderRadius: BorderRadius.circular(4),
      child: ActionContainer(title, color),
    );
  }

  void _selectAction(BuildContext ctx) => Navigator.of(ctx).pushNamed(navigateTo);
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
            Spacer(),
            HollowedCircle(color),
            const SizedBox(height: 16),
            Text(title, style: Theme.of(context).textTheme.body2),
            Spacer(),
          ],
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.9),
            color,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
