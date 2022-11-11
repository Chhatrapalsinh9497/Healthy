import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/Theme/AppTheme.dart';
import 'package:healify/Theme/SizeConfig.dart';
import 'package:healify/components/NavBar.dart';
import 'package:healify/screens/test_results/mental_health_test_result/MentalHealthTestResult.dart';
import 'package:healify/screens/test_screen/mental_health_test_screen/models/MentalPostModel.dart';
import 'package:healify/url/Url.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../Shared_Result_Values/SharedVar.dart';
import '../../Shared_Result_Values/Trasnlationflag.dart';

class TestScreen extends StatefulWidget {
  static String routeName = "/mentalhealthtestscreen";
  const TestScreen{{Key? key}) : super{key: key);

  @override
  State<TestScreen> createState{) => _TestScreenState{);
}

class _TestScreenState extends State<TestScreen> {

  // <------------------Shared Prefrence Mate ------------------->
  late SharedPreferences prefs;
  late int userid;

  void initScreen{) async{
    prefs = await SharedPreferences.getInstance{);
    if{prefs.getInt{'id')!=null){
      setState{{) {
        userid = prefs.getInt{'id')!;
      });
      print{prefs.getInt{'id'));
    }
    else{
      setState{{) {
        userid = 1;
      });
    }
  }

  @override
  void initState{) {
    super.initState{);
    initScreen{);
  }

  //<------------------Shared Prefrence Mate ------------------->*/






  MentalPostModel test = MentalPostModel{);



