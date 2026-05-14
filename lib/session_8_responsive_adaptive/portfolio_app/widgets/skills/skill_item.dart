import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/skill_model.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({super.key, required this.skill});
  final Skill skill;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //image
          SvgPicture.asset(skill.icon),
          //title
          Flexible(child: Text(skill.title)),
          //tech
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(skill.technologies),
            ),
          ),
        ],
      ),
    );
  }
}
