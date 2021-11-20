import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:archibat2021/fullApps/hairSalon/utils/BHColors.dart';
import 'package:archibat2021/fullApps/hairSalon/utils/BHConstants.dart';
import 'package:archibat2021/fullApps/hairSalon/utils/BHImages.dart';
import 'package:archibat2021/main/utils/AppWidget.dart';

import 'BHDashedBoardScreen.dart';

class BHWalkThroughScreen extends StatefulWidget {
  static String tag = '/WalkThroughScreen';

  @override
  BHWalkThroughScreenState createState() => BHWalkThroughScreenState();
}

class BHWalkThroughScreenState extends State<BHWalkThroughScreen> {
  PageController _pageController = PageController();
  int currentPage = 0;
  static const _kDuration = const Duration(seconds: 1);
  static const _kCurve = Curves.ease;

  @override
  void initState() {
    super.initState();
    changeStatusColor(Colors.transparent);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    var h = context.height();

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (i) {
              currentPage = i;
              setState(() {});
            },
            children: [
              Column(
                children: <Widget>[
                  commonCacheImageWidget("images/archibat/E1.jpg", context.height(), width: context.width(), fit: BoxFit.fill),
                ],
              ),
              Column(
                children: <Widget>[
                  commonCacheImageWidget("images/archibat/E2.jpg", context.height(), width: context.width(), fit: BoxFit.fill),
                ],
              ),
              Column(
                children: <Widget>[
                  commonCacheImageWidget("images/archibat/E3.jpg", context.height(), width: context.width(), fit: BoxFit.fill),
                  // 16.height,
                  // Text(
                  //   BHWalkThroughTitle3,
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: BHAppTextColorPrimary),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.all(8.0),
                  //   child: Text(BHWalkThroughSubTitle3, textAlign: TextAlign.center, style: TextStyle(color: BHAppTextColorSecondary)),
                  // ),
                ],
              ),
            ],
          ),
          // Positioned(
          //   bottom: 90,
          //   child: Container(
          //     alignment: Alignment.center,
          //     width: MediaQuery.of(context).size.width,
          //     child: DotsIndicator(
          //       dotsCount: 3,
          //       position: currentPage.toDouble(),
          //       decorator: DotsDecorator(
          //         color: BHGreyColor.withOpacity(0.5),
          //         activeColor: BHColorPrimary,
          //         size: Size.square(9.0),
          //         activeSize: Size(18.0, 9.0),
          //         activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          //       ),
          //     ),
          //   ),
          // ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: Text('Passer', style: TextStyle(color: BHAppTextColorSecondary)),
                  onPressed: () {
                    finish(context);
                    BHDashedBoardScreen().launch(context);
                  },
                ),
                TextButton(
                  child: Text("Suivant", style: TextStyle(color: BHAppTextColorSecondary)),
                  onPressed: () {
                    _pageController.nextPage(duration: _kDuration, curve: _kCurve);
                  },
                )
              ],
            ).visible(
              currentPage != 2,
              defaultWidget: Container(
                margin: EdgeInsets.only(),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 270,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: BHColorPrimary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        BHDashedBoardScreen().launch(context);
                      },
                      child: Text("Commencer", style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
