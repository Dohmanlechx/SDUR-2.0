import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/resource/sdur_strings.dart';
import 'package:sdur_app/util/device_info.dart';
import 'package:sdur_app/views/sdur_scaffold.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

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
            const SizedBox(height: 32),
            _buildStaffRow(
              context,
              imageUrl: "https://www.sdur.se/wp-content/uploads/2018/10/Florian.jpg",
              jobTitle: "Ungdomskonsulent",
              name: "Florian Tirnovan",
              email: "florian@sdur.se",
              phone: "0793477827",
            ),
            _buildStaffRow(
              context,
              imageUrl: "https://www.sdur.se/wp-content/uploads/2018/10/michelle.jpg",
              jobTitle: "Verksamhetsansvarig",
              name: "Michelle Malchow",
              email: "michelle@sdur.se",
              phone: "0703555998",
            ),
            _buildStaffRow(
              context,
              imageUrl: "https://www.sdur.se/wp-content/uploads/2019/03/jamila1.jpg",
              jobTitle: "Fritidsföreståndare (DUKiS)",
              name: "Jamila Ouahid",
              email: "jamila@dukis.se",
              phone: "0763230591",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddress(BuildContext ctx) {
    final TextStyle _textStyle = Theme.of(ctx).textTheme.title.copyWith(height: 1.3);
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

  Widget _buildStaffRow(
    BuildContext ctx, {
    String imageUrl,
    String jobTitle,
    String name,
    String email,
    String phone,
  }) {
    final TextStyle _textStyle = Theme.of(ctx).textTheme.body1.copyWith(height: 1.2);

    Widget _buildAutoSizeText(String text, {bool isBold = false}) {
      return AutoSizeText(
        text,
        style: _textStyle.copyWith(fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        maxLines: 1,
      );
    }

    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () async => await launch("mailto:$email"),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  fit: BoxFit.cover,
                  image: imageUrl,
                  width: DeviceInfo.width(ctx) * 0.35,
                  height: DeviceInfo.height(ctx) * 0.125,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      _buildAutoSizeText(jobTitle, isBold: true),
                      _buildAutoSizeText(name),
                      _buildAutoSizeText(email),
                      _buildAutoSizeText(phone)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
