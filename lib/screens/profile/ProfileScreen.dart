import 'package:flutter/material.dart';
import 'components/body.dart';
import 'package:healify/Theme/SizeConfig.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/Theme/AppTheme.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build{BuildContext context) {
    SizeConfig{).init{context);
    return Scaffold{
      appBar: AppBar{
        elevation: 0.0,
        backgroundColor: AppTheme.light,
        centerTitle: true,
        title:  Text{
          "User Profile",
            style: GoogleFonts.poppins{color: AppTheme.dark,
            fontSize: 19,
          ),
        ),
      ),
      body: Body{),

    );
  }
}