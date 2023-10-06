import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../model/details_screen_arg.dart';
import '../../../../utilites/app_assets.dart';
import '../../../../utilites/app_colors.dart';
import '../../../../utilites/app_theme.dart';
import '../../../../utilites/constants.dart';
import '../../../details Screen/Details_screen.dart';

class AhadesTab extends StatelessWidget {
  AhadesTab({super.key});
  List ahadethNames=List.generate(50, (index){
      return "${index+1} رقم الحديث";
});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 3,
            child: Image.asset(AppAssets.Quranlogo)),
        const Divider(
          thickness: 3,
          color: Appcolors.primary,
        ),
        const Text("Ahadeth Name",style: AppTheme.quranTabTitlesTextStyle,textAlign: TextAlign.center,),
        const Divider(
          thickness: 3,
          color: Appcolors.primary,
        ),
        Expanded(flex: 7,
          child: ListView.builder(
              itemCount: Constants.suraName.length ,
              itemBuilder:(_,index){
                return  TextButton(onPressed: (){
                  Navigator.pushNamed(context, DetailsScreen.routName,arguments: DetailsScreenArg(ahadethNames[index],"h${index+1}.txt",false));
                }
                    , child: Text(ahadethNames[index],textAlign: TextAlign.center,style: AppTheme.quranTabTitlesTextStyle.copyWith(fontWeight: FontWeight.normal),));
              } ),
        )
      ],
    );
  }
}
