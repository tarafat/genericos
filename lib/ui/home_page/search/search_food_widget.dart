import 'package:flutter/material.dart';

import 'package:genericos/commonhelper/responsive.dart';
import 'mobile_widget.dart';
import 'desktop_widget.dart';

class SearchitemWidget extends StatefulWidget {
  const SearchitemWidget({Key? key}) : super(key: key);

  @override
  _SearchitemWidgetState createState() => _SearchitemWidgetState();
}

class _SearchitemWidgetState extends State<SearchitemWidget> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: DesktopWidget(),
      mobile: MobileWidget(),
    );
  }
}
