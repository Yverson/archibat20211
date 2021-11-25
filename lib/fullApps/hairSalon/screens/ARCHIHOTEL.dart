import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nb_utils/nb_utils.dart';
import 'package:archibat2021/fullApps/hairSalon/model/ProductModel.dart';

import 'ARCHIHOTELDETAIL.dart';

class ARCHIHOTELScreen extends StatefulWidget {
  static String tag = '/DiscoverBottomNavigationBarScreen';

  @override
  ARCHIHOTELScreenState createState() => ARCHIHOTELScreenState();
}

class ARCHIHOTELScreenState extends State<ARCHIHOTELScreen> {

  late List<ProductModel> mStoreDealList;

  @override
  void initState() {
    super.initState();

    List<ProductModel> mProductList = [];
    ProductModel item = ProductModel();
    item.img = "images/archibat/h1.jpg";
    item.name = "HOTEL PALM CLUB ABIDJAN";
    item.info = "Situé à une intersection animée, cet hôtel simple se trouve à 21 km de l’aéroport Félix-Houphouët-Boigny, ainsi qu’à 4 km du musée des Civilisations de Côte d’Ivoire, où sont exposés des objets anciens et des œuvres d’art culturelles";
    item.site = "https://www.hotelpalmclub.com/";
    mProductList.add(item);

    ProductModel item1 = ProductModel();
    item1.img = "images/archibat/h2.jpg";
    item1.name = "HEDEN GOLF HOTEL";
    item1.info = "Situé au cœur d’un jardin paysager face à la lagune Ébrié, cet hôtel haut de gamme décoré d’œuvres d’art contemporain locales et au design architectural sophistiqué se trouve à 3 km de la mosquée de la Riviéra et à 17 km du parc national du Banco";
    item.site = "http://hedengolfhotel.com/";
    mProductList.add(item1);

    ProductModel item2 = ProductModel();
    item2.img = "images/archibat/h3.jpg";
    item2.name = "HOTEL NOVOTEL ABIDJAN";
    item2.info = "Séparé de la lagune Ébrié par un boulevard, cet hôtel à l’ambiance détendue est installé dans un bâtiment moderne. Il se trouve à 2 km de la cathédrale Saint-Paul et à 15 km de l’aéroport Félix-Houphouët-Boigny.";
    item.site = "https://all.accor.com/hotel/0481/index.fr.shtml";
    mProductList.add(item2);

    ProductModel item3 = ProductModel();
    item3.img = "images/archibat/h4.jpg";
    item3.name = "HOTEL PULLMAN ABIDJAN";
    item3.info = "Installé dans le quartier d’affaires, cet hôtel contemporain avec vue sur la lagune se trouve à 2 km de la célèbre cathédrale Saint-Paul d’Abidjan et du musée national. Il se trouve à 18 km de l’aéroport Félix Houphouët-Boigny.";
    item.site = "https://all.accor.com/hotel/1146/index.fr.shtml";
    mProductList.add(item3);

    ProductModel item4 = ProductModel();
    item4.img = "images/archibat/h5.jpg";
    item4.name = "SEEN HOTEL ABIDJAN";
    item4.info = "Entouré de banques et de bâtiments gouvernementaux, cet hôtel moderne se trouve à 2 km du musée des Civilisations de Côte d’Ivoire et à 16 km de l’aéroport international Félix-Houphouët-Boigny.";
    item.site = "https://www.seenhotels.com/";
    mProductList.add(item4);

    ProductModel item5 = ProductModel();
    item5.img = "images/archibat/h6.jpg";
    item5.name = "MOVENPICK HOTEL ABIDJAN";
    item5.info = "Le Mövenpick Hotel Abidjan est idéalement situé dans le quartier commercial du Plateau, à 14 km et 25 minutes en voiture de l’aéroport d’Abidjan, avec possibilité de service de limousine ou de location de voitures.";
    item.site = "https://www.movenpick.com/fr/africa/ivory-coast/abidjan/hotel-abidjan/overview/";
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
          brightness: Brightness.dark,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: Text("HOTELS"),
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
      onTap: () {
        ARCHIHOTELDETAILScreen(model: model).launch(context);
      },
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