import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/models/sdur_event.dart';
import 'package:sdur_app/resource/sdur_colors.dart';
import 'package:sdur_app/resource/sdur_strings.dart';
import 'package:sdur_app/screens/event_details_screen/event_details_views/event_item_info_column.dart';
import 'package:sdur_app/views/sdur_scaffold.dart';
import 'package:url_launcher/url_launcher.dart';

class EventDetailsScreen extends StatelessWidget {
  static const routeName = "/event_details_screen";

  Future<void> _openInWebBrowser(BuildContext ctx, String url) async {
    await canLaunch(url) ? await launch(url) : _showErrorDialog(ctx);
  }

  void _showErrorDialog(BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: Text(
            SdurStrings.ERROR_DIALOG_TITLE,
            style: Theme.of(ctx).textTheme.body2.copyWith(fontSize: 20, color: SdurColors.BLACK),
          ),
          content: Text(
            SdurStrings.ERROR_DIALOG_MESSAGE,
            style: Theme.of(ctx).textTheme.body1.copyWith(height: 1.25),
          ),
          actions: <Widget>[
            FlatButton(
              child: const Text(SdurStrings.WORD_OK),
              onPressed: () => Navigator.of(ctx).pop(),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final SdurEvent sdurEvent = ModalRoute.of(context).settings.arguments as SdurEvent;

    return SdurScaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Hero(
                  tag: "${sdurEvent.hashCode}",
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.only(top: 32),
                    padding: const EdgeInsets.all(16),
                    color: SdurColors.ACCENT,
                    child: EventItemInfoColumn(
                      dateTime: sdurEvent.dateTime,
                      name: sdurEvent.title,
                      targetGroup: sdurEvent.targetGroup,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              color: SdurColors.ACCENT,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(sdurEvent.description, style: Theme.of(context).textTheme.body1),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: CupertinoButton(
                  onPressed: () => _openInWebBrowser(context, sdurEvent.url),
                  color: Colors.blue,
                  child: Text("ANMÄL MIG!"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
