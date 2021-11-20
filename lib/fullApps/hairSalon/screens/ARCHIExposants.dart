import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:archibat2021/fullApps/hairSalon/utils/BHColors.dart';
import 'package:archibat2021/main/utils/AppWidget.dart';

import 'package:archibat2021/fullApps/hairSalon/model/ProductModel.dart';
import 'package:http/http.dart' as http;

class ARCHIExposantsScreen extends StatefulWidget {
  static String tag = '/DiscoverBottomNavigationBarScreen';

  @override
  ARCHIExposantsScreenState createState() => ARCHIExposantsScreenState();
}

class ARCHIExposantsScreenState extends State<ARCHIExposantsScreen> {
  var data;

  List<ProductModel> allData = [];
  List<ProductModel> filteredData = [];

  Future<List<ProductModel>> fetchData() async {
  final response = await http
      .get(Uri.parse('http://cgeciapi.gaddielsoftware.com/api/Chapiteau?type=Exposants'));
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
  throw Exception('Failed to load Exposants');
  }
  }

  @override
  void initState() {
    super.initState();
    data = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        title: Text("EXPOSANTS"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Colors.orangeAccent, Colors.orangeAccent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: TextFormField(
                                autocorrect: true,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  hintText: 'Rechercher un exposant',
                                  prefixIcon:
                                      Icon(Icons.search, color: BHGreyColor),
                                  hintStyle: TextStyle(color: BHGreyColor),
                                  filled: true,
                                  fillColor: Colors.white70,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: BHAppDividerColor, width: 0.5),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: BHAppDividerColor, width: 0.5),
                                  ),
                                ),
                                  onChanged: (string) {
                                    //_debouncer.run(() {
                                    setState(() {
                                      filteredData = allData
                                          .where((u) => (u.name!.toLowerCase()
                                          .contains(string.toLowerCase()) ||
                                          u.info!.toLowerCase()
                                              .contains(string.toLowerCase()))).toList();
                                    });
                                    //});
                                  }
                              ),
                            ).expand(),
                          ],
                        ),
                        FutureBuilder(
                            future: data,
                            builder:
                                (BuildContext ctx, AsyncSnapshot snapshot) {
                              if (snapshot.data != null) {
                                return Container(
                                  height: 600,
                                  child: ListView.builder(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    itemCount: filteredData.length,
                                    scrollDirection: Axis.vertical,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return GestureDetector(
                                        child: Card(
                                          margin:
                                          EdgeInsets.fromLTRB(0, 8, 16, 8),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.all(12),
                                                  child: commonCacheImageWidget(
                                                      filteredData[index].img,
                                                      75,
                                                      width: 75,
                                                      fit: BoxFit.cover)),
                                              new Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: EdgeInsets.only(left: 8, top: 8),
                                                        child: Text(
                                                          filteredData[index].name!,
                                                          style: new TextStyle(
                                                              color: Colors.pink[700],
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                              FontWeight.bold),
                                                        )),
                                                    Padding(
                                                        padding: EdgeInsets.only(left: 8),
                                                        child: Text(
                                                            filteredData[index].info!,
                                                            style: new TextStyle(
                                                                color: Colors.blue,
                                                                fontSize: 18.0,
                                                                fontWeight: FontWeight
                                                                    .bold))),
                                                  ]),
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            _showSnackBar(ctx, filteredData[index]);
                                          });
                                        },
                                      );
                                    },
                                  ),
                                );
                              } else {
                                return Container(
                                  child: Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              }
                            })
                      ])),
            ],
          ),
        ),
      ),
    );
  }

  _showSnackBar(BuildContext context, ProductModel item) {
    final SnackBar objSnackbar = new SnackBar(
      content: Container(
        height: 110,
        child: Card(
          margin:
          EdgeInsets.fromLTRB(0, 8, 16, 8),
          child: Row(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.all(12),
                  child: commonCacheImageWidget(
                      item.img,
                      75,
                      width: 75,
                      fit: BoxFit.cover)),
              new Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 8, top: 8),
                        child: Text(
                          item.name!,
                          style: new TextStyle(
                              color: Colors.pink[700],
                              fontSize: 18.0,
                              fontWeight:
                              FontWeight.bold),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                            item.info!,
                            style: new TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                                fontWeight: FontWeight
                                    .bold))),
                  ]),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.amber,
    );
    Scaffold.of(context).showSnackBar(objSnackbar);
  }
}
