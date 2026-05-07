import 'package:flutter/material.dart';
import 'package:flutter_widgets/session_6_theme_localization/core/app_iamges.dart';

import '../../l10n/app_localizations.dart';
import 'title_icon_data.dart';

class EasyLearnBody extends StatelessWidget {
  const EasyLearnBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          Image.asset(AppIamges.headerImage),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //about us
                Text(
                  AppLocalizations.of(context).aboutTitle,
                  style: Theme.of(context).textTheme.bodyLarge,
                  //hard coded
                  // style: TextStyle(
                  //   color: AppColors.textColor, //center
                  //   fontSize: 20,
                  //   fontWeight: FontWeight.bold,
                  // ),
                ),
                Divider(color: Colors.white, endIndent: 150),
                Text(
                  AppLocalizations.of(context).about,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                //phone
                TitleIconData(title: AppLocalizations.of(context).phone, icon: Icons.phone, data: "10124"),
                //email
                TitleIconData(
                  title:AppLocalizations.of(context).email,
                  icon: Icons.email,
                  data: "easy@gmail.com",
                ),

                //website
                TitleIconData(
                  title: AppLocalizations.of(context).website,
                  icon: Icons.web,
                  data: "easy@gmail.com",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
