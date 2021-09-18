import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genericos/commonhelper/assetimages.dart';
import 'package:genericos/reuseablewidgets/navigation_button.dart';

class DesktopWidget extends StatefulWidget {
  const DesktopWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopWidget> createState() => _DesktopWidgetState();
}

class _DesktopWidgetState extends State<DesktopWidget> {
  bool aboutus = false;

  bool start = true;

  bool outlets = false;

  bool find = false;

  navigateTo(int val) {
    setState(() {
      switch (val) {
        case 1:
          aboutus = true;
          start = false;
          outlets = false;
          find = false;
          break;
        case 2:
          aboutus = false;
          start = true;
          outlets = false;
          find = false;
          break;
        case 3:
          aboutus = false;
          start = false;
          outlets = true;
          find = false;
          break;
        case 4:
          aboutus = false;
          start = false;
          outlets = false;
          find = true;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      color: Colors.white,
      child: Row(
        children: [
          const Spacer(flex: 2),
          Image.asset(kAppbarlogo),
          const Spacer(flex: 8),
          InkWell(
              child: NaviGationButton('About us', aboutus),
              onTap: () => navigateTo(1)),
          const Spacer(flex: 1),
          InkWell(
              child: NaviGationButton('Start', start),
              onTap: () => navigateTo(2)),
          const Spacer(flex: 1),
          InkWell(
              child: NaviGationButton('Outlets', outlets),
              onTap: () => navigateTo(3)),
          const Spacer(flex: 1),
          InkWell(
              child: NaviGationButton('Find us', find),
              onTap: () => navigateTo(4)),
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
  }
}