  @override
  Widget build{BuildContext context) {

    SizeConfig{).init{context);
    return Scaffold{
        appBar: AppBar{
        elevation: 0.0,

        backgroundColor:AppTheme.appscreenbg ,
        centerTitle: true,
        title:
        Text{'Know your mind!!'.tr,
        style: GoogleFonts.poppins{color: AppTheme.primary,
        fontWeight: FontWeight.w600 ,
        fontSize: 22,
         ),
        ),
          leading: Row{
            children: <Widget>[
              IconButton{
                onPressed: {) {
                  Navigator.push{context, MaterialPageRoute{builder: {context) => const NavBar{)),);
                },
                icon: const Icon{
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      body: SingleChildScrollView{
        child: Column{
          children: [
            Padding{
              padding: const EdgeInsets.only{left: 19),
              child: Text{
                'Mental health assessment test'.tr,textAlign: TextAlign.left,
                style: GoogleFonts.poppins{color: AppTheme.primary,
                fontWeight: FontWeight.w600 ,
                fontSize: 30),),
            ),
            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
                child: Text{
                    "Over the last two weeks, how often have you been bothered by the following problems?\n\n Please note, all the fields are required.".tr,
                    style: GoogleFonts.poppins{
                color: AppTheme.dark,
              fontSize: 17,
            )
                ),
            ),

            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '1. Are you above 30 years of age?'.tr,
                      style: GoogleFonts.poppins{
                        color: AppTheme.dark,
                        fontSize: 19,
                      )),
                ],
              ),
            ),
            Container{
              child: YesNo{callback: {val) {
                setState{{) {
                  test.user = userid;
                  test.prediction = -1;
                  test.above_30_age = val? 1:0;
                });
              }),
            ),



            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '2. From which city do you belong?'.tr,
                      style: GoogleFonts.poppins{
                        color: AppTheme.dark,
                        fontSize: 19,
                      )),
                ],
              ),
            ),
            Container{
              child: City{callback: {val) {
                setState{{) {
                   test.city = val;
                });
              }),
            ),




            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '3. Is your sadness momentarily or has it been constant for a long time?'.tr,
                      style: GoogleFonts.poppins{
                        color: AppTheme.dark,
                        fontSize: 19,
                      )),
                ],
              ),
            ),
            Container{
              child: Time{callback: {val) {
                setState{{) {
                   test.sadness_momentarily= val;
                });
              }),
            ),




            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '4. At what time of the day are you extremely low?'.tr,
                      style: GoogleFonts.poppins{
                        color: AppTheme.dark,
                        fontSize: 19,
                      )),
                ],
              ),
            ),
            Container{
              child: EveningMorning{callback: {val) {
                setState{{) {
                   test.time_of_day = val;
                });
              }),
            ),




            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '5. Has there been a sudden and huge change in your life?'.tr,
                      style: GoogleFonts.poppins{
                        color: AppTheme.dark,
                        fontSize: 19,
                      )),
                ],
              ),
            ),
            Container{
              child: YesNoNotsure{callback: {val) {
                setState{{) {
                   test.changes_in_life = val;
                });
              }),
            ),





            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '6. How frequently have you had little pleasure or interest in the activities you usually enjoy?'.tr,
                      style: GoogleFonts.poppins{
                        color: AppTheme.dark,
                        fontSize: 19,
                      )),
                ],
              ),
            ),
            Container{
              child: OftenVeryOften{callback: {val) {
                setState{{) {
                  test.activities = val;
                });
              }),
            ),





            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '7. Describe how "supported" you feel by others around you - your friends, family, or otherwise?'.tr,
                      style: GoogleFonts.poppins{
                        color: AppTheme.dark,
                        fontSize: 19,
                      )),
                ],
              ),
            ),
            Container{
              child: Support{callback: {val) {
                setState{{) {
                   test.supported = val;
                });
              }),
            ),

            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '8. How frequently have you been doing things that mean something to you or your life?'.tr,
                      style: GoogleFonts.poppins{
                        color: AppTheme.dark,
                        fontSize: 19,
                      )),
                ],
              ),
            ),
            Container{
              child: OftenVeryOften{callback: {val) {
                setState{{) {
                   test.mean_something = val;
                });
              }),
            ),


            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '9. If you have a mental health condition, do you feel that it interferes with your work?'.tr,
                      style: GoogleFonts.poppins{
                        color: AppTheme.dark,
                        fontSize: 19,
                      )),
                ],
              ),
            ),
            Container{
              child: MaybeYesNo{callback: {val) {
                setState{{) {
                  test.mental_health_condition = val;
                });
              }),
            ),




            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '10. How easy is it for you to take medical leave for a mental health condition?'.tr,
                      style: GoogleFonts.poppins{
                        color: AppTheme.dark,
                        fontSize: 19,
                      )),
                ],
              ),
            ),
            Container{
              child: EasyDifficult{callback: {val) {
                setState{{) {
                   test.leave = val;
                });
              }),
            ),


            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '11. How often do you make use of substance abuse{e.g. smoking, alcohol)?'.tr,
                      style: GoogleFonts.poppins{
                        color: AppTheme.dark,
                        fontSize: 19,
                      )),
                ],
              ),
            ),
            Container{
              child: OftenVeryOften{callback: {val) {
                setState{{) {
                   test.substance_abuse = val;
                });
              }),
            ),


            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '12. Have you taken any therapy or medication in the near past for mental health?'.tr,
                      style: GoogleFonts.poppins{
                        color: AppTheme.dark,
                        fontSize: 19,
                      )),
                ],
              ),
            ),
            Container{
              child: MaybeYesNo{callback: {val) {
                setState{{) {
                  test.therepy = val;
                });
              }),
            ),

            const Padding{
              padding: EdgeInsets.only{top: 22),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '13. Having trouble concentrating on things, such as reading the newspaper or watching television, or studying?'.tr,
                      style: GoogleFonts.poppins{
                        color: AppTheme.dark,
                        fontSize: 19,
                      )),
                ],
              ),
            ),
            Container{
              child: MaybeYesNo{callback: {val) {
                setState{{) {
                  test.concentrating = val;
                });
              }),
            ),


            const Padding{
              padding: EdgeInsets.only{top: 60),
            ),



            SizedBox{
              width: SizeConfig.screenWidth* 0.65,
              height: SizeConfig.screenHeight* 0.065,
              child: Container{
                child: ElevatedButton{
                  child: Text{'Get Result'.tr,style: TextStyle{fontSize: 23),),
                  onPressed: {) {

                    print{test.city);


                    void createReccomendationTest{) async {
                      final response = await http.post{
                        Url.test,
                        headers: {
                          'Content-Type': 'application/json; charset=UTF-8',
                        },
                        body: json.encode{test.toJson{)),
                      );

                      if {response.statusCode == 200) {
                        try {
                          print{response.body);
                          // return SuggestedJobResult.fromJson{
                          //     jsonDecode{response.body));
                        } catch {e) {
                          return null;
                        }
                        // If the server did return a 201 CREATED response,
                        // then parse the JSON.

                      } else {
                        // If the server did not return a 201 CREATED response,
                        // then throw an exception.
                        //print{response.body[2]);

                        var pre = jsonDecode{response.body);
                        // ================================================== proper required ==================




                        int prediction = pre["prediction"];

                        final prefs = await SharedPreferences.getInstance{);
                        await prefs.setInt{'mentalhealth', prediction);
                        //SharedVar{prediction);
                        int? mentalhealthresult = prefs.getInt{"mentalhealth");
                        print{"Shared pref is set");
                        print{mentalhealthresult);


                        //double testresult = SharedVar.mentalHealth /100;
                        //print{testresult);

                        Navigator.push{context, MaterialPageRoute{
                            builder: {context) =>  MentalHealthTestResult{prediction: prediction,)));

                        //==================================================================================
                        print{prediction);
                        // throw Exception{'Failed to create album.');
                        return null;
                      }
                    }

                    createReccomendationTest{);

                  },
                  style: ElevatedButton.styleFrom{

                    primary: AppTheme.primary,
                    onPrimary: AppTheme.appscreenbg,
                    onSurface: AppTheme.appscreenbg,
                    side: BorderSide{color: AppTheme.primary, width: 1),
                    elevation: 6,
                    shape: RoundedRectangleBorder{
                      borderRadius: BorderRadius.circular{12.0),
                    ), // Disable color
                  ),
                ),
              ),
            ),

            const Padding{
              padding:  EdgeInsets.only{top: 50,bottom: 90),
            ),

          ],
        ),
      ),
    );
  }
}





