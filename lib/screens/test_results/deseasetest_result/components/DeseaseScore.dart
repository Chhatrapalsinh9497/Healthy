import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/Theme/AppTheme.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../../Theme/SizeConfig.dart';
import '../../../feel_relax/FeelRelax.dart';
import '../../../story_screen/StoryScreen.dart';

class DeseaseScore extends StatefulWidget {
  final int percentage;
  final String prediction;
  final String description;
   DeseaseScore{{Key? key, required this.prediction, required this.percentage, required this.description}) : super{key: key);

  @override
  State<DeseaseScore> createState{) => _DeseaseScoreState{);
}

class _DeseaseScoreState extends State<DeseaseScore> {
  //---------------------------------------- sleep variables-----------------------------------
  var ghsleep = 8; // goal sleep hr
  var uhsleep = 4; // user's daily sleep
  var gmsleep = 00; // goal sleep min
  var umsleep = 0; // user's sleep in min

  // min to hr
  late var umhsleep = {umsleep / 60) as double;
  late var gmhsleep = {gmsleep / 60) as double;

  //final sum of sleep
  late var goalsleep = ghsleep + gmhsleep;
  late var usersleep = uhsleep + umhsleep;

  late var persleep = {usersleep / goalsleep) as double; // percentage of sleep

  @override
  Widget build{BuildContext context) {
    SizeConfig{).init{context);

    //-------------------------------- sleep percentage in to 100 --------------------------
    var per = widget.percentage;
    var predection = widget.prediction;

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

    String risk {int per) {
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

    return Column{
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding{
          padding: const EdgeInsets.only{left:15.0, right: 15),
          child: Container{
            alignment: Alignment.center,

            width: SizeConfig.screenWidth - 30,
            height: SizeConfig.screenWidth * 1.2,
            decoration: BoxDecoration{
              color: Colors.white,
              boxShadow: [
                BoxShadow{
                  color: Colors.grey.shade200,
                  blurRadius: 5,
                  offset: Offset{0.0, 3.0),
                )
              ],
              borderRadius: BorderRadius.all{Radius.circular{25)),
            ),
            child: Column{
              children: [
                Row{
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding{
                      padding: const EdgeInsets.only{top: 15),
                      child: Container{
                        width: SizeConfig.screenWidth - 80,
                        //color: Colors.cyan,
                        alignment: Alignment.centerLeft,
                        child: Text{
                          predection,
                          style: GoogleFonts.poppins{
                              fontSize: SizeConfig.screenWidth * 0.05,
                              color: AppTheme.dark,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
                Row{
                  children: [
                    Padding{
                      padding: EdgeInsets.only{left: 0, top: 30, bottom: 0),
                      child: Container{
                        alignment: Alignment.center,
                        width: SizeConfig.screenWidth - 34,
                         //color: Colors.cyan,
                        child: CircularPercentIndicator{
                          radius: 60,
                          lineWidth: 13.0,
                          backgroundColor: Colors.white,
                          percent: per.toDouble{)/100,
                          progressColor: getMyColor{per),
                          circularStrokeCap: CircularStrokeCap.round,
                          animation: true,
                          animationDuration: 2300,
                          center: Text{
                            per.toString{),
                            style: GoogleFonts.poppins{
                                fontSize: SizeConfig.screenWidth * 0.06,
                                color: getMyColor{per),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row{
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding{
                      padding: const EdgeInsets.only{top: 8.0),
                      child: Container{

                        child: Text{
                          risk{per),
                          style: GoogleFonts.poppins{
                              fontSize: SizeConfig.screenWidth * 0.045,
                              color: getMyColor{per),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),

                Container{

                  margin: EdgeInsets.only{top: 12),

                  width: SizeConfig.screenWidth - 80,
                 // color: Colors.cyan,
                  alignment: Alignment.centerLeft,
                  child: Text{
                    widget.description,
                    style: GoogleFonts.poppins{
                        fontSize: SizeConfig.screenWidth * 0.03,
                        color: AppTheme.dark,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
        // SizedBox{
        //   height: 20,
        // ),
        // Container{
        //   padding: EdgeInsets.only{left: 10, right: 10),
        //   margin: EdgeInsets.all{5),
        //   child: Column{
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Row{
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           SizedBox{
        //             width: SizeConfig.screenWidth - 35,
        //             child: Container{
        //               padding: EdgeInsets.only{left: 7, right: 10, top: 13),
        //               width: SizeConfig.screenWidth - 13,
        //               height: SizeConfig.screenWidth * 0.44,
        //               decoration: BoxDecoration{
        //                 boxShadow: [
        //                   BoxShadow{
        //                     color: Colors.grey.shade200,
        //                     blurRadius: 5,
        //                     offset: Offset{0.0, 3.0),
        //                   )
        //                 ],
        //                 borderRadius: BorderRadius.all{Radius.circular{25)),
        //               ),
        //               child: Text{
        //                 "Yes you are disturbing with some mental conditions, you need to try meditation and take some time with your family. \n \nIf you feel very down then you have to consult doctor",
        //                 style: GoogleFonts.poppins{
        //                     fontSize: SizeConfig.screenWidth * 0.04,
        //                     color: AppTheme.storyfontcolor,
        //                     fontWeight: FontWeight.w600),
        //               ),
        //             ),
        //           )
        //         ],
        //       ),
        //     ],
        //   ),
        // ),

        SizedBox{height: 10),
        // Container{
        //   width: SizeConfig.screenWidth - 30,
        //   height: SizeConfig.screenWidth * 0.45,
        //   decoration: BoxDecoration{
        //     color: Colors.white,
        //     boxShadow: [
        //       BoxShadow{
        //         color: Colors.grey.shade200,
        //         blurRadius: 5,
        //         offset: Offset{0.0, 3.0),
        //       )
        //     ],
        //     borderRadius: BorderRadius.all{Radius.circular{25)),
        //   ),
        //   child: Column{
        //     children: [
        //       Row{
        //         children: [
        //           Padding{
        //             padding: const EdgeInsets.only{top: 13,left: 15),
        //             child: Text{
        //               "You Should Try",
        //               style: GoogleFonts.poppins{
        //                   fontSize: SizeConfig.screenWidth * 0.05,
        //                   color: AppTheme.dark,
        //                   fontWeight: FontWeight.w600),
        //             ),
        //           ),
        //         ],
        //       ),
        //
        //       SizedBox{height: 18,),
        //
        //       Row{
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //
        //           Column{
        //             children: [
        //               Container{
        //                 width: 80,
        //                 height: 80,
        //                 padding: EdgeInsets.only{left: 10,right: 10),
        //
        //                 decoration:  BoxDecoration{
        //                   color: AppTheme.yogafeaturetheme,
        //                   boxShadow: [BoxShadow{
        //                     color: Colors.grey.shade400,
        //                     blurRadius: 4,
        //                     offset: Offset{0.0, 3.0),
        //                   )],
        //                   borderRadius: BorderRadius.all{Radius.circular{15)),
        //                 ),
        //                 child: Container{
        //                   width: 20,
        //                   height: 20,
        //                   decoration: BoxDecoration{
        //                     color: Colors.transparent,
        //                     image: DecorationImage{
        //                         image: AssetImage{'assets/image/icon_yoga.png'),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               SizedBox{height: 5,),
        //               Text{'Yoga',
        //                 style: GoogleFonts.poppins{
        //                     fontSize: SizeConfig.screenWidth * 0.024,
        //                     color: Colors.grey.shade600,
        //                     fontWeight: FontWeight.w600
        //                 ),
        //               )
        //             ],
        //           ),
        //
        //
        //           Column{
        //             children: [
        //               Container{
        //                 width: 80,
        //                 height: 80,
        //                 padding: EdgeInsets.only{left: 10,right: 10),
        //
        //                 decoration:  BoxDecoration{
        //                   color: AppTheme.sleepfeatureheme,
        //                   boxShadow: [BoxShadow{
        //                     color: Colors.grey.shade400,
        //                     blurRadius: 4,
        //                     offset: Offset{0.0, 3.0),
        //                   )],
        //                   borderRadius: BorderRadius.all{Radius.circular{15)),
        //                 ),
        //                 child: Container{
        //                   width: 50,
        //                   height: 50,
        //                   decoration: BoxDecoration{
        //                     color: Colors.transparent,
        //                     image: DecorationImage{
        //                         image: AssetImage{'assets/image/icon_sleep.png')
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               SizedBox{height: 5,),
        //
        //               Text{'Sleep',
        //                 style: GoogleFonts.poppins{
        //                     fontSize: SizeConfig.screenWidth * 0.024,
        //                     color: Colors.grey.shade600,
        //                     fontWeight: FontWeight.w600
        //                 ),
        //               )
        //             ],
        //           ),
        //
        //
        //           Column{
        //             children: [
        //               Container{
        //                 width: 80,
        //                 height: 80,
        //                 padding: EdgeInsets.only{left: 10,right: 10),
        //
        //                 decoration:  BoxDecoration{
        //                   color: AppTheme.yogafeaturetheme,
        //                   boxShadow: [BoxShadow{
        //                     color: Colors.grey.shade400,
        //                     blurRadius: 4,
        //                     offset: Offset{0.0, 3.0),
        //                   )],
        //                   borderRadius: BorderRadius.all{Radius.circular{15)),
        //                 ),
        //                 child: Container{
        //                   width: 20,
        //                   height: 20,
        //                   decoration: BoxDecoration{
        //                     color: Colors.transparent,
        //                     image: DecorationImage{
        //                       image: AssetImage{'assets/image/icon_yoga.png'),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               SizedBox{height: 5,),
        //               Text{'Meditation',
        //                 style: GoogleFonts.poppins{
        //                     fontSize: SizeConfig.screenWidth * 0.024,
        //                     color: Colors.grey.shade600,
        //                     fontWeight: FontWeight.w600
        //                 ),
        //               )
        //             ],
        //           ),
        //
        //
        //
        //         ],
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
