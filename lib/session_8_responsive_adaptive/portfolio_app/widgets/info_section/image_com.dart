
import 'package:flutter/material.dart';

import '../../core/app_images.dart';

class ImageCom extends StatelessWidget {
  const ImageCom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundImage: AssetImage(
        AppImages.portofolio_imagesProfile,
      ),
    );
  }
}
