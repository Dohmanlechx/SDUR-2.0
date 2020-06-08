import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:sdur_app/resource/sdur_strings.dart';
import 'package:sdur_app/screens/contact_screen/widgets/staff_row.dart';
import 'package:sdur_app/views/sdur_scaffold.dart';

class ContactScreen extends StatelessWidget {
  static const routeName = '/contact_screen';

  @override
  Widget build(BuildContext context) {
    return SdurScaffold(
      appBarTitle: SdurStrings.ACTION_ITEM_CONTACT,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () => MapsLauncher.launchCoordinates(59.293392, 18.075801, 'Välkommen in till SDUR!'),
              child: _buildAddress(context),
            ),
            const SizedBox(height: 32),
            const StaffRow(
              imageUrl: 'https://www.sdur.se/wp-content/uploads/2018/10/Florian.jpg',
              jobTitle: 'Ungdomskonsulent',
              name: 'Florian Tirnovan',
              email: 'florian@sdur.se',
              phone: '0793477827',
            ),
            const StaffRow(
              imageUrl: 'https://www.sdur.se/wp-content/uploads/2018/10/michelle.jpg',
              jobTitle: 'Verksamhetsansvarig',
              name: 'Michelle Malchow',
              email: 'michelle@sdur.se',
              phone: '0703555998',
            ),
            const StaffRow(
              imageUrl: 'https://www.sdur.se/wp-content/uploads/2019/03/jamila1.jpg',
              jobTitle: 'Fritidsföreståndare (DUKiS)',
              name: 'Jamila Ouahid',
              email: 'jamila@dukis.se',
              phone: '0763230591',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddress(BuildContext ctx) {
    final _textStyle = Theme.of(ctx).textTheme.headline1.copyWith(height: 1.3);

    Widget _buildAutoSizeText(String text) => AutoSizeText(text, style: _textStyle, maxLines: 1);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildAutoSizeText(SdurStrings.APP_NAME),
          _buildAutoSizeText(SdurStrings.SDUR_STREET_ADDRESS),
          _buildAutoSizeText(SdurStrings.SDUR_POSTAL_ADDRESS),
          _buildAutoSizeText(SdurStrings.SDUR_EMAIL_ADDRESS),
        ],
      ),
    );
  }
}
