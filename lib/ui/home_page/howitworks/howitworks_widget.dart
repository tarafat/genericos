import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genericos/commonhelper/assetimages.dart';
import 'package:genericos/commonhelper/customcolor.dart';
import 'package:genericos/reuseablewidgets/banner_widget.dart';
import 'package:genericos/reuseablewidgets/howitworks_widget.dart';

class HowitWorks extends StatelessWidget {
  const HowitWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(flex: 2),
          Flexible(
            flex: 19,
            child: Column(
              children: [
                SizedBox(
                  height: 75.h,
                ),
                const BannerWidget(
                  header: 'How it works',
                  secondary: 'Pick yours and add to cart',
                ),
                SizedBox(
                  height: 50.h,
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: const [
                    HowitWorksImage(
                      mainText: 'Visit our place',
                      subText: 'Visit us with your family & friends',
                      image: kvopPicture,
                    ),
                    HowitWorksImage(
                      mainText: 'Select an outlet',
                      subText: 'We have popular crusines under one roof',
                      image: ksaoPicture,
                    ),
                    HowitWorksImage(
                      mainText: 'Make your order',
                      subText: 'Easy and quick, with no extra charges',
                      image: kmyoPicture,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
