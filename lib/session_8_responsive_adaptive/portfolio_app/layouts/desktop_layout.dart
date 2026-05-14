import 'package:flutter/material.dart';

import '../widgets/app_bar_com.dart';
import '../widgets/info_section/info_section_tablet_desktop.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //app header
          AppBarComponet(),
          SliverToBoxAdapter(child: InfoSectionTabletDesktop()),
          //info section
          //about me
          //skills
        ],
      ),
    );
  }
}
