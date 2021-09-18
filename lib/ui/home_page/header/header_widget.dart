import 'package:flutter/material.dart';
import 'package:genericos/commonhelper/responsive.dart';
import 'desktop_widget.dart';
import 'mobile_widget.dart';

class Headerwidget extends StatelessWidget {
  const Headerwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(desktop: DesktopWidget(), mobile: MobileWidget());
  }
}
