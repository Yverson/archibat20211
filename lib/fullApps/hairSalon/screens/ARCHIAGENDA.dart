import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:nb_utils/nb_utils.dart';
import 'package:archibat2021/main/utils/AppWidget.dart';

import '../../../main.dart';

class T1Model {
  String? id;
  String? type;
  String? name;
  String? duration;
  String? info;
  String? designation;
  String? img;

  T1Model(this.id, this.type, this.name, this.duration, this.info,
      this.designation, this.img);

  static T1Model fromMap(Map<String, dynamic> map) {
    T1Model ridesBean = T1Model(map['id'], map['type'], map['name'],
        map['duration'], map['info'], map['designation'], map['img']);

    return ridesBean;
  }

  Map toJson() => {
    "id": id,
    "type": type,
    "name": name,
    "price": duration,
    "info": info,
    "designation": designation,
    "img": img,
  };
}

class ARCHIAGENDAScreen extends StatefulWidget {
  static String tag = '/DiscoverBottomNavigationBarScreen';

  @override
  ARCHIAGENDAScreenState createState() => ARCHIAGENDAScreenState();
}

class ARCHIAGENDAScreenState extends State<ARCHIAGENDAScreen> {
  late List<T1Model> mListings11 = [];
  late List<T1Model> mListings12 = [];
  late List<T1Model> mListings21 = [];
  late List<T1Model> mListings22 = [];
  late List<T1Model> mListings31 = [];
  late List<T1Model> mListings32 = [];
  var lstData;

  int? _sliding = 0;

  Future<List<T1Model>> fetchData() async {
    mListings11.clear();
    mListings12.clear();
    mListings21.clear();
    mListings22.clear();
    mListings31.clear();
    mListings32.clear();

    final response = await http.get(Uri.parse(
        'http://cgeciapi.gaddielsoftware.com/api/programmes'));
    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      //Creating a list to store input data;
      List<T1Model> rides = [];
      for (var singleUser in responseData) {
        T1Model? r = T1Model.fromMap(singleUser);

        if (r.type == "CEO" && r.id == "28 octobre 2021") {
          mListings11.add(r);
        }

        if (r.type == "CEO" && r.id == "29 octobre 2021") {
          mListings12.add(r);
        }

        if (r.type == "PME" && r.id == "28 octobre 2021") {
          mListings21.add(r);
        }

        if (r.type == "PME" && r.id == "29 octobre 2021") {
          mListings22.add(r);
        }

        if (r.type == "YCEO" && r.id == "28 octobre 2021") {
          mListings31.add(r);
        }

        if (r.type == "YCEO" && r.id == "29 octobre 2021") {
          mListings32.add(r);
        }

        //Adding user to the list.
        rides.add(r);
      }

      return rides;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    lstData = fetchData();
  }

  @override
  Widget build(BuildContext context) {

    Widget mPageCEO(var value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "28 Octobre 2021",
            style: boldTextStyle(),
          ).paddingLeft(16),
          16.height,
          ListView.builder(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            itemCount: mListings11.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return T1ListItem(mListings11[index], index);
            },
          ),
          16.height,
          Text(
            "29 Octobre 2021",
            style: boldTextStyle(),
          ).paddingLeft(16),
          16.height,
          ListView.builder(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            itemCount: mListings12.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return T1ListItem(mListings12[index], index);
            },
          ),
        ],
      );
    }

    Widget mPageYCEO(var value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "28 Octobre 2021",
            style: boldTextStyle(),
          ).paddingLeft(16),
          16.height,
          ListView.builder(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            itemCount: mListings21.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return T1ListItem(mListings21[index], index);
            },
          ),
          16.height,
          Text(
            "29 Octobre 2021",
            style: boldTextStyle(),
          ).paddingLeft(16),
          16.height,
          ListView.builder(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            itemCount: mListings22.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return T1ListItem(mListings22[index], index);
            },
          ),
        ],
      );
    }

    Widget mPagePME(var value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "28 Octobre 2021",
            style: boldTextStyle(),
          ).paddingLeft(16),
          16.height,
          ListView.builder(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            itemCount: mListings31.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return T1ListItem(mListings31[index], index);
            },
          ),
          16.height,
          Text(
            "29 Octobre 2021",
            style: boldTextStyle(),
          ).paddingLeft(16),
          16.height,
          ListView.builder(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            itemCount: mListings32.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return T1ListItem(mListings32[index], index);
            },
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        title: Text("AGENDA"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Colors.blue,Colors.blue],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              )
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: FutureBuilder(
              future: lstData,
              builder: (BuildContext ctx, AsyncSnapshot snapshot) {
                if (snapshot.data != null) {
                  return Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(16.0),
                        child: CupertinoSlidingSegmentedControl(
                            children: {
                              0: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Conferences',
                                    style: primaryTextStyle(
                                        color: _sliding == 0
                                            ? Colors.blueAccent
                                            : Colors.blue),
                                  )),
                              1: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text('B to B',
                                      style: primaryTextStyle(
                                          color: _sliding == 1
                                              ? Colors.blueAccent
                                              : Colors.blue))),
                            },
                            groupValue: _sliding,
                            onValueChanged: (dynamic newValue) {
                              setState(() {
                                _sliding = newValue;
                              });
                            }),
                      ),
                      if (_sliding == 0) mPageCEO("CEO"),
                      if (_sliding == 1) mPageYCEO("YCEO"),
                      if (_sliding == 2) mPagePME("PME"),
                    ],
                  );
                } else {
                  return Container(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              }),
        ),
      ),
    );
  }

}


// ignore: must_be_immutable
class T1ListItem extends StatelessWidget {
  late T1Model model;
  late int pos;

  T1ListItem(T1Model model, int pos) {
    this.model = model;
    this.pos = pos;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 1),
        child: Container(
          decoration: boxDecoration(
              bgColor: appStore.scaffoldBackground,
              radius: 10,
              showShadow: true),
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                text(model.name,
                                    textColor: Colors.blueAccent,
                                    fontFamily: 'Bold',
                                    fontSize: 16.0,
                                    maxLine: 2),
                                //text(model.duration, textColor: sh_greenCgeci,  fontFamily: fontMedium,fontSize: textSizeMedium),
                                SizedBox(height: 6),
                                text(model.info,
                                    fontSize: 14.0,
                                    maxLine: 5,
                                    textColor: Colors.blueAccent),
                              ],
                            ),
                          ),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                  ],
                ),
              ),
              Container(
                width: 4,
                height: 35,
                margin: EdgeInsets.only(top: 16),
                color: pos % 2 == 0 ? Colors.blueAccent : Colors.blue,
              )
            ],
          ),
        ));
  }
}