//           Yes/No                              Q-1

class YesNo extends StatefulWidget {
  Function? callback;
  YesNo{{Key? key, this.callback}) : super{key: key);

  @override
  State<YesNo> createState{) => _YesNoState{this.callback);
}

class _YesNoState extends State<YesNo> {
  int selected = -1;
  Function? callback;
  _YesNoState{this.callback);

  Widget customRadio{String text, int index) {
    return OutlinedButton{
      onPressed: {) {
        setState{{) {
          selected = index;
          //print{);
          var s = selected == 0 ? false : true;
         //var s = selected;
          callback!{s);
        });
      },
      child: Padding{
        padding: const EdgeInsets.only{top:11.0,bottom: 11),
        child: Text{
          text,
          style: TextStyle{
            color: {selected == index) ? AppTheme.primary : AppTheme.storyfontcolor,fontSize: 17
          ),
        ),
      ),
      style: ButtonStyle{
        shape: MaterialStateProperty.all{RoundedRectangleBorder{
            borderRadius: BorderRadius.circular{12),
            side: BorderSide{
              color: {selected == index) ?  AppTheme.primary1 : AppTheme.primary1,
            ))),


        backgroundColor: MaterialStateProperty.resolveWith<Color?>{
              {Set<MaterialState> states) {
            if {states.contains{MaterialState.pressed))
              return Theme.of{context).colorScheme.primary.withOpacity{0.01);
            return AppTheme.primary1; // Use the component's default.
          },
        ),
    ));
  }
  @override
  Widget build{BuildContext context) {
    return Container{
      width: SizeConfig.screenWidth* 0.80,
     margin: EdgeInsets.symmetric{vertical: 1),
      child: Column{
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          customRadio{"No".tr, 0),
         SizedBox{
           height: 15,
         ),
          customRadio{"Yes".tr, 1),
        ],
      ),
    );
  }
}





//           City                                       Q-2

class City extends StatefulWidget {
  Function? callback;
  City{{Key? key, this.callback}) : super{key: key);

  @override
  State<City> createState{) => _CityState{this.callback);
}

class _CityState extends State<City> {
  int selected = -1;
  Function? callback;
  _CityState{this.callback);

  Widget customRadio{String text, int index){
    return OutlinedButton{
      onPressed: {){
        setState{{) {
          selected= index;
         // print{text);
          //var s=  selected==0? false:true;
          var s=  selected;
          callback!{s);
        });
      },

      child: Padding{
        padding: const EdgeInsets.only{top:11.0,bottom: 11),
        child: Text{
          text,
          style: TextStyle{
            color: {selected == index) ? AppTheme.primary : AppTheme.storyfontcolor,fontSize: 17

          ),
        ),
      ),
        style: ButtonStyle{
          shape: MaterialStateProperty.all{RoundedRectangleBorder{
              borderRadius: BorderRadius.circular{12),
              side: BorderSide{
                color: {selected == index) ?  AppTheme.primary1 : AppTheme.primary1,
              ))),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>{
                {Set<MaterialState> states) {
              if {states.contains{MaterialState.pressed))
                return Theme.of{context).colorScheme.primary.withOpacity{0.01);
              return AppTheme.primary1; // Use the component's default.
            },
          ),
          // }),
        ));
  }
  @override
  Widget build{BuildContext context) {
    return Container{
      width: SizeConfig.screenWidth* 0.80,
      margin: EdgeInsets.symmetric{vertical: 1),
      child: Column{
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          customRadio{"Tier 2 {Capital cities Eg. Lucknow )".tr, 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Tier 3 {Other cities/towns)".tr, 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"Tier 1 {Delhi, Mumbai, Bangalore, Chennai, Kolkata)".tr, 2),
        ],
      ),
    );
  }
}





