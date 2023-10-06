import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/ui/utilites/app_colors.dart';
import 'package:islami_app/ui/utilites/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  bool arSwitch=false;

  bool darkSwitch=false;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.settings,style: AppTheme.settingsTabTitle,textAlign: TextAlign.start,),
          buildSettinsRow("العربيه", arSwitch, (newValue){
            arSwitch=newValue;
            setState(() {});
          }),
          buildSettinsRow(AppLocalizations.of(context)!.darkMode, darkSwitch, (newValue){
            darkSwitch=newValue;
            setState(() {});
          }),

        ],
      ),
    );
  }

  buildSettinsRow(String title,bool switchValue, Function(bool) onChange){
    return Row(
      children: [
        SizedBox(width: 16,),
        Expanded(child: Text(title,style: AppTheme.settingsOptionTitle,)),
        Switch(value: switchValue, onChanged: onChange,activeColor: Appcolors.primary,)
      ],
    );
  }
}
