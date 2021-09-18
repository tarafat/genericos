// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genericos/commonhelper/assetimages.dart';
import 'package:genericos/reuseablewidgets/banner_widget.dart';

class Outlets extends StatelessWidget {
  const Outlets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      height: 800.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          Flexible(
            flex: 19,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                const BannerWidget(
                  header: 'Outlets',
                  secondary: 'Visit your favourite outlets',
                ),
                SizedBox(
                  height: 50.h,
                ),
                Center(
                  child: Container(
                    //color: Colors.blue,
                    height: 600.h,
                    // width: 50.w,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      //padding: const EdgeInsets.all(10.0),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 300.h,
                          width: 400.w,
                          child: Image.asset(
                            koutlets1,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 4 / 4,
                        crossAxisSpacing: .05.sh,
                        mainAxisSpacing: .05.sw,
                      ),
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
