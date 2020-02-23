import 'package:flutter/material.dart';
import 'package:sdur_app/util/sdur_scaffold.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SDURScaffold(
      appBarTitle: "Stockholms Dövas Ungdomsråd",
      child: MainScreenGridView(),
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
