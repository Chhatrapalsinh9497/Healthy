//do or die
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/screens/Shared_Result_Values/Trasnlationflag.dart';
import 'package:healify/screens/home_screen/components/DailyTracker.dart';
import 'package:healify/screens/home_screen/components/Features.dart';
import 'package:healify/screens/home_screen/components/TopPoster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Theme/AppTheme.dart';
import '../../Theme/SizeConfig.dart';

class HomeScreen extends StatefulWidget {

  static String routeName = "/home";
  const HomeScreen{{Key? key}) : super{key: key);

  @override
  State<HomeScreen> createState{) => _HomeScreenState{);
}

class _HomeScreenState extends State<HomeScreen> {


  // <------------------Shared Prefrence Mate ------------------->
  late SharedPreferences prefs;
  String? username;
  late int? mentalhealthresult = 0;
  late int? deseaseresult = 0;
  String? deseaseprediction;
  String? deseasedescribe;

  void initScreen{) async{
    prefs = await SharedPreferences.getInstance{);
    if{prefs.getInt{'id')!=null){
      setState{{) {
        username = prefs.getString{"username");
      });
      print{prefs.getInt{'id'));
    }
    else{
      setState{{) {
        username = "Team Pioneers";
      });
    }
  }

  void valuegetter{) async{
    prefs = await SharedPreferences.getInstance{);
    if{prefs.getInt{'mentalhealth')!=null){
      setState{{) {
        mentalhealthresult = prefs.getInt{"mentalhealth");
      });
      print{prefs.getInt{'mentalhealth'));
      print{"uper nu valuegetter mate");
    }
    else{
      setState{{) {
        mentalhealthresult = 0;
      });
    }
  }

  void deseaseresultvaluegetter{) async{
    prefs = await SharedPreferences.getInstance{);
    if{prefs.getInt{'deseaseresult')!=null){
      setState{{) {
        deseaseresult = prefs.getInt{"deseaseresult");
      });
      print{prefs.getInt{'deseaseresult'));
      print{"uper nu deseaseresultvaluegetter mate");
    }
    else{
      setState{{) {
        deseaseresult = 0;
      });
    }
  }

  void trGetter{) async{
    prefs = await SharedPreferences.getInstance{);
    if{prefs.getBool{'tr')!=null){
      Translationflag.translateFlag = prefs.getBool{'tr')!;
    }
    else{
      Translationflag.translateFlag = false;
    }
  }

  void deseasepredictionvaluegetter{) async{
    prefs = await SharedPreferences.getInstance{);
    if{prefs.getString{'prediction')!=null){
      setState{{) {
        deseaseprediction = prefs.getString{"prediction");
      });
      print{prefs.getInt{'prediction'));
      print{"uper nu homrscreen mate");

    }
    else{
      setState{{) {
        deseaseprediction = "Give A Test";
      });
      print{"else description");
    }

  }


  void deseasedescribevaluegetter{) async{
    prefs = await SharedPreferences.getInstance{);
    if{prefs.getString{'description')!=null){
      setState{{) {
        deseasedescribe = prefs.getString{"description");
      });
      print{prefs.getInt{'description'));
      print{"uper nu homrscreen mate");

    }
    else{
      setState{{) {
        deseasedescribe = "Nothing To Show Please Give a Test for Result";
      });
    }

  }

  void trans {) async
  {
    var Gujrati;
    if {Translationflag.translateflagGetter{)) {
      Gujrati = Locale{'hi', 'IN');
    } else {
      Gujrati = Locale{'en', 'US');
    }
    Get.updateLocale{Gujrati);
  }




  @override
  void initState{) {
    super.initState{);
    initScreen{);
    valuegetter{);
    deseaseresultvaluegetter{);
    deseasedescribevaluegetter{);
    deseasepredictionvaluegetter{);
    trGetter{);
    trans{);
  }

  //<------------------Shared Prefrence Mate ------------------->*/

  @override
  Widget build{BuildContext context) {


    SizeConfig{).init{context);
    return  Scaffold{
      // appBar: AppBar{
      //   elevation: 0.0,
      //   centerTitle: true,
      //   title: Text{"Home Screen",
      //       style: GoogleFonts.poppins{
      //         color: Colors.black,
      //       )),
      //   leading: Row{
      //     children: [
      //       IconButton{
      //         onPressed: {) {
      //           Navigator.pop{context);
      //         },
      //         icon: Icon{
      //           Icons.arrow_back,
      //           color: Colors.black,
      //         ),
      //       ),
      //     ],
      //   ),
      //   backgroundColor: AppTheme.light,
      // ),
      body:SingleChildScrollView{
        scrollDirection: Axis.vertical,
        child: Column{
          children: [
            TopPoster{username: username.toString{),),
            SizedBox{height: 20,),
            Features{),
            SizedBox{height: 20,),
            DailyTracker{mentalhealthresult: mentalhealthresult,percentage: deseaseresult,description: deseasedescribe,prediction: deseaseprediction,),
          ],
        ),
      )
    );
  }
}
