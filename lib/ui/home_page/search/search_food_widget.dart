import 'package:flutter/material.dart';

import 'package:genericos/commonhelper/responsive.dart';
import 'mobile_widget.dart';
import 'desktop_widget.dart';

class SearchitemWidget extends StatelessWidget {
  const SearchitemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: DesktopWidget(),
      mobile: MobileWidget(),
    );
  }
}
