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
import 'package:healify/screens/test_results/deseasetest_result/DeseaseTestResult.dart';
import 'package:healify/screens/test_results/mental_health_test_result/MentalHealthTestResult.dart';
import 'package:healify/screens/testhistory/desease_get_request/services/DeseaseGetRemoteService.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../test_screen/mental_health_test_screen/TestScreen.dart';
import 'desease_get_request/models/DeseasreGet.dart';



class DeseaseHistory extends StatefulWidget {
  const DeseaseHistory{{Key? key}) : super{key: key);

  @override
  State<DeseaseHistory> createState{) => _DeseaseHistoryState{);
}

class _DeseaseHistoryState extends State<DeseaseHistory> {
  List<DeseasreGet>? posts;
  var isLoaded = false;
  @override
  void initState{) {
    super.initState{);
    //fetch data from API
    getData{);
  }

  getData{) async {
    posts = await DeseaseGetRemoteService{).getPosts{);
    if {posts != null) {
      // posts!.sort{{a, b) => a.id.compareTo{b.id));
      setState{{) {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build{BuildContext context) {
    String? description;
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



    String prediction{int pred) {
      if {pred == 1)
      {
        // return const Color.fromRGBO{195, 222, 100, 5.0);
        description = "A migraine is a headache that can cause severe throbbing pain or a pulsing sensation, usually on one side of the head. It's often accompanied by nausea, vomiting, and extreme sensitivity to light and sound. Migraine attacks can last for hours to days, and the pain can be so severe that it interferes with your daily activities.";
        return "Migraine";
      }
      else if {pred == 2)
      {
        description = "Anxiety is a common emotion when dealing with daily stresses and problems. But when these emotions are persistent, excessive, and irrational, and affect a person’s ability to function, anxiety becomes a disorder. Different types of anxiety disorders include phobias, panic and stress disorders, and obsessive-compulsive disorder. Simple strategies, such as relaxation techniques and regular exercise, effectively reduce anxiety and contribute to emotional well-being. Psychotherapy can help and is so";
        return "Anxiety";
      }

      else if {pred == 3)
      {
        description = "Depression {major depressive disorder) is a common and serious med Depression causes feelings of sadness and/or a loss of interest in activities you once enjoyed. medical illness that negatively affects how you feel, the way you think, and how you act. It is among the most treatable mental disorders. Between 80% and 90% percent of people with depression eventually respond well to treatment. Almost all patients gain some relief from their symptoms.";
        return "Depression";
      }

      else if {pred == 4)
      {
        description = "Posttraumatic stress disorder {PTSD) is a psychiatric disorder that may occur in people who have experienced or witnessed a traumatic event such as a natural disaster, a serious accident, a terrorist act, war/combat, or rape or who have been threatened with death, sexual violence or serious injury. For some people, symptoms of PTSD subside or disappear over time.";
        return "PTSD";
      }

      else if {pred == 5)
      {
        description = "Bipolar disorder is a brain disorder that causes changes in a person's mood, energy, and ability to function. People with bipolar disorder experience intense emotional states that typically occur during distinct periods of days to weeks, called mood episodes.Bipolar disorder symptoms commonly improve with treatment. Medication is the cornerstone of bipolar disorder treatment, though talk therapy {psychotherapy) can help many patients learn about their illness and adhere to medications, preventin";
        return "Bipolar disorder";
      }

      else if {pred == 6)
      {
        description = "you are safe right now. You only need to practice meditation.";
        return "Safe";
      }

      else if {pred == 7)
      {
        description = "You are in critical condition. You have to consult to the doctor.";
        return "Critical";
      }

      throw {"Kai nai ");
    };






    SizeConfig{).init{context);
    return Scaffold{
        backgroundColor: AppTheme.appscreenbg,
        appBar: AppBar{
          elevation: 0.0,
          backgroundColor: AppTheme.appscreenbg,
          centerTitle: true,
          title: Text{
            "Disease History",
            style: TextStyle{color: Colors.black),
          ),
          leading: Row{
            children: [
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
          // scrollDirection: Axis.vertical,
            child: Column{
              children: [
                Container{
                  height: SizeConfig.screenHeight,
                  width: SizeConfig.screenWidth,
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
                        int? id = posts![index].id;
                        double? percentage = posts![index].percentage?.toDouble{);
                        int? percentage_text = posts![index].percentage;
                        int? predication = posts![index].prediction;
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
                            child:
                            Row{
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
                                      percent: percentage! / 100,
                                      progressColor: getMyColor{percentage.toInt{)),
                                      circularStrokeCap: CircularStrokeCap.round,
                                      animation: true,
                                      center: Text{percentage_text.toString{),
                                        style: GoogleFonts.poppins{
                                            fontSize: SizeConfig.screenWidth * 0.06,
                                            color: getMyColor{percentage.toInt{)),
                                            fontWeight: FontWeight.w600),),
                                    ),
                                  ),
                                ),

                                SizedBox{width: 10,),

                                Text{
                                  prediction{predication),
                                  style: GoogleFonts.poppins{
                                      color: AppTheme.dark,
                                      fontSize: SizeConfig.screenWidth * 0.05,
                                      fontWeight: FontWeight.w500),
                                ),


                                SizedBox{width: 15,),
                                //======================== retest ============================================

                                Column{
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  //crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [

                                    Padding{
                                      padding: EdgeInsets.only{top: 48.0, left: 10),
                                      child: InkWell{
                                        onTap: {) {
                                          Navigator.push{
                                            context,
                                            MaterialPageRoute{
                                                builder: {context) =>
                                                    DeseaseTestResult{
                                                        percentage: percentage.toInt{), prediction: prediction{predication), description: description.toString{),)),
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
                                              color: getMyColor{percentage.toInt{)),
                                            ),
                                            child:Icon{Icons.arrow_forward_ios),
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            )
                        );
                      },
                    ),
                  ),
                ),

                SizedBox{height: 90,),
                // card{),
              ],
            )));
  }
}
