import 'package:flutter/material.dart';

import 'image_com.dart';
import 'title_job_title_com.dart';

class InfoSectionMobile extends StatelessWidget {
  const InfoSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [ImageCom(), TitleJobTitleCom()]);
  }
}
