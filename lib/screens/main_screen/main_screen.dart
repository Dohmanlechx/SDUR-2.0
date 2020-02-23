import 'package:flutter/material.dart';
import 'package:sdur_app/screens/event_screen/event_screen.dart';
import 'package:sdur_app/screens/main_screen/widgets/action_item.dart';
import 'package:sdur_app/util/device_info.dart';
import 'package:sdur_app/util/sdur_colors.dart';
import 'package:sdur_app/util/sdur_strings.dart';
import 'package:sdur_app/views/sdur_scaffold.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SDURScaffold(
      appBarTitle: SdurStrings.APP_NAME,
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
        ActionItem(
          title: SdurStrings.ACTION_ITEM_EVENTS,
          color: SdurColors.EVENT_BG,
          navigateTo: EventScreen.routeName,
        ),
        ActionItem(
          title: SdurStrings.ACTION_ITEM_MEMBER,
          color: SdurColors.MEMBER_BG,
          navigateTo: "",
        ),
        ActionItem(
          title: SdurStrings.ACTION_ITEM_PROFILE,
          color: SdurColors.PROFILE_BG,
          navigateTo: "",
        ),
        ActionItem(
          title: SdurStrings.ACTION_ITEM_CONTACT,
          color: SdurColors.CONTACT_BG,
          navigateTo: "",
        ),
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
