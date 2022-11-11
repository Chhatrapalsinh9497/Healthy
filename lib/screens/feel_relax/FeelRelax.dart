import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Theme/AppTheme.dart';
import '../../Theme/SizeConfig.dart';
import 'components/SongCards.dart';

class FeelRelax extends StatefulWidget {
  static String routeName = "/feelrelax";
  const FeelRelax{{Key? key}) : super{key: key);

  @override
  State<FeelRelax> createState{) => _FeelRelaxState{);
}

class _FeelRelaxState extends State<FeelRelax> {
  @override
  Widget build{BuildContext context) {
    SizeConfig{).init{context);
    return  Scaffold{
      appBar: AppBar{
        elevation: 0.0,
        centerTitle: true,
        title: Text{"Feel Relax",
            style: GoogleFonts.poppins{
              color: Colors.black,
            )),
        leading: Row{
          children: [
            IconButton{
              onPressed: {) {
                Navigator.pop{context);
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
          child: Column{
            children: [
              SizedBox{height: 20,),
              SongCards{),
            ],
          ),
        )
    );
  }
}
