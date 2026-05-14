import 'package:flutter/material.dart';

import '../widgets/app_bar_com.dart';
import '../widgets/info_section/info_section_mobil.dart';
import '../widgets/skills/sliver_grid.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //app header
          AppBarComponet(),
          //info section
          SliverToBoxAdapter(child: InfoSectionMobile()),
          //about me
          //skills
          SkillGrid(),
        ],
      ),
    );
  }
}
