import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nb_utils/nb_utils.dart';
import 'package:archibat2021/fullApps/hairSalon/model/ProductModel.dart';

class ARCHIMEDIAScreen extends StatefulWidget {
  static String tag = '/DiscoverBottomNavigationBarScreen';

  @override
  ARCHIMEDIAScreenState createState() => ARCHIMEDIAScreenState();
}

class ARCHIMEDIAScreenState extends State<ARCHIMEDIAScreen> {
  @override
  void initState() {
    super.initState();
  }

  var data;

  List<ProductModel> allData = [];
  List<ProductModel> filteredData = [];
  Future<List<ProductModel>> fetchData() async {
    final response = await http
        .get(Uri.parse('http://cgeciapi.gaddielsoftware.com/api/Media'));
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
          title: Text("MEDIA"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [Colors.deepPurpleAccent, Colors.deepPurpleAccent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),
        ),
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
                      return Padding(
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
                      );
                    });
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        ));
  }
}