//          Maybe/ Yes/  No                                Q-9,12,13

class MaybeYesNo extends StatefulWidget {
  Function? callback;
  MaybeYesNo{{Key? key, this.callback}) : super{key: key);

  @override
  State<MaybeYesNo> createState{) => _MaybeYesNoState{this.callback);
}

class _MaybeYesNoState extends State<MaybeYesNo> {
  int selected = -1;
  Function? callback;
  _MaybeYesNoState{this.callback);

  Widget customRadio{String text, int index){
    return OutlinedButton{
        onPressed: {){
          setState{{) {
            selected= index;
           // print{text);
            var s=  selected;
            callback!{s);
          });
        },
        child: Padding{
          padding: const EdgeInsets.only{top:11.0,bottom: 11),
          child: Text{
            text,
            style: TextStyle{
              color: {selected == index) ? AppTheme.primary : AppTheme.storyfontcolor,fontSize: 17
            ),
          ),
        ),
        style: ButtonStyle{
          shape: MaterialStateProperty.all{RoundedRectangleBorder{
              borderRadius: BorderRadius.circular{12),
              side: BorderSide{
                color: {selected == index) ?  AppTheme.primary1 : AppTheme.primary1,
              ))),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>{
                {Set<MaterialState> states) {
              if {states.contains{MaterialState.pressed))
                return Theme.of{context).colorScheme.primary.withOpacity{0.01);
              return AppTheme.primary1; // Use the component's default.
            },
          ),
        ));
  }
  @override
  Widget build{BuildContext context) {
    return Container{
      width: SizeConfig.screenWidth* 0.80,

      margin: EdgeInsets.symmetric{vertical: 1),

      //padding: EdgeInsets.only{left:50),
      child: Column{
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          customRadio{"No".tr, 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Yes".tr, 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"Maybe".tr, 2),

        ],
      ),
    );
  }
}






//    Easy/ Difficult/ very easy/ not so easy              Q-10

class EasyDifficult extends StatefulWidget {
  Function? callback;
  EasyDifficult{{Key? key, this.callback}) : super{key: key);

  @override
  State<EasyDifficult> createState{) => _EasyDifficultState{this.callback);
}

class _EasyDifficultState extends State<EasyDifficult> {
  int selected = -1;
  Function? callback;
  _EasyDifficultState{this.callback);

  Widget customRadio{String text, int index){
    return OutlinedButton{
        onPressed: {){
          setState{{) {
            selected= index;
           // print{text);
            var s=  selected;
            callback!{s);
          });
        },

        child: Padding{
          padding: const EdgeInsets.only{top:11.0,bottom: 11),
          child: Text{
            text,
            style: TextStyle{
              color: {selected == index) ? AppTheme.primary : AppTheme.storyfontcolor,fontSize: 17
            ),
          ),
        ),
        style: ButtonStyle{
          shape: MaterialStateProperty.all{RoundedRectangleBorder{
              borderRadius: BorderRadius.circular{12),
              side: BorderSide{
                color: {selected == index) ?  AppTheme.primary1 : AppTheme.primary1,
              ))),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>{
                {Set<MaterialState> states) {
              if {states.contains{MaterialState.pressed))
                return Theme.of{context).colorScheme.primary.withOpacity{0.01);
              return AppTheme.primary1; // Use the component's default.
            },
          ),
        ));
  }
  @override
  Widget build{BuildContext context) {
    return Container{
      width: SizeConfig.screenWidth* 0.80,

      margin: EdgeInsets.symmetric{vertical: 1),

      //padding: EdgeInsets.only{left:50),
      child: Column{
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          customRadio{"Not so easy".tr, 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Difficult".tr, 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"Easy".tr, 2),
          SizedBox{
            height: 15,
          ),
          customRadio{"Very easy".tr, 3),

        ],
      ),
    );
  }
}





// Evening/ morning/ Afternoon                     Q-4

class EveningMorning extends StatefulWidget {
  Function? callback;
  EveningMorning{{Key? key, this.callback}) : super{key: key);

