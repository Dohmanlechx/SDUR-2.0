import 'package:flutter/material.dart';
import 'package:sdur_app/screens/main/widgets/action_item.dart';
import 'package:sdur_app/util/sdur_colors.dart';
import 'package:sdur_app/util/sdur_scaffold.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SDURScaffold(
      appBarTitle: "Stockholms Dövas Ungdomsråd",
      body: MainScreenGridView(),
    );
  }
}

class MainScreenGridView extends StatelessWidget {
  const MainScreenGridView();

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 32),
      children: <Widget>[
        ActionItem("Evenemang", SDURColors.eventBg),
        ActionItem("Bli medlem", SDURColors.memberBg),
        ActionItem("Min profil", SDURColors.profileBg),
        ActionItem("Kontakt", SDURColors.contactBg),
      ],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 4 / 3,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
      ),
    );
  }
}
