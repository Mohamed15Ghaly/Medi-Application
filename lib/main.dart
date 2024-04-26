import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:team/core/cache/cache_helper.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/medi_app.dart';
import 'package:device_preview/device_preview.dart';
main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  // OneSignal.Debug.setLogLevel(OSLogLevel.error);
  OneSignal.initialize("ec41f94c-6ea2-44e8-8be5-5cb8a9469eda");
  OneSignal.Notifications.requestPermission(true);
  runApp(
    // DevicePreview(
    // enabled: true,
    // builder: (context) =>
    const MediApplication(),
    // ),
  );
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: MediColors.primaryColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: MediColors.secondaryColor));
}
