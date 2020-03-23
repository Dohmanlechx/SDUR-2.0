import 'package:flutter/material.dart';
import 'package:sdur_app/resource/sdur_colors.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(SdurColors.ACCENT),
        ),
      ),
    );
  }
}
