import 'package:flutter/material.dart';
import 'package:sdur_app/util/sdur_util/sdur_colors.dart';

class SdurTheme {
  static getData() => ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Helvetica",
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: "Helvetica",
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              body1: TextStyle(
                fontFamily: "Helvetica",
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: SdurColors.BLACK,
              ),
              body2: TextStyle(
                fontFamily: "Helvetica",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: SdurColors.WHITE,
              ),
            ),
      );
}
