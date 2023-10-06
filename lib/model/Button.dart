import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui/utilites/app_colors.dart';
import '../ui/utilites/app_theme.dart';

class Button extends StatelessWidget {
Function onClick;
String ButtonName;


Button(this.onClick,this.ButtonName);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IntrinsicWidth(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Appcolors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {
            onClick(ButtonName);
          },
          child: Text(ButtonName,style: AppTheme.quranTabTitlesTextStyle.copyWith(color: Colors.white),),
        ),
      ),
    );
  }
}
