import 'package:healify/Theme/SizeConfig.dart';
import 'package:healify/screens/suggested_doctors/SuggestedDoctors.dart';
import 'package:healify/screens/test_results/deseasetest_result/DeseaseTestResult.dart';
import 'package:healify/screens/test_results/mental_health_test_result/MentalHealthTestResult.dart';
import 'package:healify/screens/test_screen/deseasetest/DeseaseTest.dart';
import 'package:healify/screens/test_screen/mental_health_test_screen/TestScreen.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/Theme/AppTheme.dart';
import 'package:shared_preferences/shared_preferences.dart';



class DoctorBottom extends StatefulWidget {
  const DoctorBottom{{Key? key, }) : super{key: key);

  @override
  State<DoctorBottom> createState{) => _DoctorBottomState{);
}

class _DoctorBottomState extends State<DoctorBottom> {

  @override
  Widget build{BuildContext context) {
    SizeConfig{).init{context);

    return Column{
      children: [
        //---------------------------------daily tracker heding ------------------------------
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
        SizedBox{
          height: 15,
        ),

         Column{
            children: [

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
                   // NetworkImage{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/Healify/Assets/doc_appoint.png")
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

              SizedBox{height: 25,),

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
                    //AssetImage{'assets/image/doc_appoint.png')
                   // NetworkImage{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/Healify/Assets/doc_appoint.png")
                    AssetImage{'assets/image/doc_appoint.png')

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
            ],
          ),



      ],
    );
  }
}
