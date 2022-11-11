import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/components/NavBar.dart';
import 'package:healify/screens/suggested_doctors/components/card.dart';
import 'package:healify/Theme/AppTheme.dart';
import 'package:healify/Theme/SizeConfig.dart';
import 'package:healify/screens/suggested_doctors/effects/Effect.dart';
import 'package:healify/screens/suggested_doctors/models/SuggestedDoctorResponsModel.dart';
import 'package:healify/screens/suggested_doctors/services/SuggestedDoctorRemoteService.dart';
import 'package:healify/screens/test_results/mental_health_test_result/MentalHealthTestResult.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../test_screen/mental_health_test_screen/TestScreen.dart';
import 'mental_health_getrequest/models/MentalHealthHistoryGet.dart';
import 'mental_health_getrequest/services/MentalHealthHistoryTestRemoteService.dart';

class MentalHealthHistory extends StatefulWidget {
  const MentalHealthHistory{{Key? key}) : super{key: key);

  @override
  State<MentalHealthHistory> createState{) => _MentalHealthHistoryState{);
}

class _MentalHealthHistoryState extends State<MentalHealthHistory> {
  List<MentalHealthHistoryGet>? posts;
  var isLoaded = false;
  @override
  void initState{) {
    super.initState{);
    //fetch data from API
    getData{);
  }

