import 'package:flutter/material.dart';
import 'package:sdur_app/resource/sdur_colors.dart';
import 'package:sdur_app/resource/sdur_strings.dart';

class SdurDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          _header(),
          Spacer(),
          _textDeveloper(),
        ],
      ),
    );
  }

  _header() {
    return Container(
      width: double.infinity,
      color: SdurColors.HOMEPAGE_TEAL,
      height: 120,
      child: SafeArea(
        minimum: const EdgeInsets.only(top: 32, bottom: 8),
        child: Image.asset("assets/images/sdur_logo.png"),
      ),
    );
  }

  _textDeveloper() {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: const Text(
        SdurStrings.APP_DEVELOPER,
        style: const TextStyle(fontSize: 8),
        textAlign: TextAlign.end,
      ),
    );
  }
}
