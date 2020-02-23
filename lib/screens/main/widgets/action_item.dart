import 'package:flutter/material.dart';
import 'package:sdur_app/util/sdur_colors.dart';

class ActionItem extends StatelessWidget {
  final String title;
  final Color color;

  const ActionItem(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectAction(context),
      splashColor: SDURColors.black,
      borderRadius: BorderRadius.circular(4),
      child: ActionContainer(title, color),
    );
  }

  void _selectAction(BuildContext ctx) {}
}

class ActionContainer extends StatelessWidget {
  final String title;
  final Color color;

  const ActionContainer(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Center(child: Text(title, style: Theme.of(context).textTheme.body2,)),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.95),
            color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
