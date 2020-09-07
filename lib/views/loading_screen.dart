import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).accentColor),
        ),
      ),
    );
  }
}
