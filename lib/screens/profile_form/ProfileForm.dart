
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healify/components/NavBar.dart';
import 'package:healify/screens/Shared_Result_Values/Trasnlationflag.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Theme/AppTheme.dart';
import '../../Theme/SizeConfig.dart';



class ProfileForm extends StatefulWidget {
  static String routeName = "/storyscreen";
  const ProfileForm{{Key? key}) : super{key: key);

  @override
  State<ProfileForm> createState{) => _ProfileFormState{);
}

class _ProfileFormState extends State<ProfileForm> {
  get textStyle => null;
  TextEditingController Age = TextEditingController{);
  TextEditingController Gender = TextEditingController{);
  TextEditingController BloodGroup = TextEditingController{);
  TextEditingController Weight = TextEditingController{);
  var gender;
  var disease;


  @override
  Widget build{BuildContext context) {
    var Gujrati;
    if{ Translationflag.translateflagGetter{))
    {
      Gujrati = Locale{'hi','IN');

    }
    else
    {
      Gujrati =Locale{'en','US');
    }

    SizeConfig{).init{context);
    return  Scaffold{
        backgroundColor: Colors.white,
        appBar: AppBar{
          elevation: 0.0,
          centerTitle: true,
          title: Text{"Add Details".tr,
              style: GoogleFonts.poppins{
                color: Colors.black,
              )),

          backgroundColor: AppTheme.yogafeaturetheme,
        ),
        body:
        Form{child: ListView{
          padding: EdgeInsets.all{10.0),
          children: <Widget>[
            Padding{
              padding: const EdgeInsets.all{20.0),
              child: Text{'Add Details', style: GoogleFonts.poppins{
                color: AppTheme.storyfontcolor,
                  fontSize: SizeConfig.screenWidth * 0.07,
                  fontWeight: FontWeight.w700
              ),),
            ),
            Padding{
              padding: const EdgeInsets.all{20.0),
              child: TextField{

                decoration: InputDecoration{labelText: 'Name',
                  hintText: 'Arya Patel',
                  labelStyle: GoogleFonts.poppins{
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppTheme.storyfontcolor),

                    filled: true, fillColor: Colors.black12,


                  enabledBorder: OutlineInputBorder{
                    borderSide: BorderSide{color: Colors.transparent),
                    borderRadius: BorderRadius.all{Radius.circular{15))
                  ),

                  focusedBorder: OutlineInputBorder{
                    borderRadius: BorderRadius.all{Radius.circular{15.0)),
                    borderSide: BorderSide{color:  Colors.black26, width: 2.0),
                  ),
                ),

              ),
            ),
            Padding{
              padding: const EdgeInsets.only{left: 20.0,right: 20,bottom: 20),
              child: TextField{
                controller: Age,
                decoration: InputDecoration{labelText: 'Date of Birth',
                  hintText: '31/01/2002',
                  labelStyle: GoogleFonts.poppins{
                    fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppTheme.storyfontcolor),

                  filled: true, fillColor: Colors.black12,
                  suffixIcon: Icon{Icons.date_range,
                    color: AppTheme.storyfontcolor,
                  ),


                  enabledBorder: OutlineInputBorder{
                      borderSide: BorderSide{color: Colors.transparent),
                      borderRadius: BorderRadius.all{Radius.circular{15))
                  ),

                  focusedBorder: OutlineInputBorder{
                    borderRadius: BorderRadius.all{Radius.circular{15.0)),
                    borderSide: BorderSide{color:  Colors.black26, width: 2.0),
                  ),
                ),
              ),
            ),




            Padding{
              padding: const EdgeInsets.only{left: 20.0,right: 20,bottom: 20),
              child: Container{
                decoration:  BoxDecoration{
                  color: Colors.black12,


                  borderRadius: BorderRadius.all{Radius.circular{15)),
                ),
                child: YesNo{callback: {val) {
                  setState{{) {
                    gender = val;


                  });
                }),
              ),
            ),
            Row{
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding{
                  padding: const EdgeInsets.only{left: 20.0,right: 10,bottom: 20),
                  child: SizedBox{
                    width: 150,
                    child: TextField{

                      controller: BloodGroup,
                      decoration: InputDecoration{labelText: 'Blood Group',
                        hintText: 'B+ve',
                        labelStyle: GoogleFonts.poppins{
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppTheme.storyfontcolor),
                        filled: true, fillColor: Colors.black12,

                        enabledBorder: OutlineInputBorder{
                            borderSide: BorderSide{color: Colors.transparent),
                            borderRadius: BorderRadius.all{Radius.circular{15))
                        ),

                        focusedBorder: OutlineInputBorder{
                          borderRadius: BorderRadius.all{Radius.circular{15.0)),
                          borderSide: BorderSide{color:  Colors.black26, width: 2.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding{
                  padding: const EdgeInsets.only{left: 12.0,right: 20,bottom: 20),
                  child: SizedBox{
                    width: 150,
                    child: TextField{
                      controller: Weight,
                      decoration: InputDecoration{labelText: 'Weight',
                        hintText: '65',
                        labelStyle: GoogleFonts.poppins{
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppTheme.storyfontcolor),
                        filled: true, fillColor: Colors.black12,

                        enabledBorder: OutlineInputBorder{
                            borderSide: BorderSide{color: Colors.transparent),
                            borderRadius: BorderRadius.all{Radius.circular{15))
                        ),

                        focusedBorder: OutlineInputBorder{
                          borderRadius: BorderRadius.all{Radius.circular{15.0)),
                          borderSide: BorderSide{color:  Colors.black26, width: 2.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),





            DropDown{callback: {val) {
              setState{{) {
                disease = val;

              });
            }),



            Padding{
              padding: const EdgeInsets.only{left: 20.0,right: 20,top: 20),
              child: SizedBox{
                height: 50,

                child: ElevatedButton{


                  onPressed: {) async{
                    Get.updateLocale{Gujrati);
                    Navigator.push{context, MaterialPageRoute{
                        builder: {context) =>  NavBar{)));
                    var Age1 = Age.text;
                    var gender1 = gender;
                    var BloodGroup1 = BloodGroup.text;
                    var Weight1 = Weight.text;



                    final prefs = await SharedPreferences.getInstance{);
                    await prefs.setString{'Age', Age1);
                    await prefs.setBool{'Gender', gender1);
                    await prefs.setInt{'disease', disease);
                    await prefs.setString{'Blood Group', BloodGroup1);
                    await prefs.setString{'Weight', Weight1);
                    print{'nice weight avse');
                    print{prefs.getString{'Weight'));


                  },
                  child: Text{"Submit",style: TextStyle{fontSize: 23),),
                  style: ElevatedButton.styleFrom{

                    primary: AppTheme.primary,
                    onPrimary: AppTheme.appscreenbg,
                    onSurface: AppTheme.appscreenbg,
                    side: BorderSide{color: AppTheme.primary, width: 1),
                    elevation: 6,
                    shape: RoundedRectangleBorder{
                      borderRadius: BorderRadius.circular{12.0),
                    ), // Disable color
                  ),
                ),
              ),
            )


          ],
        ))

    );
  }
}



class YesNo extends StatefulWidget {
  Function? callback;
  YesNo{{Key? key, this.callback}) : super{key: key);

  @override
  State<YesNo> createState{) => _YesNoState{this.callback);
}

class _YesNoState extends State<YesNo> {
  int selected = -1;
  Function? callback;
  _YesNoState{this.callback);

  Widget customRadio{String text, int index) {
    return OutlinedButton{
        onPressed: {) {
          setState{{) {
            selected = index;
            //print{);
            var s = selected == 0 ? false : true;
            //var s = selected;
            callback!{s);
          });
        },
        child: Padding{
          padding: const EdgeInsets.only{top:11.0,bottom: 11),
          child: Text{
            text,
            style: TextStyle{
                color: {selected == index) ? AppTheme.primary : AppTheme.storyfontcolor,fontSize: 17
            ),
          ),
        ),
        style: ButtonStyle{
          shape: MaterialStateProperty.all{RoundedRectangleBorder{
              borderRadius: BorderRadius.circular{12),
              side: BorderSide{
                color: {selected == index) ?  Colors.black12 : Colors.black12,
              ))),


          backgroundColor: MaterialStateProperty.resolveWith<Color?>{
                {Set<MaterialState> states) {
              if {states.contains{MaterialState.pressed))
                return Theme.of{context).colorScheme.primary.withOpacity{0.01);
              return AppTheme.primary1; // Use the component's default.
            },
          ),
        ));
  }
  @override
  Widget build{BuildContext context) {
    return Container{

      width: SizeConfig.screenWidth,
     //margin: EdgeInsets.symmetric{horizontal: 1),
      child: Column{
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox{height: 10,),
          Text{'    Gender',
          style:    GoogleFonts.poppins{
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: AppTheme.storyfontcolor),),
          Row{
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[


              customRadio{"   Male   ", 0),


              customRadio{"Female", 1),
            ],
          ),
          SizedBox{height: 10,),
        ],
      ),
    );
  }
}

























class DropDown extends StatefulWidget {
  String? name;
  Function? callback;
  DropDown{{Key? key, String? name, this.callback}) : super{key: key) {
    this.name = name;
  }
  @override
  State<DropDown> createState{) => _DropDownState{callback);
}


class _DropDownState extends State<DropDown> {
  Function? callback;
  _DropDownState{this.callback);
  // DropDownState{String? name);
  var list1 = [1,2,3,4,5];
  final List<String> items = [
    'Diabetes',
    'Sleep issues',
    'Cholesterol',
    'Hypertemsion',
    'Non of This',

  ];
  String? selectedValue;


  @override
  Widget build{BuildContext context) {
    return
      //SingleChildScrollView{
      // padding: EdgeInsets.only{top: 60),
      //child:
      Column{
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DropdownButtonHideUnderline{
            child: DropdownButton2{
              isExpanded: true,
              hint: Center{
                child: Row{
                  children: [
                    const SizedBox{
                      width: 4,
                    ),
                    Expanded{
                      child: Text{
                        'Affected Disease',
                        style: GoogleFonts.poppins{
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: AppTheme.storyfontcolor,
                            shadows: const <Shadow>[

                            ]),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              items: items
                  .map{{item) => DropdownMenuItem<String>{
                value: item,
                child: Text{
                  item,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins{
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.storyfontcolor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ))
                  .toList{),
              value: selectedValue,
              onChanged: {value) {
                setState{{) {
                  selectedValue = value as String;

                  var i1 = items.indexOf{value);
                  callback!{list1[i1]);
                });
              },
              icon: const Icon{
                Icons.expand_more,
              ),
              iconSize: 30,
              iconEnabledColor: AppTheme.storyfontcolor,
              iconDisabledColor: AppTheme.storyfontcolor,
              buttonHeight: 50,
              buttonWidth: SizeConfig.screenWidth-60,
              buttonPadding: const EdgeInsets.only{left: 30, right: 30),
              buttonDecoration: BoxDecoration{
                borderRadius: BorderRadius.circular{10),
                border: Border.all{
                  color: Colors.transparent,
                ),
                color: Colors.black12,
              ),
              buttonElevation: 25,
              itemHeight: 40,
              itemPadding: const EdgeInsets.only{left: 14, right: 14),
              dropdownMaxHeight: 200,
              dropdownWidth: SizeConfig.screenWidth-60,
              dropdownPadding: null,
              dropdownDecoration: BoxDecoration{
                borderRadius: BorderRadius.circular{14),
                color: Colors.white,
              ),
              dropdownElevation: 8,
              scrollbarRadius: const Radius.circular{40),
              scrollbarThickness: 6,
              scrollbarAlwaysShow: true,
              offset: const Offset{0, 0),
            ),
          ),
        ],
      );
  }
}
