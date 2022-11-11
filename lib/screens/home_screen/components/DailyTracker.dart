import 'package:get/get.dart';
import 'package:healify/screens/test_results/deseasetest_result/DeseaseTestResult.dart';
import 'package:healify/screens/test_results/mental_health_test_result/MentalHealthTestResult.dart';
import 'package:healify/screens/test_screen/deseasetest/DeseaseTest.dart';
import 'package:healify/screens/test_screen/mental_health_test_screen/TestScreen.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/Theme/AppTheme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Theme/SizeConfig.dart';
import '../../Shared_Result_Values/SharedVar.dart';

class DailyTracker extends StatefulWidget {
  //=-========== ahi define karva result mate ===================
  final int? mentalhealthresult;
  final int? percentage;
  final String? prediction;
  final String? description;



  //=============================================================
  const DailyTracker{{Key? key, required this.mentalhealthresult, required this.percentage, required this.prediction, required this.description}) : super{key: key);

  @override
  State<DailyTracker> createState{) => _DailyTrackerState{);
}

class _DailyTrackerState extends State<DailyTracker> {

  //---------------------------------------- MentalHealth variables-----------------------------------

  late var mental;

  //---------------------- any variables-------------------------------------

  late var desease ; // percentage of yoga




  @override
  Widget build{BuildContext context) {
    SizeConfig{).init{context);
    print{widget.mentalhealthresult);
    print{"this is uper nu mental health result");

//============================= if else for all var ====================================

    //--------------------- if else for mental-----------------------------
    if {widget.mentalhealthresult != null) {
      mental = {widget.mentalhealthresult) ;
      mental = mental / 100;
      print{mental);
      print{"This is Value Of mental In if Block");
    } else {
      mental = 0.0;
      print{mental);
      print{"This is Value Of mental In else Block");
    }
    //----------------------------if else for desease------------------------------------------
    if {widget.percentage != null) {
      desease = {widget.percentage) ;
      desease = desease / 100;
      print{desease);
      print{"This is Value Of desease In if Block");
    } else {
      desease = 0.0;
      print{desease);
      print{"This is Value Of desease In else Block");
    }


//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

    //-------------------------------- mental percentage in to 100 --------------------------
    var permental = {mental * 100).toInt{);
    //------------------------------- any percentage in to 100 -----------------------------
    var perany = {desease * 100).toInt{);

    return Column{
      children: [
        //---------------------------------daily tracker heding ------------------------------
        Container{
          padding: EdgeInsets.only{left: 10, right: 10),
          //color: Colors.black45,
          width: SizeConfig.screenWidth - 20,
          child: Row{
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text{
                "Daily Tracker ".tr,
                style: GoogleFonts.poppins{
                    color: Colors.black,
                    fontSize: SizeConfig.screenWidth * 0.04,
                    fontWeight: FontWeight.w500),
              ),
              InkWell{
                onTap: {) {
                  // Navigator.push{context,
                  //   MaterialPageRoute{
                  //     builder: {
                  //         BuildContext context) =>  CustomNotification{),
                  //   ),);
                },
                child: Row{
                  children: [
                    IconButton{
                        onPressed: {) {},
                        icon: Icon{
                          size: 20.0,
                          Icons.bar_chart,
                          color: AppTheme.primary,
                        )),
                    // Text{
                    //   "INSIGHTS".tr,
                    //   style: GoogleFonts.poppins{
                    //     color: AppTheme.primary,
                    //     fontSize: SizeConfig.screenWidth * 0.04,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox{
          height: 15,
        ),

        //===========================yoga and sleep============================================
        Row{
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // sleep
            Container{
              margin: EdgeInsets.only{left: 10, right: 10, bottom: 20),
              width: MediaQuery.of{context).size.width * 0.42,
              height: SizeConfig.screenWidth * 0.4,
              decoration: BoxDecoration{
                  color: Colors.white,
                  borderRadius: BorderRadius.all{Radius.circular{30)),
                  boxShadow: [
                    BoxShadow{
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: Offset{0.0, 3.0),
                    )
                  ]),
              child: Column{
                children: [
                  Row{
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // ------------------------- logo sleep ------------------------
                      // Padding{
                      //   padding: EdgeInsets.only{left: 15.0, top: 15),
                      //   child: Container{
                      //     width: 50,
                      //     height: 50,
                      //     padding: EdgeInsets.only{left: 10, right: 10),
                      //     decoration: BoxDecoration{
                      //       color: AppTheme.sleepfeatureheme,
                      //       boxShadow: [
                      //         BoxShadow{
                      //           color: Colors.grey.shade300,
                      //           blurRadius: 6,
                      //           offset: Offset{0.0, 2.0),
                      //         )
                      //       ],
                      //       borderRadius: BorderRadius.all{Radius.circular{17)),
                      //     ),
                      //     child: Container{
                      //       width: 10,
                      //       height: 10,
                      //       decoration: BoxDecoration{
                      //         color: Colors.transparent,
                      //         image: DecorationImage{
                      //             fit: BoxFit.fitWidth,
                      //             image: AssetImage{
                      //                 'assets/image/icon_sleep.png')),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox{
                      //   width: 11,
                      // ),

                      //========================= time ============================================
                      Column{
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding{
                            padding:  EdgeInsets.only{left: 15.0,top: 25),
                            child: Text{
                              "Mental Health ".tr,
                              style: GoogleFonts.poppins{
                                  color: AppTheme.dark,
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row{
                    //crossAxisAlignment: CrossAxisAlignment.end,

                    children: [
                      // ------------------------- circuler progress bar ------------------------

                      Padding{
                        padding: EdgeInsets.only{left: 15.0, top: 15),
                        child: Container{
                          // color: Colors.cyan,
                          // height: 80,
                          // width: 80,

                          child: CircularPercentIndicator{
                            radius: 30,
                            lineWidth: 9.0,
                            backgroundColor: Colors.grey.shade200,
                            percent: mental,
                            progressColor: Color.fromRGBO{195, 222, 251, 5.0),
                            circularStrokeCap: CircularStrokeCap.round,
                            animation: true,
                            center: Text{permental.toString{)),
                          ),
                        ),
                      ),
                      SizedBox{
                        width: 11,
                      ),

                      //========================= retest ============================================

                      Column{
                        // mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Padding{
                            padding: const EdgeInsets.only{top: 13.0),
                            child: InkWell{
                              onTap: {)
                              {
                                Navigator.push{context, MaterialPageRoute{builder: {context) => const TestScreen{)),);
                              },


                              child: Container{
                                height: SizeConfig.screenWidth * 0.055,
                                width: SizeConfig.screenWidth * 0.16,
                                decoration: BoxDecoration{
                                  borderRadius: BorderRadius.circular{5.0),
                                  color: AppTheme.sleepfeatureheme,
                                ),
                                child: Center{
                                  child: Text{
                                    "Test".tr,
                                    style: GoogleFonts.poppins{
                                        fontSize: SizeConfig.screenWidth * 0.035,
                                        color: AppTheme.dark,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                          ),


                          Padding{
                              padding:  EdgeInsets.only{top: 13.0),
                              child: InkWell{

                                onTap: {)
                                {
                                  Navigator.push{context, MaterialPageRoute{builder: {context) =>  MentalHealthTestResult{prediction: widget.mentalhealthresult as int)),);
                                },
                                child: Container{
                                  height: SizeConfig.screenWidth * 0.055,
                                  width: SizeConfig.screenWidth * 0.16,
                                  decoration: BoxDecoration{
                                    borderRadius: BorderRadius.circular{5.0),
                                    color: AppTheme.sleepfeatureheme,
                                  ),
                                  child: Center{
                                    child: Text{
                                      "View All".tr,
                                      style: GoogleFonts.poppins{
                                          fontSize: SizeConfig.screenWidth * 0.035,
                                          color: AppTheme.dark,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            //yoga
            Container{
              margin: EdgeInsets.only{left: 10, right: 10, bottom: 20),
              width: MediaQuery.of{context).size.width * 0.42,
              height: SizeConfig.screenWidth * 0.4,
              decoration: BoxDecoration{
                  color: Colors.white,
                  borderRadius: BorderRadius.all{Radius.circular{30)),
                  boxShadow: [
                    BoxShadow{
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: Offset{0.0, 3.0),
                    )
                  ]),
              child: Column{
                children: [
                  Row{
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // ------------------------- logo sleep ------------------------
                      // Padding{
                      //   padding: EdgeInsets.only{left: 15.0, top: 15),
                      //   child: Container{
                      //     width: 50,
                      //     height: 50,
                      //     padding: EdgeInsets.only{left: 10, right: 10),
                      //     decoration: BoxDecoration{
                      //       color: AppTheme.yogafeaturetheme,
                      //       boxShadow: [
                      //         BoxShadow{
                      //           color: Colors.grey.shade300,
                      //           blurRadius: 6,
                      //           offset: Offset{0.0, 2.0),
                      //         )
                      //       ],
                      //       borderRadius: BorderRadius.all{Radius.circular{17)),
                      //     ),
                      //     child: Container{
                      //       width: 10,
                      //       height: 10,
                      //       decoration: BoxDecoration{
                      //         color: Colors.transparent,
                      //         image: DecorationImage{
                      //             fit: BoxFit.fitWidth,
                      //             image:
                      //                 AssetImage{'assets/image/icon_yoga.png')),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox{
                      //   width: 11,
                      // ),

                      //========================= time ============================================

                          Padding{
                            padding:  EdgeInsets.only{top:25.0,left: 15),
                              child: Text{
                                textAlign: TextAlign.left,

                                widget.prediction.toString{),
                                style: GoogleFonts.poppins{
                                    color: AppTheme.dark,
                                    fontSize: SizeConfig.screenWidth * 0.04,
                                    fontWeight: FontWeight.w500),
                              ),

                          ),


                    ],
                  ),
                  Row{
                    //crossAxisAlignment: CrossAxisAlignment.end,

                    children: [
                      // ------------------------- circuler progress bar ------------------------

                      Padding{
                        padding: EdgeInsets.only{left: 15.0, top: 15),
                        child: Container{
                          // color: Colors.cyan,
                          // height: 80,
                          // width: 80,

                          child: CircularPercentIndicator{
                            radius: 30,
                            lineWidth: 9.0,
                            backgroundColor: Colors.grey.shade200,
                            percent: desease,
                            progressColor: AppTheme.yogafeaturetheme,
                            circularStrokeCap: CircularStrokeCap.round,
                            animation: true,
                            center: Text{perany.toString{)),
                          ),
                        ),
                      ),
                      SizedBox{
                        width: 11,
                      ),

                      //========================= time ============================================

                      Column{
                        // mainAxisAlignment: MainAxisAlignment.end,
                        //crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          InkWell{
                            onTap: {)
                            {
                              Navigator.push{context, MaterialPageRoute{builder: {context) => const DeseaseTest{)),);
                            },
                            child: Padding{
                              padding:  EdgeInsets.only{top: 13.0),
                              child: Container{
                                height: SizeConfig.screenWidth * 0.055,
                                width: SizeConfig.screenWidth * 0.16,
                                decoration: BoxDecoration{
                                  borderRadius: BorderRadius.circular{5.0),
                                  color: AppTheme.yogafeaturetheme,
                                ),
                                child: Center{
                                  child: Text{
                                    "Test".tr,
                                    style: GoogleFonts.poppins{
                                        fontSize: SizeConfig.screenWidth * 0.035,
                                        color: AppTheme.dark,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox{height: 13,),

                          InkWell{
                            onTap: {)
                            {
                              Navigator.push{context, MaterialPageRoute{builder: {context) =>  DeseaseTestResult{prediction: widget.prediction.toString{), percentage: widget.percentage as int, description: widget.description.toString{))),);
                            },
                            child: Padding{
                              padding:  EdgeInsets.only{top: 0.0),
                              child: Container{
                                height: SizeConfig.screenWidth * 0.055,
                                width: SizeConfig.screenWidth * 0.16,
                                decoration: BoxDecoration{
                                  borderRadius: BorderRadius.circular{5.0),
                                  color: AppTheme.yogafeaturetheme,
                                ),
                                child: Center{
                                  child: Text{
                                    "View All".tr,
                                    style: GoogleFonts.poppins{
                                        fontSize: SizeConfig.screenWidth * 0.035,
                                        color: AppTheme.dark,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
