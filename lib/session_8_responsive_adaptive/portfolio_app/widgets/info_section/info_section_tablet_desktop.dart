import 'package:flutter/material.dart';

import 'image_com.dart';
import 'title_job_title_com.dart';

class InfoSectionTabletDesktop extends StatelessWidget {
  const InfoSectionTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [ImageCom(), TitleJobTitleCom()]);
  }
}
