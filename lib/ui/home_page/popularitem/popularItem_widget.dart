// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genericos/commonhelper/assetimages.dart';
import 'package:genericos/reuseablewidgets/banner_widget.dart';

class Popularitem extends StatelessWidget {
  const Popularitem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      height: 800.h,
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
                  header: 'Popular Picks',
                  secondary: 'Pick yours and add to cart',
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  //color: Colors.blue,
                  height: 600.h,
                  // width: 50.w,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    //padding: const EdgeInsets.all(10.0),
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 400.h,
                        width: 400.w,
                        child: Image.asset(
                          kpopularItem1,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 6 / 6,
                      crossAxisSpacing: .05.sh,
                      mainAxisSpacing: .05.sw,
                    ),
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
