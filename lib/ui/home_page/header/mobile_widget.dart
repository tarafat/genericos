import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genericos/commonhelper/assetimages.dart';

class MobileWidget extends StatelessWidget {
  const MobileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      color: Colors.white,
      child: Row(children: [
        const Spacer(flex: 2),
        Image.asset(kAppbarlogo),
        const Spacer(
          flex: 11,
        ),
        IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
        const Spacer(flex: 2),
      ]),
    );
  }
}
