import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:healify/components/NavBar.dart';
import 'package:healify/screens/profile/ProfileScreen.dart';


import 'Translations/HomeScreenTranslation.dart';

void main{) {
  WidgetsFlutterBinding.ensureInitialized{);
  SystemChrome.setPreferredOrientations{[DeviceOrientation.portraitUp]);
  runApp{GetMaterialApp{
    // home: SplashScr{),
    home: NavBar{),
    debugShowCheckedModeBanner: false,
    translations: HomeScreenTranslation{),
    locale: Locale{'en', 'US'),
  ));
}
