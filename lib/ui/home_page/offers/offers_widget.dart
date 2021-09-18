import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genericos/commonhelper/assetimages.dart';
import 'package:genericos/reuseablewidgets/banner_widget.dart';
import 'package:genericos/reuseablewidgets/howitworks_widget.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: 600.h,
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
                  height: 50.h,
                ),
                const BannerWidget(
                  header: 'Offers',
                  secondary: 'See what we have to offer you',
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  //color: Colors.blue,
                  height: 350.h,
                  // width: 50.w,
                  child: ListView.builder(
                    shrinkWrap: false,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 50.h,
                        child: Image.asset(
                          koffer1Picture,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
