import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/app_images.dart';

class AppBarComponet extends StatelessWidget {
  const AppBarComponet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text("DevPortfolio",),
      actions: [
        TextButton(onPressed: () {}, child: Text("Resume")),
        SvgPicture.asset(AppImages.portofolio_imagesTheme),
      ],
    );
  }
}
