import 'package:flutter/material.dart';
import 'package:flutter_widgets/l10n/app_localizations.dart';

import '../widgets/easy_learn_body.dart';

class EasyLearnScreen extends StatelessWidget {
  const EasyLearnScreen({
    super.key,
    required this.isDark,
    required this.onChanged, required this.onLocalPress,
  });
  final bool isDark;
  final Function(bool) onChanged;
  final VoidCallback onLocalPress;
  // final Function() onLocalPress;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/logo_withoutBG.png"),
        title: Text(
          AppLocalizations.of(context).appTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          //theme
          Switch(value: isDark, onChanged: onChanged),

          //toggle
          IconButton(onPressed:onLocalPress, icon: Icon(Icons.language)),
        ],
      ),
      body: EasyLearnBody(),
    );
  }
}
//DRY