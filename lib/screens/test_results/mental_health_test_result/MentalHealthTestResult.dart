
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/components/NavBar.dart';
import 'package:healify/screens/home_screen/components/DailyTracker.dart';
import 'package:healify/screens/home_screen/components/Features.dart';
import 'package:healify/screens/home_screen/components/TopPoster.dart';
import 'package:healify/screens/suggested_doctors/SuggestedDoctors.dart';
import 'package:healify/screens/test_results/mental_health_test_result/components/DoctorBottom.dart';
import 'package:healify/screens/test_results/mental_health_test_result/components/MentalBottom.dart';
import 'package:healify/screens/test_results/mental_health_test_result/components/MentalHealthScore.dart';
import 'package:healify/screens/test_screen/deseasetest/DeseaseTest.dart';
import '../../../Theme/SizeConfig.dart';
import '../../../Theme/AppTheme.dart';
import 'package:confetti/confetti.dart';


class MentalHealthTestResult extends StatefulWidget {
  static String routeName = "/home";
  final int prediction;
  const MentalHealthTestResult{{Key? key, required this.prediction}) : super{key: key);

  @override
  State<MentalHealthTestResult> createState{) => _MentalHealthTestResultState{);
}

class _MentalHealthTestResultState extends State<MentalHealthTestResult> {

//<------------------------Animation Mate ---------------------------->
  late ConfettiController controllerTopCenter;
  @override
  void initState{) {
    // TODO: implement initState
    super.initState{);
    setState{{) {
      initController{);
      controllerTopCenter.play{);
    });

  }

  void initController{) {
    controllerTopCenter =
        ConfettiController{duration: const Duration{seconds: 1));
  }




  @override
  Widget build{BuildContext context) {

    Widget Bottom {int per) {
      if {widget.prediction >= 50) {
        // return const Color.fromRGBO{195, 222, 100, 5.0);
        return  DoctorBottom{);
      } else if {widget.prediction < 50) {
        return  MentalBottom{);
      }
      else {)
      {
        return MentalBottom{);
      };
      throw {DoctorBottom{));
    };

    SizeConfig{).init{context);
    Widget animation1 {int per) {
      if {widget.prediction <= 50) {
        // return const Color.fromRGBO{195, 222, 100, 5.0);
        return  buildConfettiWidget{controllerTopCenter, pi / 1);
      } else  {
        return  Container{
          color: Colors.transparent,

        );
      }
    };

    Widget animation2 {int per) {
      if {widget.prediction <= 50) {
        // return const Color.fromRGBO{195, 222, 100, 5.0);
        return  buildConfettiWidget{controllerTopCenter, pi / 1);
      } else  {
        return  Container{
          color: Colors.transparent,

        );
      }
    };


    return  Scaffold{
      appBar: AppBar{
        elevation: 0.0,
        centerTitle: true,
        title: Text{"Assessment Result",
            style: GoogleFonts.poppins{
              color: Colors.black,
            )),
        leading: Row{
          children: [
            IconButton{
              onPressed: {) {
                Navigator.push{context, MaterialPageRoute{builder: {context) => const NavBar{)),);
              },
              icon: Icon{
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: AppTheme.light,
      ),
        body:SingleChildScrollView{
          scrollDirection: Axis.vertical,
          child: Stack{
            children: [
              Column{
                children: [

                  Padding{
                    padding: const EdgeInsets.only{top: 20,left: 2),
                    child: MentalHealthScore{prediction: widget.prediction,),
                  ),


                  SizedBox{height: 20,),

                  Container{
                    padding: EdgeInsets.only{left: 10, right: 10),

                    width: SizeConfig.screenWidth - 20,
                    child: Row{
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text{
                          "You Shuld Try",
                          style: GoogleFonts.poppins{
                              color: Colors.black,
                              fontSize: SizeConfig.screenWidth * 0.04,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),

                  //===========================test======================================

                  SizedBox{height: 20,),

                  InkWell{
                    onTap: {)
                    {
                      Navigator.push{context, MaterialPageRoute{builder: {context) => const DeseaseTest{)),);
                    },
                    child: Container{
                      width: SizeConfig.screenWidth - 30,
                      height: SizeConfig.screenWidth * 0.45,
                      decoration: BoxDecoration{
                        // color: Colors.blue,
                        image: DecorationImage{image:
                        //AssetImage{'assets/image/doc_appoint.png')
                        //NetworkImage{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/Healify/Assets/disease_test.png")
                        AssetImage{'assets/image/disease_test.png')

                        ),
                        boxShadow: [
                          BoxShadow{
                            color: Colors.grey.shade200,
                            blurRadius: 5,
                            offset: Offset{0.0, 3.0),
                          )
                        ],
                        borderRadius: BorderRadius.all{Radius.circular{25)),
                      ),

                    ),
                  ),

                  //===========================music story======================================

                  MentalBottom{),

                  //=========================== doctor ======================================

                  InkWell{
                    onTap: {)
                    {
                      Navigator.push{context, MaterialPageRoute{builder: {context) => const SuggestedDoctors{)),);
                    },
                    child: Container{
                      width: SizeConfig.screenWidth - 30,
                      height: SizeConfig.screenWidth * 0.45,
                      decoration: BoxDecoration{
                        // color: Colors.blue,
                        image: DecorationImage{image:
                        AssetImage{'assets/image/doc_appoint.png')
                        //NetworkImage{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/Healify/Assets/doc_appoint.png")

                        ),
                        boxShadow: [
                          BoxShadow{
                            color: Colors.grey.shade200,
                            blurRadius: 5,
                            offset: Offset{0.0, 3.0),
                          )
                        ],
                        borderRadius: BorderRadius.all{Radius.circular{25)),
                      ),

                    ),
                  ),

                  SizedBox{height: 29,),
                  //Bottom{widget.prediction)
                ],
              ),
              animation1{widget.prediction),
              animation2{widget.prediction),
              ],
          ),
        )
    );
  }


  Align buildConfettiWidget{controller, double blastDirection) {
    return Align{
      alignment: Alignment.center,
      child: ConfettiWidget{
        maximumSize: Size{20, 20),
        shouldLoop: false,
        confettiController: controller,
        blastDirection: blastDirection,
        blastDirectionality: BlastDirectionality.explosive,
        // maxBlastForce: 10, // set a lower max blast force
        // minBlastForce: 5, // set a lower min blast force
        emissionFrequency: 0,
        numberOfParticles: 200, // a lot of particles at once
        gravity: 0.19,
          colors: const [
            Colors.deepOrange,
            Colors.pink,
            Colors.yellowAccent,
            Colors.orange,
            Colors.purple
          ], // manually specify the colors to be used
      ),
    );
  }
}

