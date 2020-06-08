import 'package:flutter/material.dart';
import 'package:sdur_app/resource/sdur_colors.dart';

class SdurDialog extends StatelessWidget {
  final String title;
  final String message;
  final String submitText;
  final Function onSubmit;

  const SdurDialog({
    this.title,
    this.message,
    this.submitText,
    this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 20, color: SdurColors.BLACK,),
      ),
      content: Text(
        message,
        style: Theme.of(context).textTheme.bodyText1.copyWith(height: 1.25),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text(submitText),
          onPressed: onSubmit,
        )
      ],
    );
  }
}
