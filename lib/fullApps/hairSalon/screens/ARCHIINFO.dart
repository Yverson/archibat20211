import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'ARCHIHOTEL.dart';
import 'ARCHIRESTAURANT.dart';

class ARCHIINFOScreen extends StatefulWidget {
  static String tag = '/DiscoverBottomNavigationBarScreen';

  @override
  ARCHIINFOScreenState createState() => ARCHIINFOScreenState();
}

class ARCHIINFOScreenState extends State<ARCHIINFOScreen> {
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
        title: Text("INFO PRATIQUE"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Colors.green, Colors.green],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
      ),
      body: Container(
        decoration: new BoxDecoration(color: Colors.white),
        height: height,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.asset("images/archibat/infopratique.png",
                      fit: BoxFit.fill),
                ),
                SizedBox(height: 5),
                Container(
                  width: width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // GestureDetector(
                          //     child: ClipRRect(
                          //       child: Container(
                          //         child: Image.asset("images/archibat/i1.png",
                          //             width: width / 5.3),
                          //       ),
                          //     ),
                          //     onTap: () {
                          //       print("you clicked me");
                          //     }),
                          //SizedBox(width: (10)),
                          GestureDetector(
                              child: ClipRRect(
                                child: Container(
                                  child: Image.asset("images/archibat/i2.png",
                                      width: width / 5.3),
                                ),
                              ),
                              onTap: () {
                                print("you clicked me");
                              }),
                          SizedBox(width: (30)),
                          GestureDetector(
                              child: ClipRRect(
                                child: Container(
                                  child: Image.asset("images/archibat/i3.png",
                                      width: width / 5.3),
                                ),
                              ),
                              onTap: () {
                                ARCHIRESTAURANTScreen().launch(context);
                              }),
                          SizedBox(width: (30)),
                          GestureDetector(
                              child: ClipRRect(
                                child: Container(
                                  child: Image.asset("images/archibat/i4.png",
                                      width: width / 5.3),
                                ),
                              ),
                              onTap: () {
                                ARCHIHOTELScreen().launch(context);
                              }),
                          SizedBox(width: (width * 0.025)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
