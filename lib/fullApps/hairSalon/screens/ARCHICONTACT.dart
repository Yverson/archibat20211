import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:archibat2021/fullApps/hairSalon/model/ProductModel.dart';
import 'package:archibat2021/fullApps/hairSalon/utils/BHColors.dart';
import 'package:archibat2021/fullApps/hairSalon/model/ProductModel.dart';
import 'package:http/http.dart' as http;

class BHSpecialOfferModel {
  String? img;
  String? title;
  String? subtitle;

  BHSpecialOfferModel({this.img, this.title, this.subtitle});
}

class ARCHICONTACTScreen extends StatefulWidget {
  static String tag = '/DiscoverBottomNavigationBarScreen';

  @override
  ARCHICONTACTScreenState createState() => ARCHICONTACTScreenState();
}

class ARCHICONTACTScreenState extends State<ARCHICONTACTScreen> {
  late List<BHSpecialOfferModel> specialOfferNewList;
  var data;

  List<ProductModel> filteredData = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        title: Text("CONTACT"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.lightGreen],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(),
              Text(
                "SERVICE COMMERCIAL",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green[900],
                    fontWeight: FontWeight.bold),
              ),
              Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.lightGreen.shade200,
                                    Colors.lightGreen.shade200
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter)),
                          margin: EdgeInsets.fromLTRB(0, 8, 16, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Text(
                                  "Commissaire Général",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 8, bottom: 8),
                                child: Text(
                                  "ibn@axesmarketing.com",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green.shade900),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 8, bottom: 8),
                                child: Text(
                                  "+225 27 22 41 33 94",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green.shade900),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.lightGreen.shade200,
                                    Colors.lightGreen.shade200
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter)),
                          margin: EdgeInsets.fromLTRB(0, 8, 16, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Text(
                                  "Assistante Relation Client",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 8, bottom: 8),
                                child: Text(
                                  "annic@axesmarketing.com",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green.shade900),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 8, bottom: 8),
                                child: Text(
                                  "+225 07 59 50 74 42",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green.shade900),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])),
              Divider(),
              Text(
                "SERVICE COMMUNICATION",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green[900],
                    fontWeight: FontWeight.bold),
              ),
              Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.lightGreen.shade200,
                                    Colors.lightGreen.shade200
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter)),
                          margin: EdgeInsets.fromLTRB(0, 8, 16, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Text(
                                  "Chargée de Communication",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 8, bottom: 8),
                                child: Text(
                                  "corineyao@axesmarketing.com",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green.shade900),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 8, bottom: 8),
                                child: Text(
                                  "+225 07 59 50 74 47",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green.shade900),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.lightGreen.shade200,
                                    Colors.lightGreen.shade200
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter)),
                          margin: EdgeInsets.fromLTRB(0, 8, 16, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Text(
                                  "Chargée du Forum",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 8, bottom: 8),
                                child: Text(
                                  "estellekouadio@axesmarketing.com",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green.shade900),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 8, bottom: 8),
                                child: Text(
                                  "+225 07 79 49 39 77",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green.shade900),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])),
              Divider(),
              Text(
                "COORDINATION ET LOGISTIQUE",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green[900],
                    fontWeight: FontWeight.bold),
              ),
              Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.lightGreen.shade200,
                                    Colors.lightGreen.shade200
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter)),
                          margin: EdgeInsets.fromLTRB(0, 8, 16, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Text(
                                  "Responsable Logistique",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 8, bottom: 8),
                                child: Text(
                                  "edgareffou@axesmarketing.com",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green.shade900),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 8, bottom: 8),
                                child: Text(
                                  "+225 07 59 50 75 59",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green.shade900),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])),
              Divider(),
              Text(
                "RELATION PRESS & MEDIA",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green[900],
                    fontWeight: FontWeight.bold),
              ),
              Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.lightGreen.shade200,
                                    Colors.lightGreen.shade200
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter)),
                          margin: EdgeInsets.fromLTRB(0, 8, 16, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Text(
                                  "Coordonnateur Presse",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 8, bottom: 8),
                                child: Text(
                                  "paulinzobo@axesmarketing.com",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green.shade900),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 8, bottom: 8),
                                child: Text(
                                  "+225 07 47 57 55 46",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green.shade900),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}
