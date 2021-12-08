import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ARCHIAUDITORIUM.dart';
import 'ARCHICHAPITEAUA.dart';
import 'ARCHICHAPITEAUB.dart';
import 'ARCHIINVITATION.dart';
import 'ARCHIPLANSITE.dart';

class ARCHIHomeScreen extends StatefulWidget {
  static String tag = '/DiscoverBottomNavigationBarScreen';

  @override
  ARCHIHomeScreenState createState() => ARCHIHomeScreenState();
}

class MenuData {
  var name = "";
}

class ARCHIHomeScreenState extends State<ARCHIHomeScreen> {
  late List<MenuData> mStoreDealList;

  @override
  void initState() {
    super.initState();
    mStoreDealList = exposantItems();
  }

  List<MenuData> exposantItems() {
    List<MenuData> mProductList = [];
    MenuData item1 = MenuData();
    item1.name = "Chapiteau A";

    MenuData item2 = MenuData();
    item2.name = "Chapiteau B & Auvent";

    MenuData item3 = MenuData();
    item3.name = "Auditorium & Foyers";

    MenuData item4 = MenuData();
    item4.name = "Plan du site exposition";

    mProductList.add(item1);
    mProductList.add(item2);
    mProductList.add(item3);
    mProductList.add(item4);

    return mProductList;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Accueil", textAlign: TextAlign.start,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.orangeAccent),),
        actions: [
          IconButton(
            icon: Image.asset('images/archibat/facebook@4x.png'),
            onPressed: () async {_launchURL("https://www.facebook.com/Archibat-578022135543253/");},
          ),
          IconButton(
            icon: Image.asset('images/archibat/insta@4x.png'),
            onPressed: () async {_launchURL("https://https://instagram.com/archibat_CIV/");},
          ),
          IconButton(
            icon: Image.asset('images/archibat/link@4x.png'),
            onPressed: () async {_launchURL("https://www.facebook.com/Archibat-578022135543253/");},
          ),
          IconButton(
            icon: Image.asset('images/archibat/tweeter@4x.png'),
            onPressed: () async {_launchURL("https://www.linkedin.com/company/archibat-civ?report%2Esuccess=6vo3TCkCS1-Q3MQSXyAa5EmbyooXt_JHF4gI-SlS5O9Glwt8CaN1ZzdSFMOjqCEC4tgoZJl1pOO90MRDlW9NQp");},
          ),
          // IconButton(
          //   icon: Icon(Icons.headset_mic, color: Colors.orangeAccent),
          //   onPressed: () {
          //     openwhatsapp();
          //   },
          // ),
        ],
      ),
      body: Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(color: Colors.white),
        ),
        SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.network("http://cgeciapi.gaddielsoftware.com/archibat.png",
                      fit: BoxFit.cover),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.network("http://cgeciapi.gaddielsoftware.com/Fichier_1number.png",
                      fit: BoxFit.cover),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: width * 0.1041666666666667,
                      right: width * 0.1041666666666667),
                  width: width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      // Text(
                      //     "ARCHIBAT 2021, le plus grand salon du bâtiment et de l’architecture en Afrique de l’Ouest",
                      //     textAlign: TextAlign.center,
                      //     style: primaryTextStyle(
                      //         color: Colors.black,
                      //         size: 14,
                      //         fontFamily: 'Bold')),
                      // SizedBox(height: 8),
                      // Text("08 AU 11 DECEMBRE 2021",
                      //     textAlign: TextAlign.center,
                      //     style: primaryTextStyle(
                      //         color: Colors.black,
                      //         size: 20,
                      //         fontFamily: 'Bold')),
                      SizedBox(height: 15),
                      Container(
                        width: width,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text("ARCHIBAT 2019, C'ETAIT :",
                                style: primaryTextStyle(
                                    color: Colors.black,
                                    size: 20,
                                    fontFamily: 'Medium')),
                            SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(20), //or 15.0
                                      child: Container(
                                        padding: EdgeInsets.all(10.0),
                                        height: width * 0.1875,
                                        width: width * 0.1875,
                                        color: Colors.orangeAccent,
                                        child: Image.asset(
                                            "images/archibat/Asset_6@4x.png",
                                            width: width / 7.3),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text("28000",
                                        style: primaryTextStyle(
                                            color: Colors.black,
                                            size: (width * 0.0416666666666667)
                                                .toInt(),
                                            fontFamily: 'Bold')),
                                    Text("Visiteurs",
                                        style: primaryTextStyle(
                                            color: Colors.black,
                                            size: (width * 0.025).toInt(),
                                            fontFamily: 'Medium'))
                                  ],
                                ),
                                SizedBox(width: (25)),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(20), //or 15.0
                                      child: Container(
                                        padding: EdgeInsets.all(10.0),
                                        height: width * 0.1875,
                                        width: width * 0.1875,
                                        color: Colors.orangeAccent,
                                        child: Image.asset(
                                            "images/archibat/Asset_5@4x.png",
                                            width: width / 5.3),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text("300",
                                        style: primaryTextStyle(
                                            color: Colors.black,
                                            size: (width * 0.0416666666666667)
                                                .toInt(),
                                            fontFamily: 'Bold')),
                                    Text("Exposants",
                                        style: primaryTextStyle(
                                            color: Colors.black,
                                            size: (width * 0.025).toInt(),
                                            fontFamily: 'Medium'))
                                  ],
                                ),
                                SizedBox(width: (25)),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(20), //or 15.0
                                      child: Container(
                                        padding: EdgeInsets.all(10.0),
                                        height: width * 0.1875,
                                        width: width * 0.1875,
                                        color: Colors.orangeAccent,
                                        child: Image.asset(
                                            "images/archibat/Asset_4@4x.png",
                                            width: width / 5.3),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text("20",
                                        style: primaryTextStyle(
                                            color: Colors.black,
                                            size: (width * 0.0416666666666667)
                                                .toInt(),
                                            fontFamily: 'Bold')),
                                    Text("Experts du BTP",
                                        style: primaryTextStyle(
                                            color: Colors.black,
                                            size: (width * 0.025).toInt(),
                                            fontFamily: 'Medium'))
                                  ],
                                ),
                                SizedBox(width: (width * 0.025)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                ARCHICHAPITEAUAScreen().launch(context);
                              },
                              child: ClipRRect(
                                borderRadius:
                                BorderRadius.circular(20), //or 15.0
                                child: Container(
                                  height: 130,
                                  width: 130,
                                  color: Colors.pinkAccent,
                                  child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: <Widget>[
                                            Center(
                                                child: Text("Chapiteau A",
                                                    textAlign: TextAlign.center,
                                                    style: primaryTextStyle(
                                                        color: Colors.white,
                                                        size: 17,
                                                        fontFamily: 'Medium')))
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                ARCHICHAPITEAUBScreen().launch(context);
                              },
                              child: ClipRRect(
                                borderRadius:
                                BorderRadius.circular(20), //or 15.0
                                child: Container(
                                  height: 130,
                                  width: 130,
                                  color: Colors.deepOrange,
                                  child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: <Widget>[
                                            Center(
                                                child: Text(
                                                    "Chapiteau B & Auvent",
                                                    textAlign: TextAlign.center,
                                                    style: primaryTextStyle(
                                                        color: Colors.white,
                                                        size: 17,
                                                        fontFamily: 'Medium'))),
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                            ),
                          ]),
                      SizedBox(height: 15),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                ARCHIAUDITORIUMScreen().launch(context);
                              },
                              child: ClipRRect(
                                borderRadius:
                                BorderRadius.circular(20), //or 15.0
                                child: Container(
                                  height: 130,
                                  width: 130,
                                  color: Colors.lightGreen,
                                  child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: <Widget>[
                                            Center(
                                                child: Text(
                                                    "Auditorium & Foyers",
                                                    textAlign: TextAlign.center,
                                                    style: primaryTextStyle(
                                                        color: Colors.white,
                                                        size: 17,
                                                        fontFamily: 'Medium'))),
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                ARCHIPLANSITEScreen().launch(context);
                              },
                              child: ClipRRect(
                                borderRadius:
                                BorderRadius.circular(20), //or 15.0
                                child: Container(
                                  height: 130,
                                  width: 130,
                                  color: Colors.blue,
                                  child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: <Widget>[
                                            Center(
                                                child: Text(
                                                    "Plan du site exposition",
                                                    textAlign: TextAlign.center,
                                                    style: primaryTextStyle(
                                                        color: Colors.white,
                                                        size: 17,
                                                        fontFamily: 'Medium'))),
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                            ),
                          ]),
                      SizedBox(height: 25),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           primary: Colors.orangeAccent,
                           onPrimary: Colors.white,
                           shadowColor: Colors.orangeAccent,
                           elevation: 3,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(32.0)),
                           minimumSize: Size(200, 60), //////// HERE
                         ),
                         onPressed: () {
                           ARCHIINVITATIONScreen().launch(context);
                         },
                         child: Text(
                             "RECEVOIR VOTRE INVITATION", style: TextStyle(
                             fontSize: 20)),
                      ),
                      SizedBox(height: 25),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  void _launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  openwhatsapp() async {
    var whatsapp = "+2250759507447";
    var whatsappURl_android = "whatsapp://send?phone=" + whatsapp + "&text=";
    var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse("")}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: new Text("whatsapp no installed")));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: new Text("whatsapp no installed")));
      }
    }
  }

}