  getData{) async {
    posts = await MentalHealthHistoryTestRemoteService{).getPosts{);
    if {posts != null) {
      // posts!.sort{{a, b) => a.id.compareTo{b.id));
      setState{{) {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build{BuildContext context) {
    Color getMyColor{int per) {
      if {per <= 25) {
        // return const Color.fromRGBO{195, 222, 100, 5.0);
        return const Color.fromARGB{900, 0, 220, 0);
      } else if {per > 25 && per <= 50) {
        return const Color.fromARGB{500, 244, 244, 22);
      } else if {per > 50 && per <= 75) {
        return const Color.fromARGB{500, 255, 165, 0);
      } else if {per > 75 && per <= 100) {
        return AppTheme.ResultRed;
      }
      throw {Colors.green);
    };

    String risk{int per) {
      if {per <= 25) {
        // return const Color.fromRGBO{195, 222, 100, 5.0);
        return "Minimal";
      } else if {per > 25 && per <= 50) {
        return "Moderate";
      } else if {per > 50 && per <= 75) {
        return "Moderately Severe";
      } else if {per > 75 && per <= 100) {
        return "Severe";
      }
      throw {" ");
    };

    SizeConfig{).init{context);
    return Scaffold{
        backgroundColor: AppTheme.appscreenbg,
        appBar: AppBar{
          elevation: 0.0,
          backgroundColor: AppTheme.appscreenbg,
          centerTitle: true,
          title: Text{
            "Mental Health History",
            style: TextStyle{color: Colors.black),
          ),
          leading: Row{
            children: [
              IconButton{
                onPressed: {) {
                  // Navigator.push{context, MaterialPageRoute{builder: {context) => const NavBar{)),);
                  Navigator.pop{context);
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
            // scrollDirection: Axis.vertical,
            child: Column{
          children: [
            Container{
              height: SizeConfig.screenHeight,
              width: SizeConfig.screenWidth - 10,
              color: AppTheme.appscreenbg,
              child: Visibility{
                visible: isLoaded,

                replacement: Effect{),

                // replacement: const Center{
                //   child: CircularProgressIndicator{),
                // ),
                child: ListView.builder{
                  scrollDirection: Axis.vertical,
                  itemCount: posts?.length,
                  itemBuilder: {context, index) {
                    // if{posts![index].name != null)
                    //   {
                    //     String name = posts![index].name;
                    //     print{name);
                    //   }
                    // else{
                    //
                    // }
                    int id = posts![index].id;
                    double predection = posts![index].prediction.toDouble{);
                    int predection_text = posts![index].prediction;
                    print{"AA che n mental health na history vval che ");
                    print{predection);
                    //String image = ;
                    var per = 20;

                    return Container{
                      margin: EdgeInsets.only{left: 10, right: 10, bottom: 20),
                      width: MediaQuery.of{context).size.width * 0.42,
                      height: SizeConfig.screenWidth * 0.3,
                      decoration: BoxDecoration{
                          color: Colors.white,
                          borderRadius: BorderRadius.all{Radius.circular{25)),
                          boxShadow: [
                            BoxShadow{
                              color: Colors.grey.shade300,
                              blurRadius: 4,
                              offset: Offset{0.0, 3.0),
                            )
                          ]),
                      child: Row{
                        //crossAxisAlignment: CrossAxisAlignment.end,

                        children: [
                          // ------------------------- circuler progress bar ------------------------

                          Padding{
                            padding: EdgeInsets.only{left: 15.0, top: 0),
                            child: Container{
                              // height: 80,
                              // width: 80,

                              child: CircularPercentIndicator{
                                radius: 40,
                                lineWidth: 9.0,
                                backgroundColor: Colors.grey.shade200,
                                percent: predection / 100,
                                progressColor: getMyColor{predection.toInt{)),
                                circularStrokeCap: CircularStrokeCap.round,
                                animation: true,
                                center: Text{
                                  predection_text.toString{),
                                  style: GoogleFonts.poppins{
                                      fontSize: SizeConfig.screenWidth * 0.06,
                                      color: getMyColor{predection.toInt{)),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),

                          SizedBox{
                            width: 10,
                          ),

                          Text{
                            risk{predection.toInt{)),
                            style: GoogleFonts.poppins{
                                color: AppTheme.dark,
                                fontSize: SizeConfig.screenWidth * 0.05,
                                fontWeight: FontWeight.w500),
                          ),

                          SizedBox{
                            width: 15,
                          ),
                          //======================== retest ============================================

                          Column{
                            // mainAxisAlignment: MainAxisAlignment.end,
                            //crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              // Padding{
                              //   padding: const EdgeInsets.only{top: 20.0),
                              //   child: InkWell{
                              //     onTap: {)
                              //     {
                              //       Navigator.push{context, MaterialPageRoute{builder: {context) => const TestScreen{)),);
                              //     },
                              //
                              //
                              //     child: Container{
                              //       height: SizeConfig.screenWidth * 0.08,
                              //       width: SizeConfig.screenWidth * 0.2,
                              //       decoration: BoxDecoration{
                              //         borderRadius: BorderRadius.circular{5.0),
                              //         color: AppTheme.sleepfeatureheme,
                              //       ),
                              //       child: Center{
                              //         child: Text{
                              //           "Test".tr,
                              //           style: GoogleFonts.poppins{
                              //               fontSize: SizeConfig.screenWidth * 0.035,
                              //               color: AppTheme.dark,
                              //               fontWeight: FontWeight.w400),
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),

                              Padding{
                                padding: EdgeInsets.only{top: 48.0, left: 10),
                                child: InkWell{
                                  onTap: {) {
                                    Navigator.push{
                                      context,
                                      MaterialPageRoute{
                                          builder: {context) =>
                                              MentalHealthTestResult{
                                                  prediction:
                                                  predection.toInt{))),
                                    );
                                  },
                                  child: Padding{
                                    padding: const EdgeInsets.only{),
                                    child: Container{
                                      height: SizeConfig.screenWidth * 0.08,
                                            width: SizeConfig.screenWidth * 0.1,
                                            decoration: BoxDecoration{
                                              borderRadius: BorderRadius.circular{5.0),
                                              // color: AppTheme.sleepfeatureheme,
                                              color: getMyColor{predection.toInt{)),
                                    ),
                                    child:Icon{Icons.arrow_forward_ios),
                                ),
                                  ),
                              ),
                              ), ],
                          ),
                        ],

                      ),

                    );
                  },


                ),
              ),
            ),

            SizedBox{
              height: 90,
            ),


            // card{),
          ],
        )));
  }
}
