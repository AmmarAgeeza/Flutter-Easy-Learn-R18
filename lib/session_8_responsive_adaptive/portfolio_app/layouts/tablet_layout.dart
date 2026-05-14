import 'package:flutter/material.dart';
import 'package:flutter_widgets/session_8_responsive_adaptive/portfolio_app/models/skill_model.dart';
import 'package:flutter_widgets/session_8_responsive_adaptive/portfolio_app/widgets/skills/skill_item.dart';

import '../widgets/app_bar_com.dart';
import '../widgets/info_section/info_section_tablet_desktop.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});
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
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Row(
                children: List.generate(
                  Skill.skills.length,
                  (index) => SkillItem(skill: Skill.skills[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
