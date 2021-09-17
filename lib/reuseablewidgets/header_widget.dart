import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genericos/commonhelper/assetimages.dart';
import 'package:genericos/commonhelper/responsive.dart';

import 'navigation_button.dart';

class Headerwidget extends StatelessWidget {
  const Headerwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > kbreakMobileView) {
          return Container(
            height: 100.h,
            color: Colors.white,
            child: Row(
              children: [
                const Spacer(flex: 2),
                Image.asset(kAppbarlogo),
                const Spacer(flex: 8),
                const NaviGationButton('About us', false),
                const Spacer(flex: 1),
                const NaviGationButton('Start', true),
                const Spacer(flex: 1),
                const NaviGationButton('Outlets', false),
                const Spacer(flex: 1),
                const NaviGationButton('Find us', false),
                const Spacer(flex: 1),
                Image.asset(kprofilePicture),
                const NaviGationButton('John Doe', false),
                SizedBox(
                  height: 70.h,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: IconButton(
                        padding: EdgeInsets.only(top: 10.sp),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down,
                        ),
                      )),
                ),
                const Spacer(flex: 2),
              ],
            ),
          );
        } else {
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
      },
    );
  }
}
