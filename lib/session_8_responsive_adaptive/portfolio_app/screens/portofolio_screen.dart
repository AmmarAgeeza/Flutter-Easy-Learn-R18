import 'package:flutter/material.dart';
import 'package:flutter_widgets/session_8_responsive_adaptive/portfolio_app/layouts/desktop_layout.dart';
import 'package:flutter_widgets/session_8_responsive_adaptive/portfolio_app/layouts/mobile_layout.dart';
import 'package:flutter_widgets/session_8_responsive_adaptive/portfolio_app/layouts/tablet_layout.dart';

import '../layouts/adptive_layout_widget.dart';

class PortofolioScreen extends StatelessWidget {
  const PortofolioScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AdptiveLayoutWidget(
      mobile: MobileLayout(),
      tablet: TabletLayout(),
      desktop: DesktopLayout(),
    );
  }
}
