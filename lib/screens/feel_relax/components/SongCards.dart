
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/Theme/AppTheme.dart';
import 'package:healify/screens/feel_relax/components/PlayButton.dart';
import 'package:healify/screens/feel_relax/components/PlayButton/AnxityPlayButton.dart';
import 'package:lottie/lottie.dart';

import '../../../Theme/SizeConfig.dart';


class SongCards extends StatefulWidget {

  const SongCards{{Key? key}) : super{key: key);

  @override
  State<SongCards> createState{) => _SongCardsState{);
}

class _SongCardsState extends State<SongCards> {
  @override
  Widget build{BuildContext context) {
    SizeConfig{).init{context);
    final AudioPlayer player = AudioPlayer{);

    return Column{
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //=========================  Anxiety ===============================
        Padding{
          padding: const EdgeInsets.all{8.0),
          child: Container{
            width: SizeConfig.screenWidth - 20 ,
            height: SizeConfig.screenWidth * 0.29,
            padding: EdgeInsets.only{left: 10,right: 10),
            decoration:  BoxDecoration{
              color: Colors.white,
              boxShadow: [BoxShadow{
                color: Colors.grey.shade400,
                // color: Colors.red,
                blurRadius: 10,
                offset: Offset{3.0, 5.0),
              )],
              borderRadius: BorderRadius.all{Radius.circular{25)),
            ),
            child: Row{
              children: [
                Container{
                  width: 95,
                  height: 95,
                  decoration:  BoxDecoration{
                      image: DecorationImage{image: NetworkImage{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/Healify/illustration/illustration_anxiety.png"))
                    //borderRadius: BorderRadius.all{Radius.circular{30)),
                  ),
                ),

                SizedBox{
                  width: 25,
                ),
                Column{
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text{
                      'Anxitey   ',
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.06,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Text{
                      '2 Minutes',
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.031,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
                SizedBox{width: 40,),
                // Container{
                //     height: 100,
                //     width: 90,
                //     // child: Lottie.asset{'assets/animation/music.json')),
                //   child:
                //   Lottie.network{
                //     'https://assets2.lottiefiles.com/packages/lf20_6K4Hjs.json',
                //     repeat:  true,
                //     reverse: false,
                //     animate: true,
                //   ),
                // ),
                SizedBox{
                  height: 65,
                  width: 65,
                  child: PlayButton{
                    pauseIcon: Icon{Icons.pause, color: Colors.black, size: 50),
                    playIcon: Icon{Icons.play_arrow, color: Colors.black, size: 50),
                    onPressed: {) async {
                        // await player.play{
                        //     "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3");
                        //
                    }, songurl1: "https://aryapatel2110.github.io/ChatBot/audio/Anxiety.mp3",
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox{height: 5,),


        //========================  Depression  =============================
        Padding{
          padding: const EdgeInsets.all{8.0),
          child: Container{
            width: SizeConfig.screenWidth - 20 ,
            height: SizeConfig.screenWidth * 0.29,
            padding: EdgeInsets.only{left: 10,right: 10),
            decoration:  BoxDecoration{
              color: Colors.white,
              boxShadow: [BoxShadow{
                color: Colors.grey.shade400,
                // color: Colors.red,
                blurRadius: 10,
                offset: Offset{3.0, 5.0),
              )],
              borderRadius: BorderRadius.all{Radius.circular{25)),
            ),
            child: Row{
              children: [
                Container{
                  width: 95,
                  height: 95,
                  decoration:  BoxDecoration{
                      image: DecorationImage{image: NetworkImage{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/Healify/illustration/illustration_depression.png"))
                    //borderRadius: BorderRadius.all{Radius.circular{30)),
                  ),
                ),

                SizedBox{
                  width: 15,
                ),
                Column{
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text{
                      'Depression',
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.06,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Text{
                      '2 Minutes',
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.031,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
                SizedBox{width: 25,),
                // Container{
                //     height: 100,
                //     width: 90,
                //     // child: Lottie.asset{'assets/animation/music.json')),
                //   child:
                //   Lottie.network{
                //     'https://assets2.lottiefiles.com/packages/lf20_6K4Hjs.json',
                //     repeat:  true,
                //     reverse: false,
                //     animate: true,
                //   ),
                // ),

                SizedBox{
                  height: 65,
                  width: 65,
                  child: PlayButton{
                    pauseIcon: Icon{Icons.pause, color: Colors.black, size: 50),
                    playIcon: Icon{Icons.play_arrow, color: Colors.black, size: 50),
                    onPressed: {) async {

                      // await player.play{
                      //     "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3");
                      //
                    }, songurl1: 'https://aryapatel2110.github.io/ChatBot/audio/Depression1.mp3',
                  ),
                ),





              ],
            ),
          ),
        ),
        SizedBox{height: 5,),

        //=========================  Irritation =============================
        Padding{
          padding: const EdgeInsets.all{8.0),
          child: Container{
            width: SizeConfig.screenWidth - 20 ,
            height: SizeConfig.screenWidth * 0.29,
            padding: EdgeInsets.only{left: 10,right: 10),
            decoration:  BoxDecoration{
              color: Colors.white,
              boxShadow: [BoxShadow{
                color: Colors.grey.shade400,
                // color: Colors.red,
                blurRadius: 10,
                offset: Offset{3.0, 5.0),
              )],
              borderRadius: BorderRadius.all{Radius.circular{25)),
            ),
            child: Row{
              children: [
                Container{
                  width: 95,
                  height: 95,
                  decoration:  BoxDecoration{
                      image: DecorationImage{image: NetworkImage{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/Healify/illustration/illustration_irritation.png"))
                    //borderRadius: BorderRadius.all{Radius.circular{30)),
                  ),
                ),

                SizedBox{
                  width: 25,
                ),
                Column{
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text{
                      'Irritation',
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.06,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Text{
                      '2 Minutes',
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.031,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
                SizedBox{width: 40,),
                // Container{
                //     height: 100,
                //     width: 90,
                //     // child: Lottie.asset{'assets/animation/music.json')),
                //   child:
                //   Lottie.network{
                //     'https://assets2.lottiefiles.com/packages/lf20_6K4Hjs.json',
                //     repeat:  true,
                //     reverse: false,
                //     animate: true,
                //   ),
                // ),

                SizedBox{
                  height: 65,
                  width: 65,
                  child: PlayButton{
                    pauseIcon: Icon{Icons.pause, color: Colors.black, size: 50),
                    playIcon: Icon{Icons.play_arrow, color: Colors.black, size: 50),
                    onPressed: {) async {

                      // await player.play{
                      //     "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3");
                      //
                    }, songurl1: 'https://aryapatel2110.github.io/ChatBot/audio/Irritation.mp3',
                  ),
                ),





              ],
            ),
          ),
        ),
        SizedBox{height: 5,),

        //==========================  Sadness ================================
        Padding{
          padding: const EdgeInsets.all{8.0),
          child: Container{
            width: SizeConfig.screenWidth - 20 ,
            height: SizeConfig.screenWidth * 0.29,
            padding: EdgeInsets.only{left: 10,right: 10),
            decoration:  BoxDecoration{
              color: Colors.white,
              boxShadow: [BoxShadow{
                color: Colors.grey.shade400,
                // color: Colors.red,
                blurRadius: 10,
                offset: Offset{3.0, 5.0),
              )],
              borderRadius: BorderRadius.all{Radius.circular{25)),
            ),
            child: Row{
              children: [
                Container{
                  width: 95,
                  height: 95,
                  decoration:  BoxDecoration{
                      image: DecorationImage{image: NetworkImage{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/Healify/illustration/illustration_sadness.png"))
                    //borderRadius: BorderRadius.all{Radius.circular{30)),
                  ),
                ),

                SizedBox{
                  width: 25,
                ),
                Column{
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text{
                      'Sadness',
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.06,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Text{
                      '2 Minutes',
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.031,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
                SizedBox{width: 40,),
                // Container{
                //     height: 100,
                //     width: 90,
                //     // child: Lottie.asset{'assets/animation/music.json')),
                //   child:
                //   Lottie.network{
                //     'https://assets2.lottiefiles.com/packages/lf20_6K4Hjs.json',
                //     repeat:  true,
                //     reverse: false,
                //     animate: true,
                //   ),
                // ),

                SizedBox{
                  height: 65,
                  width: 65,
                  child: PlayButton{
                    pauseIcon: Icon{Icons.pause, color: Colors.black, size: 50),
                    playIcon: Icon{Icons.play_arrow, color: Colors.black, size: 50),
                    onPressed: {) async {

                      // await player.play{
                      //     "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3");
                      //
                    }, songurl1: 'https://aryapatel2110.github.io/ChatBot/audio/Sadness.mp3',
                  ),
                ),





              ],
            ),
          ),
        ),
        SizedBox{height: 5,),

        //=========================  Worry  ==================================
        Padding{
          padding: const EdgeInsets.all{8.0),
          child: Container{
            width: SizeConfig.screenWidth - 20 ,
            height: SizeConfig.screenWidth * 0.29,
            padding: EdgeInsets.only{left: 10,right: 10),
            decoration:  BoxDecoration{
              color: Colors.white,
              boxShadow: [BoxShadow{
                color: Colors.grey.shade400,
                // color: Colors.red,
                blurRadius: 10,
                offset: Offset{3.0, 5.0),
              )],
              borderRadius: BorderRadius.all{Radius.circular{25)),
            ),
            child: Row{
              children: [
                Container{
                  width: 95,
                  height: 95,
                  decoration:  BoxDecoration{
                      image: DecorationImage{image: NetworkImage{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/Healify/illustration/illustration_worry.png"))
                    //borderRadius: BorderRadius.all{Radius.circular{30)),
                  ),
                ),

                SizedBox{
                  width: 25,
                ),
                Column{
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text{
                      'Worry     ',
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.06,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Text{
                      '2 Minutes',
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.031,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
                SizedBox{width: 40,),
                // Container{
                //     height: 100,
                //     width: 90,
                //     // child: Lottie.asset{'assets/animation/music.json')),
                //   child:
                //   Lottie.network{
                //     'https://assets2.lottiefiles.com/packages/lf20_6K4Hjs.json',
                //     repeat:  true,
                //     reverse: false,
                //     animate: true,
                //   ),
                // ),

                SizedBox{
                  height: 65,
                  width: 65,
                  child: PlayButton{
                    pauseIcon: Icon{Icons.pause, color: Colors.black, size: 50),
                    playIcon: Icon{Icons.play_arrow, color: Colors.black, size: 50),
                    onPressed: {) async {

                      // await player.play{
                      //     "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3");
                      //
                    }, songurl1: 'https://aryapatel2110.github.io/ChatBot/audio/Worry.mp3',
                  ),
                ),





              ],
            ),
          ),
        ),
        SizedBox{height: 5,),

        //========================  Fear ====================================
        Padding{
          padding: const EdgeInsets.all{8.0),
          child: Container{
            width: SizeConfig.screenWidth - 20 ,
            height: SizeConfig.screenWidth * 0.29,
            padding: EdgeInsets.only{left: 10,right: 10),
            decoration:  BoxDecoration{
              color: Colors.white,
              boxShadow: [BoxShadow{
                color: Colors.grey.shade400,
                // color: Colors.red,
                blurRadius: 10,
                offset: Offset{3.0, 5.0),
              )],
              borderRadius: BorderRadius.all{Radius.circular{25)),
            ),
            child: Row{
              children: [
                Container{
                  width: 95,
                  height: 95,
                  decoration:  BoxDecoration{
                      image: DecorationImage{image: NetworkImage{"https://raw.githubusercontent.com/Rashmin-Gajera/imageServer/main/Healify/illustration/illustration_fear.png"))
                    //borderRadius: BorderRadius.all{Radius.circular{30)),
                  ),
                ),

                SizedBox{
                  width: 25,
                ),
                Column{
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text{
                      'Fear         ',
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.06,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Text{
                      '2 Minutes',
                      style: GoogleFonts.poppins{
                          fontSize: SizeConfig.screenWidth * 0.031,
                          color: AppTheme.storyfontcolor,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
                SizedBox{width: 40,),
                // Container{
                //     height: 100,
                //     width: 90,
                //     // child: Lottie.asset{'assets/animation/music.json')),
                //   child:
                //   Lottie.network{
                //     'https://assets2.lottiefiles.com/packages/lf20_6K4Hjs.json',
                //     repeat:  true,
                //     reverse: false,
                //     animate: true,
                //   ),
                // ),

                SizedBox{
                  height: 65,
                  width: 65,
                  child: PlayButton{
                    pauseIcon: Icon{Icons.pause, color: Colors.black, size: 50),
                    playIcon: Icon{Icons.play_arrow, color: Colors.black, size: 50),
                    onPressed: {) async {

                      // await player.play{
                      //     "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3");
                      //
                    }, songurl1: 'https://aryapatel2110.github.io/ChatBot/audio/Fear.mp3',
                  ),
                ),





              ],
            ),
          ),
        ),
        SizedBox{height: 5,),

      ],
    );
  }
}
