import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nb_utils/nb_utils.dart';
import 'package:archibat2021/fullApps/hairSalon/model/ProductModel.dart';

class ARCHIRESTAURANTScreen extends StatefulWidget {
  static String tag = '/DiscoverBottomNavigationBarScreen';

  @override
  ARCHIRESTAURANTScreenState createState() => ARCHIRESTAURANTScreenState();
}

class ARCHIRESTAURANTScreenState extends State<ARCHIRESTAURANTScreen> {

  late List<ProductModel> mStoreDealList;

  @override
  void initState() {
    super.initState();

    List<ProductModel> mProductList = [];
    ProductModel item = ProductModel();
    item.img = "images/archibat/r1.jpg";
    item.name = "Maquis du Val";
    item.info = "27 22 44 04 64";
    mProductList.add(item);

    ProductModel item1 = ProductModel();
    item1.img = "images/archibat/r2.jpg";
    item1.name = "Burger King";
    item1.info = "07 87 98 34 08";
    mProductList.add(item1);

    ProductModel item2 = ProductModel();
    item2.img = "images/archibat/r3.jpg";
    item2.name = "Norima";
    item2.info = "27 22 51 03 14";
    mProductList.add(item2);

    ProductModel item3 = ProductModel();
    item3.img = "images/archibat/r4.jpg";
    item3.name = "Restaurant Kazajoma";
    item3.info = "27 22 41 78 62";
    mProductList.add(item3);

    ProductModel item4 = ProductModel();
    item4.img = "images/archibat/r5.jpg";
    item4.name = "Nuit de Saigon";
    item4.info = "27 22 41 40 44";
    mProductList.add(item4);

    ProductModel item5 = ProductModel();
    item5.img = "images/archibat/r6.jpg";
    item5.name = "KFC";
    item5.info = "07 87 84 20 95";
    mProductList.add(item5);

    mStoreDealList = mProductList;

  }


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 0.0,
          toolbarHeight: 70,
          title: Text("RESTAURANTS"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.red],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),
        ),
        body: SingleChildScrollView(
    child: Center(
          child: Container(
            width: width,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: 10),
                Container(
                  child: GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1),
                    itemCount: mStoreDealList.length,
                    itemBuilder: (context, index) {
                      return StoreDeal(mStoreDealList[index], index);
                    },
                  ),
                ),

              ],
            ),
          ),
        )));
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
            Text(model.info!,
                textAlign: TextAlign.center,
                style: primaryTextStyle(
                    color: Colors.black,
                    size: 14,
                    fontFamily: 'Medium')),
          ],
        ),
      ),
    );
  }
}