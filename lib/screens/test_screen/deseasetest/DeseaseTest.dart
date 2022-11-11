import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/Theme/AppTheme.dart';
import 'package:healify/Theme/SizeConfig.dart';
import 'package:healify/components/NavBar.dart';
import 'package:healify/screens/test_results/deseasetest_result/DeseaseTestResult.dart';
import 'package:healify/screens/test_results/mental_health_test_result/MentalHealthTestResult.dart';
import 'package:healify/screens/test_screen/deseasetest/models/DeseasePostModel.dart';
import 'package:healify/screens/test_screen/mental_health_test_screen/models/MentalPostModel.dart';
import 'package:healify/url/Url.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../Shared_Result_Values/SharedVar.dart';

class DeseaseTest extends StatefulWidget {
  static String routeName = "/mentalhealthtestscreen";
  const DeseaseTest{{Key? key}) : super{key: key);

  @override
  State<DeseaseTest> createState{) => _DeseaseTestState{);
}

class _DeseaseTestState extends State<DeseaseTest> {

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






  DeseasePostModel test = DeseasePostModel{);



  @override
  Widget build{BuildContext context) {
    SizeConfig{).init{context);
    return Scaffold{
        appBar: AppBar{
        elevation: 0.0,

        backgroundColor:AppTheme.appscreenbg ,
        centerTitle: true,
        title:
        Text{"Know your mind!!".tr,
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
                "Disease assessment test".tr,textAlign: TextAlign.left,
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
                    "Over the last two weeks, how often have you been bothered by the following problems?\n\nPlease note, all the fields are required.".tr,
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
                      '1. Have you ever feel numbness in your body?'.tr,
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
                  test.percentage = -1;
                  test.numbness = val? 1:0;
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
                      '2. Have you ever feel headache for constantly 4hrs to 72hrs?'.tr,
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
                  test.headache = val? 1:0;
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
                      '3. Do you experience vision changes?'.tr,
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
                  test.vision_changes = val? 1:0;
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
                      '4. Have you experienced rapid breathing?'.tr,
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
                  test.breathing = val? 1:0;
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
                      '5. Do you notice an increase in heart rate?'.tr,
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
                  test.heart_rate = val? 1:0;
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
                      '6. Have you noticed that your body is sweating more?'.tr,
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
                  test.body_sweating = val? 1:0;
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
                      '7. Thoughts that you would be better off dead, or of hurting yourself'.tr,
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
                  test.thought = val? 1:0;
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
                      '8. Weight change or overeating'.tr,
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
                  test.weight = val? 1:0;
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
                      '9. Feeling down, depressed, or hopeless'.tr,
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
                  test.feeling = val? 1:0;
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
                      '10. Becoming easily Frustrated or irritable'.tr,
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
                  test.frustrated = val? 1:0;
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
                      '11. Had nightmares about the event{s) or thought about the event{s) when you did not want to?'.tr,
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
                  test.nightmares = val? 1:0;
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
                      '12. Have any traumatic events ever happened to you?'.tr,
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
                  test.traumetic = val? 1:0;
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
                      '13. You were so irritable that you shouted at people or started fights or arguments?'.tr,
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
                  test.shouted_fight = val? 1:0;
                });
              }),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '14. You were much more social or outgoing than usual, for example, you telephoned friends in the middle of the night?'.tr,
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
                  test.social = val? 1:0;
                });
              }),
            ),

            Container{
              margin: EdgeInsets.fromLTRB{19, MediaQuery.of{context).size.aspectRatio, 13, 20),
              child: Column{
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text{
                      '15. You felt so good or hyper that other people thought you were not your normal self or were so hyper that you got into trouble?'.tr,
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
                  test.hyper = val? 1:0;
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




                    void createReccomendationTest{) async {
                      final response = await http.post{
                        Url.deseasetest,
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




                        int percentage = pre["percentage"];
                        String prediction = pre["prediction"];
                        String description = pre["description"];

                        final prefs = await SharedPreferences.getInstance{);
                        await prefs.setInt{'deseaseresult', percentage);
                        await prefs.setString{'prediction', prediction);
                        await prefs.setString{'description', description);
                        //SharedVar{prediction);
                        int? deseaseresult = prefs.getInt{"deseaseresult");
                        print{"Shared pref is set");
                        print{deseaseresult);



                        //double testresult = SharedVar.mentalHealth /100;
                        //print{testresult);

                        Navigator.push{context, MaterialPageRoute{
                            builder: {context) =>  DeseaseTestResult{prediction: prediction,percentage:percentage,description: description,)));

                        //==================================================================================
                        print{percentage);
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
          customRadio{"Tier 2 {Capital cities Eg. Lucknow )", 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Tier 3 {Other cities/towns)", 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"Tier 1 {Delhi, Mumbai, Bangalore, Chennai, Kolkata)", 2),
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
          customRadio{"No", 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Yes", 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"Maybe", 2),

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
          customRadio{"Not so easy", 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Difficult", 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"Easy", 2),
          SizedBox{
            height: 15,
          ),
          customRadio{"Very easy", 3),

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
          customRadio{"Evening", 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Morning", 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"Afternoon", 2),

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
          customRadio{"Sometimes", 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Very Often", 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"Often", 2),
          SizedBox{
            height: 15,
          ),
          customRadio{"Never", 3),

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
          customRadio{"Not sure", 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Yes", 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"No", 2),

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
          customRadio{"Long time", 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Significant time", 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"For some time", 2),
          SizedBox{
            height: 15,
          ),
          customRadio{"Not sad", 3),

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
          customRadio{"Little bit", 0),
          SizedBox{
            height: 15,
          ),
          customRadio{"Satisfactory", 1),
          SizedBox{
            height: 15,
          ),
          customRadio{"Not at all", 2),
          SizedBox{
            height: 15,
          ),
          customRadio{"Highly supportive", 3),
        ],
      ),
    );
  }
}