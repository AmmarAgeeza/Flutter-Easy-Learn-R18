import 'package:flutter/material.dart';

import '../../models/skill_model.dart';
import 'skill_item.dart';

class SkillGrid extends StatelessWidget {
  const SkillGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 170 / 105,
      ),
      itemCount: Skill.skills.length,
      itemBuilder: (context, index) {
        return SkillItem(skill: Skill.skills[index]);
      },
    );
  }
}
