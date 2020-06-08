import 'package:flutter/material.dart';
import 'package:sdur_app/resource/sdur_colors.dart';
import 'package:sdur_app/resource/sdur_strings.dart';
import 'package:sdur_app/screens/contact_screen/contact_screen.dart';
import 'package:sdur_app/screens/events_overview_screen/events_overview_screen.dart';
import 'package:sdur_app/screens/main_screen/widgets/action_item.dart';
import 'package:sdur_app/util/device_info.dart';
import 'package:sdur_app/views/sdur_scaffold.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SdurScaffold(
      appBarTitle: SdurStrings.APP_NAME,
      body: MainScreenGridView(),
      isMainScreen: true,
    );
  }
}

class MainScreenGridView extends StatelessWidget {
  Future<void> _openMembershipHomepage(BuildContext ctx) async {
    await launch('https://medlem.sdr.org/');
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: (DeviceInfo.height(context) / 4), horizontal: 32),
      children: <Widget>[
        ActionItem(
          title: SdurStrings.ACTION_ITEM_EVENTS,
          color: SdurColors.EVENT_BG,
          onClick: () => Navigator.of(context).pushNamed(EventsOverviewScreen.routeName),
        ),
        ActionItem(
          title: SdurStrings.ACTION_ITEM_MEMBER,
          color: SdurColors.MEMBER_BG,
          onClick: () => _openMembershipHomepage(context),
        ),
        ActionItem(
          title: SdurStrings.ACTION_ITEM_PROFILE,
          color: SdurColors.ACCENT,
          onClick: () {},
        ),
        ActionItem(
          title: SdurStrings.ACTION_ITEM_CONTACT,
          color: SdurColors.CONTACT_BG,
          onClick: () => Navigator.of(context).pushNamed(ContactScreen.routeName),
        ),
      ],
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 4 / 3,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
      ),
    );
  }
}