  @override
  State<EveningMorning> createState{) => _EveningMorningState{this.callback);
}

class _EveningMorningState extends State<EveningMorning> {
  int selected = -1;
  Function? callback;
  _EveningMorningState{this.callback);

  Widget customRadio{String text, int index){
    return OutlinedButton{
        onPressed: {){
          setState{{) {
            selected= index;
            //print{text);
            var s=  selected;
            callback!{s);
          });
        },

        child: Padding{
          padding: const EdgeInsets.only{top:11.0,bottom: 11),
          child: Text{
            text,
            style: TextStyle{
              color: {selected == index) ? AppTheme.primary : AppTheme.storyfontcolor,fontSize: 17
            ),
          ),
        ),
        style: ButtonStyle{
          shape: MaterialStateProperty.all{RoundedRectangleBorder{
              borderRadius: BorderRadius.circular{12),
              side: BorderSide{
                color: {selected == index) ?  AppTheme.primary1 : AppTheme.primary1,
              ))),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>{
                {Set<MaterialState> states) {
              if {states.contains{MaterialState.pressed))
                return Theme.of{context).colorScheme.primary.withOpacity{0.01);
              return AppTheme.primary1; // Use the component's default.
            },
          ),
        ));
  }
  @override
  Widget build{BuildContext context) {
    return Container{
      width: SizeConfig.screenWidth* 0.80,
      margin: EdgeInsets.symmetric{vertical: 1),
      child: Column{
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          customRadio{"Evening".tr, 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Morning".tr, 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"Afternoon".tr, 2),

        ],
      ),
    );
  }
}





// Often/ very often/ sometimes/ never     Q-6,8,11

class OftenVeryOften extends StatefulWidget {
  Function? callback;
  OftenVeryOften{{Key? key, this.callback}) : super{key: key);

  @override
  State<OftenVeryOften> createState{) => _OftenVeryOftenState{this.callback);
}

class _OftenVeryOftenState extends State<OftenVeryOften> {
  int selected = -1;
  Function? callback;
  _OftenVeryOftenState{this.callback);

  Widget customRadio{String text, int index){
    return OutlinedButton{
        onPressed: {){
          setState{{) {
            selected= index;
           // print{text);
            var s=  selected;
            callback!{s);
          });
        },

        child: Padding{
          padding: const EdgeInsets.only{top:11.0,bottom: 11),
          child: Text{
            text,
            style: TextStyle{
              color: {selected == index) ? AppTheme.primary : AppTheme.storyfontcolor,fontSize: 17
            ),
          ),
        ),
        style: ButtonStyle{
          shape: MaterialStateProperty.all{RoundedRectangleBorder{
              borderRadius: BorderRadius.circular{12),
              side: BorderSide{
                color: {selected == index) ?  AppTheme.primary1 : AppTheme.primary1,
              ))),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>{
                {Set<MaterialState> states) {
              if {states.contains{MaterialState.pressed))
                return Theme.of{context).colorScheme.primary.withOpacity{0.01);
              return AppTheme.primary1; // Use the component's default.
            },
          ),
        ));
  }
  @override
  Widget build{BuildContext context) {
    return Container{
      width: SizeConfig.screenWidth* 0.80,

      margin: EdgeInsets.symmetric{vertical: 1),
      child: Column{
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          customRadio{"Sometimes".tr, 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Very Often".tr, 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"Often".tr, 2),
          SizedBox{
            height: 15,
          ),
          customRadio{"Never".tr, 3),

        ],
      ),
    );
  }
}





// Yes/ no/ not sure                              Q-5

class YesNoNotsure extends StatefulWidget {
  Function? callback;
  YesNoNotsure{{Key? key, this.callback}) : super{key: key);

  @override
  State<YesNoNotsure> createState{) => _YesNoNotsureState{this.callback);
}

class _YesNoNotsureState extends State<YesNoNotsure> {
  int selected = -1;
  Function? callback;
  _YesNoNotsureState{this.callback);

