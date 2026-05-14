import 'package:flutter/material.dart';

class AdptiveLayoutWidget extends StatelessWidget {
  const AdptiveLayoutWidget({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });
  final Widget mobile, tablet, desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobile;
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
          return tablet;
        } else {
          return desktop;
        }
      },
    );
  }
}
