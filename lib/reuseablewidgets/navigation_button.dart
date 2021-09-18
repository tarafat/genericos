// ignore_for_file: use_key_in_widget_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genericos/commonhelper/customcolor.dart';

class NaviGationButton extends StatelessWidget {
  final String tabName;
  final bool isSelected;

  const NaviGationButton(
    this.tabName,
    this.isSelected,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      decoration: BoxDecoration(
        color: isSelected ? kbuttonColor : Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.r),
          bottomRight: Radius.circular(10.r),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: AutoSizeText(
            tabName,
            style: isSelected
                ? Theme.of(context)
                    .textTheme
                    .headline1
                    ?.copyWith(color: Colors.white)
                : Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
