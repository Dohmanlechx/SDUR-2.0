import 'package:flutter/material.dart';
import 'package:sdur_app/util/sdur_colors.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: SDURColors.black),
        title: Text("Stockholms Dövas Ungdomsråd", style: Theme.of(context).textTheme.title),
        backgroundColor: SDURColors.primary,
      ),
    );
  }
}

class MainScreenGridView extends StatelessWidget {
  const MainScreenGridView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("TEST SDUR"),
    );
  }
}
