import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genericos/commonhelper/customcolor.dart';

class HowitWorksImage extends StatelessWidget {
  final String mainText;
  final String subText;
  final String image;
  const HowitWorksImage({
    Key? key,
    required this.mainText,
    required this.subText,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200.h,
            width: 200.w,
            child: FittedBox(
              child: Image.asset(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(mainText, style: Theme.of(context).textTheme.headline1),
          Container(height: 2, width: 400.w, color: kdeviderColor),
          Text(
            subText,
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
