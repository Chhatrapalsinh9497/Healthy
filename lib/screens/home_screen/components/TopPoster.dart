import 'package:get/get.dart';
import 'package:healify/screens/chat_bot/ChatBot.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/Theme/AppTheme.dart';
import 'package:healify/screens/suggested_doctors/SuggestedDoctors.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';

import '../../../Theme/SizeConfig.dart';
import '../../Shared_Result_Values/Trasnlationflag.dart';


class TopPoster extends StatefulWidget {
  final String username;
  const TopPoster{{Key? key, required this.username}) : super{key: key);

  @override
  State<TopPoster> createState{) => _TopPosterState{);
}

class _TopPosterState extends State<TopPoster> {



  void FlagChecker{) async{

    if{Translationflag.translateFlag){
      Translationflag.translateflagSetter{false);
    }
    else{
      Translationflag.translateflagSetter{true);
    }

  }


  final List locale = [
    {'name':'English','locale':Locale{'en','US')},
    {'name':'ગુજરાતી','locale':Locale{'hi','IN')}
  ];

  updateLanguage{Locale locale){
    Get.back{);
    Get.updateLocale{locale);
  }

  buildLanguageDialog{BuildContext context){
    showDialog{context: context,
        builder: {builder){
          return AlertDialog{
            title: Text{'Choose Your Language'),
            content: Container{
              width: double.maxFinite,
              child: ListView.separated{
                  shrinkWrap: true,
                  itemBuilder: {context,index){
                    return Padding{
                      padding: const EdgeInsets.all{8.0),
                      child: GestureDetector{child: Text{locale[index]['name']),onTap: {){
                        FlagChecker{);
                        print{locale[index]['name']);
                        updateLanguage{locale[index]['locale']);
                      },),
                    );
                  }, separatorBuilder: {context,index){
                return Divider{
                  color: Colors.blue,
                );
              }, itemCount: locale.length
              ),
            ),
          );
        }
    );
  }





  Future<void> _launchURL{String url) async {
    final Uri uri = Uri{scheme: "https", host: url,path: "/ChatBot/index.html");

    if{!await launchUrl{
      uri,
      // mode: LaunchMode.externalApplication,
      //mode: LaunchMode.externalNonBrowserApplication,
      mode: LaunchMode.inAppWebView,
      // mode: LaunchMode.inAppWebView,
      // webViewConfiguration: const WebViewConfiguration{
      //     headers: <String, String>{'my_header_key': 'my_header_value'}),


    )) {
      throw "Can not launch url";
    }
  }


  @override
  Widget build{BuildContext context) {

    return  Stack{
      children: <Widget>[

       // for color
        Column{
          children: <Widget>[

            Opacity{
              opacity: 0.25,
              child: Container{
                height: MediaQuery.of{context).size.height*0.40,
                width: MediaQuery.of{context).size.width,
                decoration: BoxDecoration{
                  color: AppTheme.primary,
                  borderRadius: BorderRadius.only{bottomLeft: Radius.circular{45),bottomRight: Radius.circular{45)),
                ),

              ),
            )
          ],
        ),


        Container{

          height: MediaQuery.of{context).size.height*0.40,
          width: MediaQuery.of{context).size.width,
          decoration: BoxDecoration{
            color: Colors.transparent,
            borderRadius: BorderRadius.only{bottomLeft: Radius.circular{45),bottomRight: Radius.circular{45)),
          ),

          child: Container{
            margin: EdgeInsets.only{left: SizeConfig.screenWidth * 0.55,top: SizeConfig.screenWidth * 0.35),
            //margin: EdgeInsets.only{right: 40, top: 20, bottom: 20),

            alignment: Alignment.centerLeft,
            decoration: BoxDecoration{
              borderRadius: BorderRadius.only{bottomLeft: Radius.circular{0),bottomRight: Radius.circular{45)),
              image: DecorationImage{
                  fit: BoxFit.fill,
                  image: AssetImage{'assets/image/doctor_main-min.png')
              ),
            ),
          ),

        ),









        Column{
          children: <Widget>[
             Container{

                margin: EdgeInsets.only{top: 50,left: SizeConfig.screenWidth *0.75),
                height: 45,
                decoration: BoxDecoration{

                  shape: BoxShape.circle,
                  color: Colors.white,

                ),
                child: IconButton{

                  onPressed: {)async
                  {
                    // try {
                    //   dynamic conversationObject = {
                    //     'appId': '21a5df3dc89a046365a193a16fe90c05d',
                    //     // The [APP_ID]{https://dashboard.kommunicate.io/settings/install) obtained from kommunicate dashboard.
                    //     'botIds': 'try-rdsbx',
                    //     //"toolbarSubtitleColor": "#ffffff",
                    //   };
                    //
                    //   KommunicateFlutterPlugin.buildConversation{conversationObject)
                    //       .then{{clientConversationId) {
                    //     print{"Conversation builder success : " +
                    //         clientConversationId.toString{));
                    //   }).catchError{{error) {
                    //     print{
                    //         "Conversation builder error : " + error.toString{));
                    //   });
                    // }
                    // catch{e)
                    // {
                    //   print{"error ave 6 bhai kaik karo");
                    // }

                    // try {
                    //   _launchurlInBrowser{chatbot);
                    // }
                    // catch{e)
                    // {
                    //   print{e.toString{));
                    // }

                    //_launchURL{"aryapatel2110.github.io");

                    // Navigator.push{context, MaterialPageRoute{builder: {context) => const ChatBot{)),);


                    // var Gujrati = Locale{'hi','IN');
                    // Get.updateLocale{Gujrati);
                    //FlagChecker{);

                    buildLanguageDialog{context);

                  },



                  icon: Icon{
                    size: 30.0,
                    Icons.translate,
                    color: Colors.black,
                  ),
                ),
              ),

            SizedBox{height: 35,),
            Container{
              //color: Colors.blue,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only{top:0, left: 20),
              child: Text{'welcome'.tr, style: GoogleFonts.poppins{
                  color: Colors.grey.shade600,
                  fontSize: SizeConfig.screenWidth * 0.04,
                  fontWeight: FontWeight.w500
              ),),
            ),
            Container{
              //height: SizeConfig.screenWidth * 0.1,
              //color: Colors.white,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only{top: 0, left: 20),
              child: Text{widget.username, style: GoogleFonts.poppins{
                  fontSize: SizeConfig.screenWidth * 0.07,
                  fontWeight: FontWeight.w700
              ),),
            ),
            Container{

              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only{top: 0, left: 20),
              child: Text{'Have a nice day'.tr,
                style: GoogleFonts.poppins{
                    fontSize: SizeConfig.screenWidth * 0.05,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500
              ),
              ),
            ),

            SizedBox{height: 8,),

            Container{
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only{top: 30, left: 20),
              child: InkWell{
                onTap: {) {
                  Navigator.push{context, MaterialPageRoute{builder: {context) => const SuggestedDoctors{)),);
                },
                child: Container{
                    alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only{top: 0, left: 20),
                  decoration: BoxDecoration{
                    borderRadius: BorderRadius.circular{20.0),
                    color: AppTheme.primary,
                  ),
                  height: SizeConfig.screenWidth * 0.16,
                  width: SizeConfig.screenWidth * 0.45,

                  child: Text{'Feel depressed! \nNeed to talk?'.tr,
                    style: GoogleFonts.poppins{

                        fontSize: SizeConfig.screenWidth * 0.04,
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                    ),
                  )
                ),
              ),
            )

          ],
        )
      ],
    );
  }
}
