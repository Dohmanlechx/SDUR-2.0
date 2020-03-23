import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/resource/sdur_strings.dart';
import 'package:sdur_app/views/sdur_scaffold.dart';

class ContactScreen extends StatelessWidget {
  static const routeName = "/contact_screen";

  @override
  Widget build(BuildContext context) {
    return SdurScaffold(
      appBarTitle: SdurStrings.ACTION_ITEM_CONTACT,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            _buildAddress(context),
          ],
        ),
      ),
    );
  }

  Widget _buildAddress(BuildContext ctx) {
    final TextStyle textStyle = Theme.of(ctx).textTheme.title.copyWith(height: 1.3);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(SdurStrings.APP_NAME, style: textStyle),
          Text(SdurStrings.SDUR_STREET_ADDRESS, style: textStyle),
          Text(SdurStrings.SDUR_POSTAL_ADDRESS, style: textStyle),
        ],
      ),
    );
  }
}
