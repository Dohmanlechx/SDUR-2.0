import 'package:flutter/material.dart';
import 'package:sdur_app/resource/sdur_colors.dart';

class SdurTheme {
  static ThemeData getData() => ThemeData(
        primarySwatch: Colors.blue,
        accentColor: const Color(0xFFe6e6e6),
        fontFamily: 'Helvetica',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: const TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              bodyText1: const TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: SdurColors.BLACK,
              ),
              bodyText2: const TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: SdurColors.WHITE,
              ),
            ),
      );
}
