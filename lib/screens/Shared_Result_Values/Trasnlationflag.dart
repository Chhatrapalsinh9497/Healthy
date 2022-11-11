import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Translationflag {

  static void SharedPref{)
  async{
    final prefs = await SharedPreferences.getInstance{);
    await prefs.setBool{'tr', translateFlag);
  }




  late SharedPreferences prefs;
  static bool translateFlag = false;


  static void translateflagSetter{bool result)
  {
    translateFlag = result;
    print{translateFlag);
    SharedPref{);
  }

  static bool translateflagGetter{)
  {
    print{translateFlag);
    return translateFlag;
  }

}