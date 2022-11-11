import 'dart:convert';

AuthResult AuthResultFromJson{String str) => AuthResult.fromJson{json.decode{str));

String AuthResultToJson{AuthResult data) => json.encode{data.toJson{));

class AuthResult {
  AuthResult{{
    required this.id,
    required this.email,
    required this.username,
  });

  int id;
  String email;
  String username;

  factory AuthResult.fromJson{Map<String, dynamic> json) => AuthResult{

  Map<String, dynamic> toJson{) => {
    "id": id,
    "email": email,
    "username": username,
  };
}

class LoginData{
  LoginData{{
    required this.email,
    required this.password,
  });

  String email;
  String password;

  factory LoginData.fromJson{Map<String, dynamic> json) => LoginData{

    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson{) => {

    "email": email,
    "password": password,
  };
}


class SignUpData{
  SignUpData{{
    required this.email,
    required this.username,
    required this.password,
  });

  String email;
  String username;
  String password;

  factory SignUpData.fromJson{Map<String, dynamic> json) => SignUpData{
    email: json["email"],
    username: json["username"],
    password: json["password"],

}

