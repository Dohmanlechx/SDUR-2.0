import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/util/device_info.dart';
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
      child: Center(
        child: Column(
          children: <Widget>[
            Spacer(),
            _hollowedCircle(DeviceInfo.isSmallDevice(context)),
            const SizedBox(height: 16),
            Text(title, style: Theme.of(context).textTheme.body2),
            Spacer(),
          ],
        ),
      ),
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

  _hollowedCircle(bool isSmallDevice) => Stack(
        children: <Widget>[
          Center(
            child: Container(
              width: isSmallDevice ? 20 : 40,
              height: isSmallDevice ? 20 : 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: SDURColors.white),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: isSmallDevice ? 1.5 : 3),
              width: isSmallDevice ? 17 : 34,
              height: isSmallDevice ? 17 : 34,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: color),
            ),
          )
        ],
      );
}
