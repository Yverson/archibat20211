import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:archibat2021/fullApps/hairSalon/screens/ARCHIHome.dart';
import 'package:archibat2021/fullApps/hairSalon/utils/BHColors.dart';
import 'package:archibat2021/main/utils/AppWidget.dart';

import 'ARCHIAGENDA.dart';
import 'ARCHICONTACT.dart';
import 'ARCHIExposants.dart';
import 'ARCHIINFO.dart';
import 'ARCHIMEDIAV1.dart';

class BHDashedBoardScreen extends StatefulWidget {
  static String tag = '/DashedBoardScreen';

  @override
  BHDashedBoardScreenState createState() => BHDashedBoardScreenState();
}

class BHDashedBoardScreenState extends State<BHDashedBoardScreen> {
  int _selectedIndex = 0;
  var _pages = <Widget>[
    ARCHIHomeScreen(),
    ARCHIAGENDAScreen(),
    ARCHIExposantsScreen(),
    ARCHIINFOScreen(),
    ARCHIMEDIAV1Screen(),
    ARCHICONTACTScreen(),
  ];

  Widget _bottomTab() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.shifting,
      selectedLabelStyle: TextStyle(color: BHColorPrimary),
      selectedItemColor: BHGreyColor,
      unselectedLabelStyle: TextStyle(color: BHGreyColor),
      unselectedItemColor: BHGreyColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home, size: 32, color: Colors.red),label: 'MA VISITE'),
        BottomNavigationBarItem(icon: Icon(Icons.date_range_outlined, size: 32, color: Colors.blue),label: 'AGENDA'),
        BottomNavigationBarItem(icon: Icon(Icons.group_outlined, size: 32, color: Colors.orange),label: 'EXPOSANTS'),
        BottomNavigationBarItem(icon: Icon(Icons.message, size: 32, color: Colors.green), label: 'INFO'),
        BottomNavigationBarItem(icon: Icon(Icons.image_outlined, size: 32, color: Colors.deepPurpleAccent), label: 'MEDIA'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined, size: 32, color: Colors.lightGreen), label: 'CONTACT'),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(Colors.white);

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: _bottomTab(),
        body: Center(child: _pages.elementAt(_selectedIndex)),
      ),
    );
  }
}
