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

class ARCHIMEDIADETAILScreen extends StatefulWidget {
  static String tag = '/DiscoverBottomNavigationBarScreen';
  final ProductModel? model;

  const ARCHIMEDIADETAILScreen({Key? key, this.model}) : super(key: key);

  @override
  _ARCHIMEDIADETAILScreenState createState() => _ARCHIMEDIADETAILScreenState();
}

class _ARCHIMEDIADETAILScreenState extends State<ARCHIMEDIADETAILScreen> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndexPage = 0;
  String des = "why this party is for you";
  String des1 = "Let's play silent game.but this time you have to dance under the star white hundreds... ";
  bool fev = false;
  late List<ProductModel> mStoreDealList;


  var data;

  List<ProductModel> allData = [];
  List<ProductModel> filteredData = [];
  Future<List<ProductModel>> fetchData() async {
    final response = await http
        .get(Uri.parse('http://cgeciapi.gaddielsoftware.com/api/MediaD?type=${widget.model!.info}'));
    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      //Creating a list to store input data;
      allData.clear();
      for (var singleUser in responseData) {
        ProductModel? r = ProductModel.fromMap(singleUser);

        //Adding user to the list.
        allData.add(r);
      }

      filteredData = allData;
      return filteredData;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      return [];
    }
  }

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
                        return Image.asset('images/archibat/${widget.model!.img}', fit: BoxFit.cover);
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
        body: Center(
          child: FutureBuilder<List<ProductModel>>(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                    itemCount: snapshot.data!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){

                          //ARCHIMEDIADETAILScreen(model: snapshot.data![index]).launch(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('images/archibat/${snapshot.data![index].img}',
                                    height: 153,
                                    fit: BoxFit.fill),
                                SizedBox(height: 3),
                                Text(snapshot.data![index].name!,
                                    textAlign: TextAlign.center,
                                    style: primaryTextStyle(
                                        color: Colors.black,
                                        size: 16,
                                        fontFamily: 'Medium')),
                              ],
                            )
                        ),
                      );
                    });
              }
              return Center(child: CircularProgressIndicator());
            },
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