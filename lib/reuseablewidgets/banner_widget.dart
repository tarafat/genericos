import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genericos/commonhelper/customcolor.dart';

class BannerWidget extends StatelessWidget {
  final String header;
  final String secondary;
  const BannerWidget({
    Key? key,
    required this.header,
    required this.secondary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Text(header, style: Theme.of(context).textTheme.headline2),
        Container(height: 2, width: 500.w, color: kdeviderColor),
        Text(
          secondary,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}
