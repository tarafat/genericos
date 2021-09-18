import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genericos/ui/home_page/header/header_widget.dart';
import 'package:genericos/ui/home_page/howitworks/howitworks_widget.dart';
import 'package:genericos/ui/home_page/search/search_food_widget.dart';

import 'offers/offers_widget.dart';
import 'outlets/outlets_widget.dart';
import 'popularitem/popularItem_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 0.6.sw), child: const Drawer()),
      body: SafeArea(
        child: ListView(
          shrinkWrap: false,
          children: const [
            Headerwidget(),
            SearchitemWidget(),
            HowitWorks(),
            Offers(),
            Popularitem(),
            Outlets(),
          ],
        ),
      ),
    );
  }
}
