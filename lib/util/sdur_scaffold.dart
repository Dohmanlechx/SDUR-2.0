import 'package:flutter/material.dart';

import 'sdur_colors.dart';

class SDURScaffold extends StatelessWidget {
  final String appBarTitle;
  final Widget body;

  const SDURScaffold({this.appBarTitle, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: SDURColors.primary,
        textTheme: Theme.of(context).textTheme,
        leading: const Icon(Icons.menu, color: SDURColors.black),
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
