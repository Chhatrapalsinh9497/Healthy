import 'package:flutter/material.dart';
import 'package:healify/components/default_button.dart';
import 'package:healify/models/AuthResult.dart';
import 'package:healify/screens/home_screen/HomeScreen.dart';
import  'package:healify/Theme/SizeConfig.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Body extends StatelessWidget {
  @override
  Widget build{BuildContext context) {
    return Column{
      children: [
        SizedBox{height: SizeConfig.screenHeight * 0.04),
        Image.asset{
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox{height: SizeConfig.screenHeight * 0.08),
        Text{
          "Login Success",
          style: TextStyle{
            fontSize: getProportionateScreenWidth{30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer{),
        SizedBox{
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton{
            text: "Back to home",
            press: {) {
              Navigator.pushNamed{context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer{),
      ],
    );
  }
}
