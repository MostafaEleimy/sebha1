import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/model/details_screen_arg.dart';
import 'package:islami_app/ui/screens/details%20Screen/Details_screen.dart';
import 'package:islami_app/ui/utilites/app_assets.dart';
import 'package:islami_app/ui/utilites/app_colors.dart';
import 'package:islami_app/ui/utilites/app_theme.dart';
import 'package:islami_app/ui/utilites/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class QuranTab extends StatelessWidget {

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
        Text(AppLocalizations.of(context)!.suraName,style: AppTheme.quranTabTitlesTextStyle,textAlign: TextAlign.center,),
        const Divider(
          thickness: 3,
          color: Appcolors.primary,
        ),
        Expanded(flex: 7,
        child: ListView.builder(
            itemCount: Constants.suraName.length ,
            itemBuilder:(_,index){
              return  TextButton(onPressed: (){
                Navigator.pushNamed(context, DetailsScreen.routName,arguments: DetailsScreenArg(Constants.suraName[index],"${index+1}",true));
              }
                  , child: Text(Constants.suraName[index],textAlign: TextAlign.center,style: AppTheme.quranTabTitlesTextStyle.copyWith(fontWeight: FontWeight.normal),));
            } ),
        )
      ],
    );
  }
}
