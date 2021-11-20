
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ARCHIINVITATIONScreen extends StatefulWidget {
  static String tag = '/ShSignUp';

  @override
  ARCHIINVITATIONScreenState createState() => ARCHIINVITATIONScreenState();
}

class ARCHIINVITATIONScreenState extends State<ARCHIINVITATIONScreen> {
  var emailCont = TextEditingController();
  var passwordCont = TextEditingController();
  var confirmPasswordCont = TextEditingController();
  var firstNameCont = TextEditingController();
  var lastNameCont = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Recevoir votre invitation", textAlign: TextAlign.start,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.orangeAccent),),
        actions: [
        ],
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://archibat.ci/invitation/',
      ),
    );

  }

}