import 'package:flutter/material.dart';
import 'package:sdur_app/util/sdur_colors.dart';

class SDURScaffold extends StatelessWidget {
  final String appBarTitle;
  final Widget body;
  final bool isMainScreen;

  const SDURScaffold({this.appBarTitle, this.body, this.isMainScreen = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: SdurColors.BLACK),
        backgroundColor: SdurColors.PRIMARY,
        textTheme: Theme.of(context).textTheme,
        leading: isMainScreen ? const Icon(Icons.menu, color: SdurColors.BLACK) : null,
        title: Row(
          children: <Widget>[
            Expanded(child: Text(appBarTitle, overflow: TextOverflow.fade)),
          ],
        ),
      ),
      body: body,
    );
  }
}
