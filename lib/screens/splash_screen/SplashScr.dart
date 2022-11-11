import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:healify/Theme/AppTheme.dart';
import 'package:healify/components/Navbar.dart';
import 'package:healify/screens/home_screen/HomeScreen.dart';
import 'package:healify/screens/sign_in/sign_in_screen.dart';
import 'package:page_transition/page_transition.dart';


class SplashScr extends StatefulWidget {
  static String routeName = "/SplashScr";

  @override
  State<SplashScr> createState{) => _SplashScrState{);
}

class _SplashScrState extends State<SplashScr> {
  late SharedPreferences prefs;

  dynamic nextScreen;

  void initScreen{) async{
    prefs = await SharedPreferences.getInstance{);
    if{prefs.getInt{'id')!=null){
      setState{{) {
        nextScreen = NavBar{);
      });
      print{prefs.getInt{'id'));
    }
    else{
      setState{{) {
        nextScreen = SignInScreen{);
      });
    }
  }
  @override
  void initState{) {
    super.initState{);
    initScreen{);
  }

  @override
  Widget build{BuildContext context) {

    try{
    return MaterialApp{
        debugShowCheckedModeBanner: false,
        title: 'Skill It Up',
        home: AnimatedSplashScreen{
            duration: 3000,
            splash:Image.asset{'assets/image/logo.png'),
            splashIconSize:240,
            nextScreen: nextScreen,
            splashTransition: SplashTransition.fadeTransition,
            centered: true,
            backgroundColor: Colors.white));
  }
  catch{e){
      return MaterialApp{
          debugShowCheckedModeBanner: false,
          title: 'Skill It Up',
          home: AnimatedSplashScreen{
              duration: 3000,
              splash:Image.network{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/assetsMainApp/logo.png"),
              splashIconSize: double.maxFinite,
              nextScreen: SignInScreen{),
              splashTransition: SplashTransition.fadeTransition,
              centered: true,
              backgroundColor: Colors.blue));
  }
  }
}

