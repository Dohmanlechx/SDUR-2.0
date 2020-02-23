import 'package:flutter/material.dart';

class ActionItemBoxDecoration {
  static getBoxDecoration(Color color) => BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.9),
            color,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(4),
      );
}
