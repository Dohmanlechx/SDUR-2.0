import 'package:flutter/material.dart';
import 'package:sdur_app/util/sdur_colors.dart';

class SDURScaffold extends StatelessWidget {
  final String appBarTitle;
  final Widget body;
  final bool canPop;

  const SDURScaffold({this.appBarTitle, this.body, this.canPop = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: SDURColors.BLACK),
        backgroundColor: SDURColors.PRIMARY,
        textTheme: Theme.of(context).textTheme,
        leading: canPop ? null : const Icon(Icons.menu, color: SDURColors.BLACK),
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
