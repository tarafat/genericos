import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'reuseablewidgets/mycustom_scroll_behavior.dart';
import 'ui/home_page/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: () => MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: Colors.white,
          fontFamily: 'Roboto',
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            headline2: TextStyle(
                fontSize: 48.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            subtitle1: TextStyle(
              fontSize: 20.sp,
              letterSpacing: 1,
              fontWeight: FontWeight.w100,
              fontFamily: 'Roboto-Regular',
              color: Colors.black,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
