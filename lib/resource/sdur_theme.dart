import 'package:flutter/material.dart';
import 'package:sdur_app/resource/sdur_colors.dart';

class SdurTheme {
  static getData() => ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Helvetica",
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: TextStyle(
                fontFamily: "Helvetica",
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              bodyText1: TextStyle(
                fontFamily: "Helvetica",
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: SdurColors.BLACK,
              ),
              bodyText2: TextStyle(
                fontFamily: "Helvetica",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: SdurColors.WHITE,
              ),
            ),
      );
}
