import 'package:flutter/material.dart';
import 'package:sdur_app/resource/sdur_colors.dart';
import 'package:sdur_app/views/sdur_drawer.dart';

class SdurScaffold extends StatelessWidget {
  final String appBarTitle;
  final Widget body;
  final bool isMainScreen;

  const SdurScaffold({
    this.appBarTitle,
    this.body,
    this.isMainScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarTitle != null
          ? AppBar(
              automaticallyImplyLeading: true,
              iconTheme: IconThemeData(color: SdurColors.BLACK),
              backgroundColor: SdurColors.PRIMARY,
              textTheme: Theme.of(context).textTheme,
              title: Row(
                children: <Widget>[
                  Expanded(child: Text(appBarTitle, overflow: TextOverflow.fade)),
                ],
              ),
            )
          : null,
      drawer: isMainScreen ? SdurDrawer() : null,
      body: body,
    );
  }
}
