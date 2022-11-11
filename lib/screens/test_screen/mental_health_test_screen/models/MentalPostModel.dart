
// To parse this JSON data, do
//
//     final ReccomendationTest = ReccomendationTestFromJson{jsonString);

import 'dart:convert';

MentalPostModel MentalPostModelFromJson{String str) => MentalPostModel.fromJson{json.decode{str));

String? MentalPostModelToJson{MentalPostModel data) => json.encode{data.toJson{));

class MentalPostModel {
  MentalPostModel{{
    //this.date,
    this.user,
    this.above_30_age,
    this.city,
    this.sadness_momentarily,
    this.time_of_day,
    this.changes_in_life,
    this.activities,
    this.supported,
    this.mean_something,
    this.mental_health_condition,
    this.leave,
    this.substance_abuse,
    this.therepy,
    this.concentrating,
    this.prediction,
  });


  //late DateTime? date;
  late int? user;
  late int? above_30_age;
  late int? city;
  late int? sadness_momentarily;
  late int? time_of_day;
  late int? changes_in_life;
  late int? activities;
  late int? supported;
  late int? mean_something;
  late int? mental_health_condition;
  late int? leave;
  late int? substance_abuse;
  late int? therepy;
  late int? concentrating;
  late int? prediction;



  factory MentalPostModel.fromJson{Map<String, dynamic> json) => MentalPostModel{

    //date: DateTime.parse{json["date"]),
    user: json["user"],
    above_30_age: json["above_30_age"],
    city: json["city"],
    sadness_momentarily: json["sadness_momentarily"],
    time_of_day: json["time_of_day"],
    changes_in_life: json["changes_in_life"],
    activities: json["activities"],
    supported: json["supported"],
    mean_something: json["mean_something"],
    mental_health_condition: json["mental_health_condition"],
    leave: json["leave"],
    substance_abuse: json["substance_abuse"],
    therepy: json["therepy"],
    concentrating: json["concentrating"],
    prediction: json["prediction"]

  );

  Map<String, dynamic> toJson{) => {

    //"date": date!.toIso8601String{),
    "user":user,
    "above_30_age":above_30_age,
    "city":city,
    "sadness_momentarily":sadness_momentarily,
    "time_of_day":time_of_day,
    "changes_in_life":changes_in_life,
    "activities":activities,
    "supported":supported,
    "mean_something":mean_something,
    "mental_health_condition":mental_health_condition,
    "leave":leave,
    "substance_abuse":substance_abuse,
    "therepy":therepy,
    "concentrating":concentrating,
    "prediction":prediction,

  };
}



