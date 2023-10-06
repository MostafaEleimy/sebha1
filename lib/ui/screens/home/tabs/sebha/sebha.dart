import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/model/Button.dart';
import 'package:islami_app/ui/utilites/app_assets.dart';
import 'package:islami_app/ui/utilites/app_colors.dart';
import 'package:islami_app/ui/utilites/app_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter=0;
  double rotationalAngel=0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                left: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppAssets.sebhaHeadLogo),
                  ],
                ),
              ),
              Positioned(
                top: 80, // Adjust the top position to control the lower placement
                left: 90, // You can adjust the left position if necessary
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.rotate(
                        angle: rotationalAngel,
                        child: Image.asset(AppAssets.sebhaBodyLogo)),
                  ],
                ),
              ),
            ],
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            color: Appcolors.primary,

              child: Text("$counter",style: TextStyle(fontSize: 25),)
          ),
        ),
        Container(
          child: IntrinsicWidth(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Appcolors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: () {
                Counter();
              },
              child: Text("سبحان الله",style: AppTheme.quranTabTitlesTextStyle.copyWith(color: Colors.white),),
            ),
          ),
        ),


      ],
    );

  }

  void Counter() {
    setState(() {
      if (counter < 30) {
        counter++;
        rotationalAngel += 0.2;
      }
    });
  }
}

