import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sdur_app/util/device_info.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class StaffRow extends StatelessWidget {
  final String imageUrl;
  final String jobTitle;
  final String name;
  final String email;
  final String phone;

  const StaffRow({
    this.imageUrl,
    this.jobTitle,
    this.name,
    this.email,
    this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () async => await launch('mailto:$email'),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  fit: BoxFit.cover,
                  image: imageUrl,
                  width: DeviceInfo.width(context) * 0.35,
                  height: DeviceInfo.height(context) * 0.125,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildAutoSizeText(context, jobTitle, isBold: true),
                      _buildAutoSizeText(context, name),
                      _buildAutoSizeText(context, email),
                      _buildAutoSizeText(context, phone)
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

  Widget _buildAutoSizeText(BuildContext ctx, String text, {bool isBold = false}) {
    final _textStyle = Theme.of(ctx).textTheme.bodyText1.copyWith(height: 1.2);

    return AutoSizeText(
      text,
      style: _textStyle.copyWith(fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
      maxLines: 1,
    );
  }
}
