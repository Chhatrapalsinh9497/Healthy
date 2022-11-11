import 'package:healify/Theme/SizeConfig.dart';
import 'package:healify/screens/feel_relax/FeelRelax.dart';
import 'package:healify/screens/story_screen/StoryScreen.dart';
import 'package:healify/screens/test_results/deseasetest_result/DeseaseTestResult.dart';
import 'package:healify/screens/test_results/mental_health_test_result/MentalHealthTestResult.dart';
import 'package:healify/screens/test_screen/deseasetest/DeseaseTest.dart';
import 'package:healify/screens/test_screen/mental_health_test_screen/TestScreen.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/Theme/AppTheme.dart';
import 'package:shared_preferences/shared_preferences.dart';



class MentalBottom extends StatefulWidget {
  const MentalBottom{{Key? key, }) : super{key: key);

  @override
  State<MentalBottom> createState{) => _MentalBottomState{);
}

class _MentalBottomState extends State<MentalBottom> {

  @override
  Widget build{BuildContext context) {
    SizeConfig{).init{context);

    return Column{
      children: [
        //---------------------------------daily tracker heding ------------------------------
        // Container{
        //   padding: EdgeInsets.only{left: 10, right: 10),
        //
        //   width: SizeConfig.screenWidth - 20,
        //   child: Row{
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text{
        //         "You Shuld Try",
        //         style: GoogleFonts.poppins{
        //             color: Colors.black,
        //             fontSize: SizeConfig.screenWidth * 0.04,
        //             fontWeight: FontWeight.w500),
        //       ),
        //     ],
        //   ),
        // ),
        SizedBox{
          height: 15,
        ),

        //===========================yoga and sleep============================================
        Row{
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // sleep
            InkWell{
              onTap: {)
              {
                Navigator.push{context, MaterialPageRoute{builder: {context) => const FeelRelax{)),);
              },



              child: Container{
                margin: EdgeInsets.only{left: 10, right: 10, bottom: 20),
                width: MediaQuery.of{context).size.width * 0.42,
                height: SizeConfig.screenWidth * 0.4,
                decoration: BoxDecoration{
                    color: Colors.white,
                    image: DecorationImage{
                       // image: NetworkImage{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/Healify/Assets/feel_relax.png")
                        image: AssetImage{'assets/image/feel_relax.png')
                    ),
                    borderRadius: BorderRadius.all{Radius.circular{30)),
                    boxShadow: [
                      BoxShadow{
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        offset: Offset{0.0, 3.0),
                      ),

                    ]),


              ),
            ),


            //yoga
            InkWell{

              onTap: {)
              {
                Navigator.push{context, MaterialPageRoute{builder: {context) => const StoryScreen{)),);
              },
              child: Container{
                margin: EdgeInsets.only{left: 10, right: 10, bottom: 20),
                width: MediaQuery.of{context).size.width * 0.42,
                height: SizeConfig.screenWidth * 0.4,
                decoration: BoxDecoration{
                    color: Colors.white,
                    image: DecorationImage{
                        //image: NetworkImage{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/Healify/Assets/story_hope.png")
                        image: AssetImage{'assets/image/story_hope.png')
                    ),
                    borderRadius: BorderRadius.all{Radius.circular{30)),
                    boxShadow: [
                      BoxShadow{
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        offset: Offset{0.0, 3.0),
                      ),

                    ]),


              ),
            ),
          ],
        ),
      ],
    );
  }
}
