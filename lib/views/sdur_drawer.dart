import 'package:flutter/material.dart';
import 'package:sdur_app/resource/sdur_colors.dart';
import 'package:sdur_app/resource/sdur_strings.dart';

class SdurDrawer extends StatelessWidget {
  const SdurDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          _header(),
          const SizedBox(height: 16),
          _buildListTile(
            ctx: context,
            title: SdurStrings.SETTINGS,
            icon: Icons.settings,
            onPressed: () {},
          ),
          _buildListTile(
            ctx: context,
            title: SdurStrings.BUG_REPORT,
            icon: Icons.bug_report,
            onPressed: () {},
          ),
          Spacer(),
          _textDeveloper(),
        ],
      ),
    );
  }

  _header() {
    return Container(
      width: double.infinity,
      color: SdurColors.HOMEPAGE_TEAL,
      height: 120,
      child: SafeArea(
        minimum: const EdgeInsets.only(top: 32, bottom: 8),
        child: Image.asset("assets/images/sdur_logo.png"),
      ),
    );
  }

  _buildListTile({
    BuildContext ctx,
    String title,
    IconData icon,
    Function onPressed,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: SdurColors.HOMEPAGE_TEAL,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: SdurColors.WHITE, size: 30),
      ),
      title: Text(title, style: Theme.of(ctx).textTheme.title),
      onTap: onPressed,
    );
  }

  _textDeveloper() {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: const Text(
        SdurStrings.APP_DEVELOPER,
        style: const TextStyle(fontSize: 8),
        textAlign: TextAlign.end,
      ),
    );
  }
}
