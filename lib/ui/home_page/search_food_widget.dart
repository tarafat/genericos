// ignore_for_file: sized_box_for_whitespace

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genericos/commonhelper/assetimages.dart';
import 'package:genericos/commonhelper/customcolor.dart';
import 'package:genericos/commonhelper/responsive.dart';

class SearchitemWidget extends StatefulWidget {
  const SearchitemWidget({Key? key}) : super(key: key);

  @override
  _SearchitemWidgetState createState() => _SearchitemWidgetState();
}

class _SearchitemWidgetState extends State<SearchitemWidget> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Container(
        height: 400.h,
        child: Row(
          children: [
            const Spacer(flex: 2),
            Flexible(
              flex: 19,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                        height: 400.h,
                        //color: Colors.amber,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.headline2,
                                children: [
                                  TextSpan(
                                      text: 'F',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(color: kbuttonColor)),
                                  const TextSpan(text: 'lavours '),
                                  TextSpan(
                                      text: 'O',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(color: kbuttonColor)),
                                  const TextSpan(text: 'n '),
                                  TextSpan(
                                      text: 'F',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(color: kbuttonColor)),
                                  const TextSpan(text: 'ire'),
                                ],
                              ),
                            ),
                            Text(
                              'Family Style Restaurants',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              height: 50.h,
                              width: 500.w,
                              child: Row(
                                children: [
                                  Container(
                                    width: 390.w,
                                    height: 400.h,
                                    child: TextField(
                                      // controller: widget.searchController,
                                      autofocus: false,
                                      textInputAction: TextInputAction.search,
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                          focusedBorder:
                                              const OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(0)),
                                                  borderSide: BorderSide(
                                                      color: Colors.red)),
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              ?.copyWith(
                                                  color: kblackGray2,
                                                  fontWeight: FontWeight.bold),
                                          focusColor: Colors.red,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                          hintText:
                                              'Find your favourite food here'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 350.h,
                                    width: 110.w,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0)),
                                        primary: kbuttonColor, // background
                                        onPrimary: Colors.white, // foreground
                                      ),
                                      onPressed: () {},
                                      child: AutoSizeText(
                                        'Search',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1
                                            ?.copyWith(
                                              color: Colors.white,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    child: Container(
                      height: 400.h,
                      width: 500.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 400.h,
                            width: 500.w,
                            child: FittedBox(
                              child: Image.asset(
                                kfoodPicture,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
      mobile: Container(
        height: 400.h,
        width: double.infinity,
        //color: Colors.black,
        child: Row(
          children: [
            const Spacer(flex: 2),
            Flexible(
              flex: 19,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 130.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.copyWith(fontSize: 18),
                              children: [
                                TextSpan(
                                    text: 'F',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(
                                            color: kbuttonColor, fontSize: 18)),
                                const TextSpan(text: 'lavours '),
                                TextSpan(
                                    text: 'O',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(
                                            color: kbuttonColor, fontSize: 18)),
                                const TextSpan(text: 'n '),
                                TextSpan(
                                    text: 'F',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(
                                            color: kbuttonColor, fontSize: 18)),
                                const TextSpan(text: 'ire'),
                              ],
                            ),
                          ),
                          Text(
                            'Family Style Restaurants',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(fontSize: 14),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 50.h,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  width: .6.sw,
                                  height: double.infinity,
                                  child: TextField(
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                    // controller: widget.searchController,
                                    autofocus: false,
                                    textInputAction: TextInputAction.search,
                                    keyboardType: TextInputType.name,

                                    decoration: InputDecoration(
                                        focusedBorder: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(0)),
                                            borderSide:
                                                BorderSide(color: Colors.red)),
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                10.0, 10.0, 20.0, 20.0),
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .subtitle1
                                            ?.copyWith(
                                                color: kblackGray2,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 8),
                                        focusColor: Colors.red,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        hintText:
                                            'Find your favourite food here'),
                                  ),
                                ),
                                SizedBox(
                                  height: 50.h,
                                  width: .2.sw,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0)),
                                      primary: kbuttonColor, // background
                                      onPrimary: Colors.white, // foreground
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Search',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1
                                          ?.copyWith(
                                              color: Colors.white,
                                              fontSize: 10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                    child: Container(
                      height: 400.h,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 400.h,
                            width: 500.w,
                            child: FittedBox(
                              child: Image.asset(
                                kfoodPicture,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
      tablet: Container(
        height: 400.h,
        width: double.infinity,
        //color: Colors.black,
        child: Row(
          children: [
            const Spacer(flex: 2),
            Flexible(
              flex: 19,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 130.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.copyWith(fontSize: 18),
                              children: [
                                TextSpan(
                                    text: 'F',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(
                                            color: kbuttonColor, fontSize: 18)),
                                const TextSpan(text: 'lavours '),
                                TextSpan(
                                    text: 'O',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(
                                            color: kbuttonColor, fontSize: 18)),
                                const TextSpan(text: 'n '),
                                TextSpan(
                                    text: 'F',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(
                                            color: kbuttonColor, fontSize: 18)),
                                const TextSpan(text: 'ire'),
                              ],
                            ),
                          ),
                          Text(
                            'Family Style Restaurants',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(fontSize: 14),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 50.h,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  width: .6.sw,
                                  height: double.infinity,
                                  child: TextField(
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                    // controller: widget.searchController,
                                    autofocus: false,
                                    textInputAction: TextInputAction.search,
                                    keyboardType: TextInputType.name,

                                    decoration: InputDecoration(
                                        focusedBorder: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(0)),
                                            borderSide:
                                                BorderSide(color: Colors.red)),
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                10.0, 10.0, 20.0, 20.0),
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .subtitle1
                                            ?.copyWith(
                                                color: kblackGray2,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 8),
                                        focusColor: Colors.red,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        hintText:
                                            'Find your favourite food here'),
                                  ),
                                ),
                                SizedBox(
                                  height: 50.h,
                                  width: .2.sw,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0)),
                                      primary: kbuttonColor, // background
                                      onPrimary: Colors.white, // foreground
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Search',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1
                                          ?.copyWith(
                                              color: Colors.white,
                                              fontSize: 10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                    child: Container(
                      height: 400.h,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 400.h,
                            width: 500.w,
                            child: FittedBox(
                              child: Image.asset(
                                kfoodPicture,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
