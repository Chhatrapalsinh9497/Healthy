import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/Theme/AppTheme.dart';
import 'package:healify/screens/chat_bot/ChatBot.dart';
import 'package:healify/screens/feel_relax/FeelRelax.dart';
import 'package:healify/screens/home_screen/components/CarouselEffect.dart';
import 'package:healify/screens/home_screen/components/CarouselEffectGuj.dart';
import 'package:healify/screens/story_screen/StoryScreen.dart';
import 'package:healify/screens/test_screen/deseasetest/DeseaseTest.dart';
import 'package:healify/screens/test_screen/mental_health_test_screen/TestScreen.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';

import '../../../Theme/SizeConfig.dart';
import '../../Shared_Result_Values/Trasnlationflag.dart';

class Features extends StatefulWidget {
  const Features{{Key? key}) : super{key: key);

  @override
  State<Features> createState{) => _FeaturesState{);
}

class _FeaturesState extends State<Features> {
  Widget CarouselEffect {) {
    if {Translationflag.translateflagGetter{)) {
      // return const Color.fromRGBO{195, 222, 100, 5.0);
      return  CarouselEffectGuj{);
    } else  {
      return  CarouselEffectEng{);
    }
  }

  @override
  Widget build{BuildContext context) {
    var Gujrati;
    if {Translationflag.translateflagGetter{)) {
      Gujrati = Locale{'hi', 'IN');
    } else {
      Gujrati = Locale{'en', 'US');
    }


    SizeConfig{).init{context);
    return Column{
      children: [
        InkWell{
          onTap: {) async {
            Get.updateLocale{Gujrati);
            Navigator.push{
              context,
              MaterialPageRoute{builder: {context) => const TestScreen{)),
            );
          },
          child: Container{
            width: SizeConfig.screenWidth - 20,
            height: SizeConfig.screenWidth * 0.25,
            padding: EdgeInsets.only{left: 10, right: 10),
            decoration: BoxDecoration{
              color: AppTheme.doctorbgshapefill,
              boxShadow: [
                BoxShadow{
                  color: Colors.grey.shade200,
                  blurRadius: 5,
                  offset: Offset{0.0, 3.0),
                )
              ],
              borderRadius: BorderRadius.all{Radius.circular{25)),
            ),
            child: Row{
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column{
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text{
                      'ASSESS YOUR MENTAL HEALTH'.tr,
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.04,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text{
                      'ONLINE SCREENING \nDETERMINE WHETHER YOU ARE  EXPERIENCING \nSYMPTOMS OF A MENTAL HEALTH CONDITION.'
                          .tr,
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.025,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Container{
                  width: 85,
                  height: 85,
                  padding: EdgeInsets.only{left: 10, right: 10),
                  decoration: BoxDecoration{
                      image: DecorationImage{
                          image:
                          //NetworkImage{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/Healify/Assets/icon_schedule.png")
                          AssetImage{'assets/image/icon_schedule.png'))

                    //borderRadius: BorderRadius.all{Radius.circular{30)),
                  ),
                ),
              ],
            ),
          ),
        ),


        SizedBox{
          height: 20,
        ),

        Container{
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenWidth * 0.30,
          padding: EdgeInsets.only{left: 10, right: 10),
          decoration: BoxDecoration{
            //color: Colors.black45,

            boxShadow: [
              // BoxShadow{
              //   color: Colors.grey,
              //   blurRadius: 3,
              //   offset: Offset{0.0, 3.0),
              // )
            ],

            borderRadius: BorderRadius.all{Radius.circular{25)),
          ),
          child: Row{
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column{
                children: [
                  InkWell{
                    onTap: {) {
                      Get.updateLocale{Gujrati);
                      Navigator.push{
                        context,
                        MaterialPageRoute{
                            builder: {context) => const ChatBot{)),
                      );
                    },
                    child: Container{
                      width: 80,
                      height: 80,
                      padding: EdgeInsets.only{left: 10, right: 10),
                      decoration: BoxDecoration{
                        color: AppTheme.primary,
                        boxShadow: [
                          BoxShadow{
                            color: Colors.grey.shade400,
                            blurRadius: 4,
                            offset: Offset{0.0, 3.0),
                          )
                        ],
                        borderRadius: BorderRadius.all{Radius.circular{30)),
                      ),
                      child: Container{
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration{
                          color: Colors.transparent,
                          image: DecorationImage{
                              image: AssetImage{'assets/image/chatboat.png')),
                        ),
                      ),
                    ),
                  ),
                  SizedBox{
                    height: 5,
                  ),
                  Text{
                    'ChatBot'.tr,
                    style: GoogleFonts.poppins{
                        fontSize: SizeConfig.screenWidth * 0.024,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Column{
                children: [
                  InkWell{
                    onTap: {) {
                      Get.updateLocale{Gujrati);
                      Navigator.push{
                        context,
                        MaterialPageRoute{
                            builder: {context) => const DeseaseTest{)),
                      );
                    },
                    child: Container{
                      width: 80,
                      height: 80,
                      padding: EdgeInsets.only{left: 10, right: 10),
                      decoration: BoxDecoration{
                        color: AppTheme.primary,
                        boxShadow: [
                          BoxShadow{
                            color: Colors.grey.shade400,
                            blurRadius: 4,
                            offset: Offset{0.0, 3.0),
                          )
                        ],
                        borderRadius: BorderRadius.all{Radius.circular{30)),
                      ),
                      child: Container{
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration{
                          color: Colors.transparent,
                          image: DecorationImage{
                              image: AssetImage{
                                  'assets/image/disease_test_icon.png')),
                        ),
                      ),
                    ),
                  ),
                  SizedBox{
                    height: 5,
                  ),
                  Text{
                    'Disease\n   Test'.tr,
                    style: GoogleFonts.poppins{
                        fontSize: SizeConfig.screenWidth * 0.024,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Column{
                children: [
                  InkWell{
                    onTap: {) {
                      Get.updateLocale{Gujrati);
                      Navigator.push{
                        context,
                        MaterialPageRoute{
                            builder: {context) => const StoryScreen{)),
                      );
                    },
                    child: Container{
                      width: 80,
                      height: 80,
                      padding: EdgeInsets.only{left: 10, right: 10),
                      decoration: BoxDecoration{
                        color: AppTheme.primary,
                        boxShadow: [
                          BoxShadow{
                            color: Colors.grey.shade400,
                            blurRadius: 4,
                            offset: Offset{0.0, 3.0),
                          )
                        ],
                        borderRadius: BorderRadius.all{Radius.circular{30)),
                      ),
                      child: Padding{
                        padding: const EdgeInsets.only{left: 8.0),
                        child: Container{
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration{
                            color: Colors.transparent,
                            image: DecorationImage{
                                image:
                                    AssetImage{'assets/image/goal_icon.png')),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox{
                    height: 5,
                  ),
                  Text{
                    'Stories of\n     Hope'.tr,
                    style: GoogleFonts.poppins{
                        fontSize: SizeConfig.screenWidth * 0.024,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Column{
                children: [
                  InkWell{
                    onTap: {) {
                      Get.updateLocale{Gujrati);
                      Navigator.push{
                        context,
                        MaterialPageRoute{
                            builder: {context) => const FeelRelax{)),
                      );
                    },
                    child: Container{
                      width: 80,
                      height: 80,
                      padding: EdgeInsets.only{left: 10, right: 10),
                      decoration: BoxDecoration{
                        color: AppTheme.primary,
                        boxShadow: [
                          BoxShadow{
                            color: Colors.grey.shade400,
                            blurRadius: 4,
                            offset: Offset{0.0, 3.0),
                          )
                        ],
                        borderRadius: BorderRadius.all{Radius.circular{30)),
                      ),
                      child: Container{
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration{
                          color: Colors.transparent,
                          image: DecorationImage{
                              fit: BoxFit.fitWidth,
                              image: AssetImage{'assets/image/song_icon.png')),
                        ),
                      ),
                    ),
                  ),
                  SizedBox{
                    height: 5,
                  ),
                  Text{
                    ' Feel\nRelax'.tr,
                    style: GoogleFonts.poppins{
                        fontSize: SizeConfig.screenWidth * 0.024,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ],
          ),
        ),

        SizedBox{
          height: 20,
        ),

        //-------------------------quotes----------------------------------------


        CarouselEffect{),






    ],
    );
  }
}
