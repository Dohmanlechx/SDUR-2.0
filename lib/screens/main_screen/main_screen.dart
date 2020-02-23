import 'package:flutter/material.dart';
import 'package:sdur_app/screens/event_screen/event_screen.dart';
import 'package:sdur_app/screens/main_screen/widgets/action_item/action_item.dart';
import 'package:sdur_app/util/device_info.dart';
import 'package:sdur_app/util/sdur_colors.dart';
import 'package:sdur_app/util/sdur_strings.dart';
import 'package:sdur_app/views/sdur_scaffold.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SDURScaffold(
      appBarTitle: SDURStrings.APP_NAME,
      body: MainScreenGridView(),
      isMainScreen: true,
    );
  }
}

class MainScreenGridView extends StatelessWidget {
  const MainScreenGridView();

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: (DeviceInfo.height(context) / 4), horizontal: 32),
      children: <Widget>[
        ActionItem(SDURStrings.ACTION_ITEM_EVENTS, SDURColors.EVENT_BG, EventScreen.routeName),
        ActionItem(SDURStrings.ACTION_ITEM_MEMBER, SDURColors.MEMBER_BG, ""),
        ActionItem(SDURStrings.ACTION_ITEM_PROFILE, SDURColors.PROFILE_BG, ""),
        ActionItem(SDURStrings.ACTION_ITEM_CONTACT, SDURColors.CONTACT_BG, ""),
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
