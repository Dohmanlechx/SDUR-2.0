import 'package:flutter/material.dart';
import 'package:sdur_app/resource/sdur_colors.dart';
import 'package:sdur_app/util/device_info.dart';

class HollowedCircle extends StatelessWidget {
  final Color color;

  const HollowedCircle(this.color);

  @override
  Widget build(BuildContext context) {
    final isSmallDevice = DeviceInfo.isSmallDevice(context);

    return Stack(
      children: <Widget>[
        Center(
          child: Container(
            width: isSmallDevice ? 20 : 40,
            height: isSmallDevice ? 20 : 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: SdurColors.WHITE),
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
}
