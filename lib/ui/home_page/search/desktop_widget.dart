import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genericos/commonhelper/assetimages.dart';
import 'package:genericos/commonhelper/customcolor.dart';

class DesktopWidget extends StatelessWidget {
  const DesktopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  child: SizedBox(
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
                          SizedBox(
                            height: 50.h,
                            width: 500.w,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 390.w,
                                  height: 400.h,
                                  child: TextField(
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
                  child: SizedBox(
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
    );
  }
}
