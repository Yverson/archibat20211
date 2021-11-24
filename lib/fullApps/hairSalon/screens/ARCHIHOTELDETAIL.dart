import 'dart:convert';
import 'dart:io';

import 'package:archibat2021/fullApps/hairSalon/utils/BHColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nb_utils/nb_utils.dart';
import 'package:archibat2021/fullApps/hairSalon/model/ProductModel.dart';

class EAWalkThrough {
  String? title;
  String? subtitle;
  String? image;

  EAWalkThrough({this.title, this.subtitle, this.image});
}

class EACityModel {
  String? name;
  String? subtitle;
  String? image;
  bool? selectHash;
  bool isSelected;

  EACityModel({this.name, this.subtitle, this.image, this.selectHash=false, this.isSelected = false});
}


class ARCHIHOTELDETAILScreen extends StatefulWidget {
  static String tag = '/DiscoverBottomNavigationBarScreen';
  final ProductModel? model;

  const ARCHIHOTELDETAILScreen({Key? key, this.model}) : super(key: key);

  @override
  _ARCHIHOTELDETAILScreenState createState() => _ARCHIHOTELDETAILScreenState();
}

class _ARCHIHOTELDETAILScreenState extends State<ARCHIHOTELDETAILScreen> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndexPage = 0;
  String des = "why this party is for you";
  String des1 = "Let's play silent game.but this time you have to dance under the star white hundreds... ";
  bool fev = false;
  late List<ProductModel> mStoreDealList;

  List<EAWalkThrough> walkThroughList = [
    EAWalkThrough(image: "images/eventApp/pageview2.jpg", title: "EVENTS COLLECTION", subtitle: "Discover the best things to do this week in this city"),
  ];

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              title: Text(innerBoxIsScrolled ? widget.model!.name! : ""),
              backgroundColor: BHColorPrimary,
              expandedHeight: 250.0,
              iconTheme: IconThemeData(color: white),
              automaticallyImplyLeading: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    PageView.builder(
                      controller: pageController,
                      itemCount: 1,
                      itemBuilder: (context, i) {
                        return Image.asset(widget.model!.img!, fit: BoxFit.cover);
                      },
                      onPageChanged: (value) {
                        setState(() => currentIndexPage = value);
                      },
                    ),
                    //DotIndicator(pageController: pageController, pages: walkThroughList, indicatorColor: white, unselectedIndicatorColor: grey).paddingBottom(8),
                  ],
                ),
              ),
              actions: [
              ],
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text(widget.model.hashTag!, style: secondaryTextStyle()).paddingOnly(left: 12, top: 8, bottom: 8),
              Text(widget.model!.name!, style: boldTextStyle()).paddingOnly(left: 12, bottom: 8),
              // Row(
              //   children: [
              //     Icon(Icons.timelapse_rounded, size: 20),
              //     8.width,
              //     Text("SUN MAR.25-4:30 PM EST", style: primaryTextStyle()),
              //   ],
              // ).paddingOnly(left: 12, bottom: 8),
              // Row(
              //   children: [
              //     Icon(
              //       Icons.local_activity_outlined,
              //       size: 20,
              //     ),
              //     8.width,
              //     Text(widget.attending!, style: primaryTextStyle()),
              //   ],
              // ).paddingOnly(left: 12, bottom: 8),
              16.height,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Iformation'.toUpperCase(), style: boldTextStyle(color: grey)),
                  8.height,
                  Text(widget.model!.info!, style: primaryTextStyle()),
                  //Text(des1, style: primaryTextStyle()),
                  Row(
                    children: [Text("Detail", style: primaryTextStyle(color: BHColorPrimary)), 4.width, Icon(Icons.arrow_forward_ios_outlined, size: 14, color: BHColorPrimary)],
                  ),
                ],
              ).paddingOnly(left: 12, bottom: 8, top: 8),
              16.height,

            ],
          ),
        ),
      ),

    );

  }
}

// ignore: must_be_immutable
class StoreDeal extends StatelessWidget {
  late ProductModel model;

  StoreDeal(ProductModel model, int pos) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('${model.img}',
                height: width * 0.2708333333333333,
                width: width * 0.2708333333333333,
                fit: BoxFit.fill),
            SizedBox(height: 3),
            Text(model.name!,
                textAlign: TextAlign.center,
                style: primaryTextStyle(
                    color: Colors.black,
                    size: 16,
                    fontFamily: 'Medium')),
            SizedBox(height: 3),
          ],
        ),
      ),
    );
  }
}