import 'package:flutter/material.dart';
import 'package:archibat2021/main/model/AppModel.dart';
import 'package:archibat2021/main/screens/ProKitScreenListing.dart';

Map<String, WidgetBuilder> routes() {
  return <String, WidgetBuilder>{
    ProKitScreenListing.tag: (context) => ProKitScreenListing(ProTheme()),
  };
}
