//region imports
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:archibat2021/main/store/AppStore.dart';
import 'package:archibat2021/main/utils/AppTheme.dart';
import 'package:archibat2021/routes.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'fullApps/hairSalon/screens/BHSplashScreen.dart';
import 'main/utils/AppConstant.dart';
//endregion

class CSDrawerModel {
  String? title;
  IconData? icon;
  Widget? goto;
  bool isSelected;

  CSDrawerModel({this.title, this.icon, this.goto, this.isSelected = false});
}


/// This variable is used to get dynamic colors when theme mode is changed
AppStore appStore = AppStore();

int currentIndex = 0;

void main() async {
  //region Entry Point
  WidgetsFlutterBinding.ensureInitialized();

  await initialize();

  appStore.toggleDarkMode(value: getBoolAsync(isDarkModeOnPref));

  if (isMobile) {
    //await Firebase.initializeApp();
    MobileAds.instance.initialize();

    //FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  }

  //Remove this method to stop OneSignal Debugging
  //OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  OneSignal.shared.setAppId("da9fc093-50d0-42d9-a1c5-9321e06806d3");

// The promptForPushNotificationsWithUserResponse function will show the iOS push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
    print("Accepted permission: $accepted");
  });


  OneSignal.shared.setNotificationWillShowInForegroundHandler((OSNotificationReceivedEvent event) {
    // Will be called whenever a notification is received in foreground
    // Display Notification, pass null param for not displaying the notification
    //print(event.notification);
    event.complete(event.notification);
  });

  runApp(MyApp());
  //endregion
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '$mainAppName${!isMobile ? ' ${platformName()}' : ''}',
        home: BHSplashScreen(),
        theme: !appStore.isDarkModeOn ? AppThemeData.lightTheme : AppThemeData.darkTheme,
        routes: routes(),
        scrollBehavior: SBehavior(),
      ),
    );
  }
}