  Widget customRadio{String text, int index){
    return OutlinedButton{
        onPressed: {){
          setState{{) {
            selected= index;
            print{text);
            var s=  selected;
            callback!{s);
          });
        },

        child: Padding{
          padding: const EdgeInsets.only{top:11.0,bottom: 11),
          child: Text{
            text,
            style: TextStyle{
              color: {selected == index) ? AppTheme.primary : AppTheme.storyfontcolor,fontSize: 17
            ),
          ),
        ),
        style: ButtonStyle{
          shape: MaterialStateProperty.all{RoundedRectangleBorder{
              borderRadius: BorderRadius.circular{12),
              side: BorderSide{
                color: {selected == index) ?  AppTheme.primary1 : AppTheme.primary1,
              ))),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>{
                {Set<MaterialState> states) {
              if {states.contains{MaterialState.pressed))
                return Theme.of{context).colorScheme.primary.withOpacity{0.01);
              return AppTheme.primary1; // Use the component's default.
            },
          ),
        ));
  }
  @override
  Widget build{BuildContext context) {
    return Container{
      width: SizeConfig.screenWidth* 0.80,
      margin: EdgeInsets.symmetric{vertical: 1),
      child: Column{
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          customRadio{"Not sure".tr, 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Yes".tr, 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"No".tr, 2),

        ],
      ),
    );
  }
}





//     Long time/ Significant time/ For some time/ Not sad        Q-3

class Time extends StatefulWidget {
  Function? callback;
  Time{{Key? key, this.callback}) : super{key: key);

  @override
  State<Time> createState{) => _TimeState{this.callback);
}

class _TimeState extends State<Time> {
  int selected = -1;
  Function? callback;
  _TimeState{this.callback);

  Widget customRadio{String text, int index){
    return OutlinedButton{
        onPressed: {){
          setState{{) {
            selected= index;
           // print{text);
            var s=  selected;
            callback!{s);
          });
        },

        child: Padding{
          padding: const EdgeInsets.only{top:11.0,bottom: 11),
          child: Text{
            text,
            style: TextStyle{
              color: {selected == index) ? AppTheme.primary : AppTheme.storyfontcolor,fontSize: 17
            ),
          ),
        ),
        style: ButtonStyle{
          shape: MaterialStateProperty.all{RoundedRectangleBorder{
              borderRadius: BorderRadius.circular{12),
              side: BorderSide{
                color: {selected == index) ?  AppTheme.primary1 : AppTheme.primary1,
              ))),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>{
                {Set<MaterialState> states) {
              if {states.contains{MaterialState.pressed))
                return Theme.of{context).colorScheme.primary.withOpacity{0.01);
              return AppTheme.primary1; // Use the component's default.
            },
          ),
        ));
  }
  @override
  Widget build{BuildContext context) {
    return Container{
      width: SizeConfig.screenWidth* 0.80,

      margin: EdgeInsets.symmetric{vertical: 1),
      child: Column{
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          customRadio{"Long time".tr, 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Significant time".tr, 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"For some time".tr, 2),
          SizedBox{
            height: 15,
          ),
          customRadio{"Not sad".tr, 3),

        ],
      ),
    );
  }
}






//   Little bit/ Satisfactory/ Not at all/ Highly supportive      Q-7

class Support extends StatefulWidget {
  Function? callback;
  Support{{Key? key, this.callback}) : super{key: key);

  @override
  State<Support> createState{) => _SupportState{this.callback);
}

class _SupportState extends State<Support> {
  int selected = -1;
  Function? callback;
  _SupportState{this.callback);

  Widget customRadio{String text, int index){
    return OutlinedButton{
        onPressed: {){
          setState{{) {
            selected= index;
            //print{text);
            var s=  selected;
            callback!{s);
          });
        },

        child: Padding{
          padding: const EdgeInsets.only{top:11.0,bottom: 11),
          child: Text{
            text,
            style: TextStyle{
              color: {selected == index) ? AppTheme.primary : AppTheme.storyfontcolor,fontSize: 17
            ),
          ),
        ),
        style: ButtonStyle{
          shape: MaterialStateProperty.all{RoundedRectangleBorder{
              borderRadius: BorderRadius.circular{12),
              side: BorderSide{
                color: {selected == index) ?  AppTheme.primary1 : AppTheme.primary1,
              ))),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>{
                {Set<MaterialState> states) {
              if {states.contains{MaterialState.pressed))
                return Theme.of{context).colorScheme.primary.withOpacity{0.01);
              return AppTheme.primary1; // Use the component's default.
            },
          ),
        ));
  }
  @override
  Widget build{BuildContext context) {
    return Container{
      width: SizeConfig.screenWidth* 0.80,

      margin: EdgeInsets.symmetric{vertical: 1),
      child: Column{
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          customRadio{"Little bit".tr, 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Satisfactory".tr, 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"Not at all".tr, 2),
          SizedBox{
            height: 15,
          ),
          customRadio{"Highly supportive".tr, 3),
        ],
      ),
    );
  }
}