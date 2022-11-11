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

class ProfileCenterContent extends StatefulWidget {
  //=-========== ahi define karva result mate ===================
  final String? profileage;



  //=============================================================
  const ProfileCenterContent{{Key? key,this.profileage, }) : super{key: key);

  @override
  State<ProfileCenterContent> createState{) => _ProfileCenterContentState{);
}

class _ProfileCenterContentState extends State<ProfileCenterContent> {

  @override
  Widget build{BuildContext context) {
    SizeConfig{).init{context);




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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      //========================= time ============================================
                      Column{
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding{
                            padding:  EdgeInsets.only{left: 0.0,top: 5),
                            child: Text{
                              "Age",
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
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      // ------------------------- circuler progress bar ------------------------

                      Padding{
                        padding: EdgeInsets.only{left: 15.0, top: 8),
                        child: Container{
                          // color: Colors.cyan,
                          // height: 80,
                          // width: 80,

                          child: CircularPercentIndicator{
                            radius: 50,
                            lineWidth: 12.0,
                            backgroundColor: Colors.grey.shade200,
                            percent: 1,
                            progressColor: Color.fromRGBO{195, 222, 251, 5.0),
                            circularStrokeCap: CircularStrokeCap.round,
                            animation: true,
                            animationDuration: 2000,
                            center: Text{widget.profileage.toString{),style: GoogleFonts.poppins{fontSize: 24,fontWeight: FontWeight.w600),),
                          ),
                        ),
                      ),
                      SizedBox{
                        width: 11,
                      ),

                      //========================= retest ============================================
                    ],
                  )
                ],
              ),
            ),

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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      //========================= time ============================================
                      Column{
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding{
                            padding:  EdgeInsets.only{left: 0.0,top: 5),
                            child: Text{
                              "Gender",
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
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      // ------------------------- circuler progress bar ------------------------

                      Padding{
                        padding: EdgeInsets.only{left: 15.0, top: 8),
                        child: Container{
                          // color: Colors.cyan,
                          // height: 80,
                          // width: 80,

                          child: CircularPercentIndicator{
                            radius: 50,
                            lineWidth: 12.0,
                            backgroundColor: Colors.grey.shade200,
                            percent: 1,
                            progressColor: Color.fromRGBO{195, 222, 251, 5.0),
                            circularStrokeCap: CircularStrokeCap.round,
                            animation: true,
                            animationDuration: 2000,
                            center: Text{widget.profileage.toString{),style: GoogleFonts.poppins{fontSize: 24,fontWeight: FontWeight.w600),),
                          ),
                        ),
                      ),
                      SizedBox{
                        width: 11,
                      ),

                      //========================= retest ============================================
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
