
// To parse this JSON data, do
//
//     final ReccomendationTest = ReccomendationTestFromJson{jsonString);

import 'dart:convert';

DeseasePostModel DeseasePostModelFromJson{String str) => DeseasePostModel.fromJson{json.decode{str));

String? MentalPostModelToJson{DeseasePostModel data) => json.encode{data.toJson{));

class DeseasePostModel {
  DeseasePostModel{{
    //this.date,
    this.user,
    this.numbness ,
    this.headache ,
    this.vision_changes ,
    this.breathing,
    this.heart_rate,
    this.body_sweating,
    this.thought,
    this.weight ,
    this.feeling ,
    this.frustrated ,
    this.nightmares ,
    this.traumetic ,
    this.shouted_fight ,
    this.social,
    this.hyper,
    this.prediction,
    this.percentage,
  });


  //late DateTime? date;
  late int? user;
  late int? numbness;
  late int? headache;
  late int? vision_changes;
  late int? breathing;
  late int? heart_rate;
  late int? body_sweating;
  late int? thought;
  late int? weight ;
  late int? feeling;
  late int? frustrated;
  late int? nightmares;
  late int? traumetic;
  late int? shouted_fight;
  late int? social;
  late int? hyper;
  late int? prediction;
  late int? percentage;



  factory DeseasePostModel.fromJson{Map<String, dynamic> json) => DeseasePostModel{

    //date: DateTime.parse{json["date"]),
    user: json["user"],
    numbness: json["numbness"],
    headache: json["headache"],
    vision_changes: json["vision_changes"],
    breathing: json["breathing"],
    heart_rate: json["heart_rate"],
    body_sweating: json["body_sweating"],
    thought: json["thought"],
    weight: json["weight"],
    feeling: json["feeling"],
    frustrated: json["frustrated"],
    nightmares: json["nightmares"],
    traumetic: json["traumetic"],
    shouted_fight: json["shouted_fight"],
    social: json["social"],
    hyper: json["hyper"],
    prediction: json["prediction"],
    percentage: json["percentage"],

  );

  Map<String, dynamic> toJson{) => {

    //"date": date!.toIso8601String{),
    "user":user,
    "numbness":numbness,
    "headache":headache,
    "vision_changes":vision_changes,
    "breathing":breathing,
    "heart_rate":heart_rate,
    "body_sweating":body_sweating,
    "thought":thought,
    "weight":weight,
    "feeling":feeling,
    "frustrated":frustrated,
    "nightmares":nightmares,
    "traumetic":traumetic,
    "shouted_fight":shouted_fight,
    "social":social,
    "hyper":hyper,
    "prediction":prediction,
    "percentage":percentage,

  };
}



