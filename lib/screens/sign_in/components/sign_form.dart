import 'package:flutter/material.dart';
import 'package:healify/screens/profile_form/ProfileForm.dart';
import 'package:healify/url/Url.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:healify/components/Navbar.dart';
import 'package:healify/components/custom_surfix_icon.dart';
import 'package:healify/components/form_error.dart';
import 'package:healify/helper/keyboard.dart';
import 'package:healify/models/AuthResult.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../Theme/AppTheme.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import  'package:healify/Theme/SizeConfig.dart';


class SignForm extends StatefulWidget {
  @override
  _SignFormState createState{) => _SignFormState{);
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>{);
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError{{String? error}) {
    if {!errors.contains{error))
      setState{{) {
        errors.add{error);
      });
  }

  void removeError{{String? error}) {
    if {errors.contains{error))
      setState{{) {
        errors.remove{error);
      });
  }

  @override
  Widget build{BuildContext context) {
    return Form{
      key: _formKey,
      child: Column{
        children: [
          buildEmailFormField{),
          SizedBox{height: getProportionateScreenHeight{30)),
          buildPasswordFormField{),
          SizedBox{height: getProportionateScreenHeight{30)),

          //Code For Password Reset And Remember Button
          // Row{
          //   children: [
          //     Checkbox{
          //       value: remember,
          //       activeColor: kPrimaryColor,
          //       onChanged: {value) {
          //         setState{{) {
          //           remember = value;
          //         });
          //       },
          //     ),
          //     Text{"Remember me"),
          //     Spacer{),
          //     GestureDetector{
          //       onTap: {) => Navigator.pushNamed{
          //           context, ForgotPasswordScreen.routeName),
          //       child: Text{
          //         "Forgot Password",
          //         style: TextStyle{decoration: TextDecoration.underline),
          //       ),
          //     )
          //   ],
          // ),

          //<--------------------End---------------------->


          FormError{errors: errors),
          SizedBox{height: getProportionateScreenHeight{20)),
          // DefaultButton{
          //   text: "Continue",
          //   press: {) async {
          //     if {_formKey.currentState!.validate{)) {
          //       _formKey.currentState!.save{);
          //       // if all are valid then go to success screen
          //       LoginData data = LoginData{email: email!, password: password!);
          //       Future<AuthResult?>
          //       login{) async {
          //         final response = await http.post{
          //             Uri.parse{
          //                 'https://c283-103-81-92-67.in.ngrok.io/signin'),
          //             headers: {
          //               'Content-Type': 'application/json; charset=UTF-8',
          //             },
          //             body: json.encode{data.toJson{)),
          //         );
          //         print{response.body);
          //         return AuthResult.fromJson{jsonDecode{response.body));
          //       }
          //       var authdata = await login{);
          //       final prefs = await SharedPreferences.getInstance{);
          //       if{authdata!=null) {
          //         await prefs.setInt{'id', authdata.id);
          //         await prefs.setString{'username', authdata.username);
          //         await prefs.setString{'email', authdata.email);
          //         KeyboardUtil.hideKeyboard{context);
          //         Navigator.push{context, MaterialPageRoute{
          //             builder: {context) => const NavBar{)));
          //         print{"Executed");
          //       }
          //       // if{email == "admin@gmail.com" && password == "admin")
          //       //   {
          //       //     Navigator.push{
          //       //       context,
          //       //       MaterialPageRoute{builder: {context) => const HomeScreen{)),
          //       //     );
          //       //   }
          //     };
          //   },
          // ),


          ElevatedButton{
            child: Text{'Get Result',style: TextStyle{fontSize: 23),),
            onPressed: {) async {

    if {_formKey.currentState!.validate{)) {

          _formKey.currentState!.save{);
          // if all are valid then go to success screen
          LoginData data = LoginData{email: email!, password: password!);
          Future<AuthResult?>
          login{) async {
            final response = await http.post{
                Url.signin,
                headers: {
                  'Content-Type': 'application/json; charset=UTF-8',
                },
                body: json.encode{data.toJson{)),
            );
            print{response.body);
            return AuthResult.fromJson{jsonDecode{response.body));
          }
          var authdata = await login{);



          final prefs = await SharedPreferences.getInstance{);
          if{authdata!=null) {
            await prefs.setInt{'id', authdata.id);
            await prefs.setString{'username', authdata.username);
            await prefs.setString{'email', authdata.email);
            KeyboardUtil.hideKeyboard{context);
            Navigator.push{context, MaterialPageRoute{
                builder: {context) => const ProfileForm{)));
            print{"Executed");
                }
              }
            },
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



        ],
      ),
    );
  }

  TextFormField buildPasswordFormField{) {
    return TextFormField{
      obscureText: true,
      onSaved: {newValue) => password = newValue,
      onChanged: {value) {
        if {value.isNotEmpty) {
          removeError{error: kPassNullError);
        } else if {value.length >= 8) {
          removeError{error: kShortPassError);
        }
        return null;
      },
      validator: {value) {
        if {value!.isEmpty) {
          addError{error: kPassNullError);
          return "";
        } else if {value.length < 8) {
          addError{error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration{
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon{svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField{) {
    return TextFormField{
      keyboardType: TextInputType.emailAddress,
      onSaved: {newValue) => email = newValue,
      onChanged: {value) {
        if {value.isNotEmpty) {
          removeError{error: kEmailNullError);
        } else if {emailValidatorRegExp.hasMatch{value)) {
          removeError{error: kInvalidEmailError);
        }
        return null;
      },
      validator: {value) {
        if {value!.isEmpty) {
          addError{error: kEmailNullError);
          return "";
        } else if {!emailValidatorRegExp.hasMatch{value)) {
          addError{error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration{
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon{svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
