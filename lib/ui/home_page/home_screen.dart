import 'package:flutter/material.dart';
import 'package:genericos/reuseablewidgets/header_widget.dart';
import 'package:genericos/ui/home_page/search_food_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      body: SafeArea(
        child: ListView(
          children: const [
            Headerwidget(),
            SearchitemWidget(),
          ],
        ),
      ),
    );
  }
}
