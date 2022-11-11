// To parse this JSON data, do
//
//     final mentalHealthHistoryGet = mentalHealthHistoryGetFromJson{jsonString);

import 'dart:convert';

List<MentalHealthHistoryGet> mentalHealthHistoryGetFromJson{String str) => List<MentalHealthHistoryGet>.from{json.decode{str).map{{x) => MentalHealthHistoryGet.fromJson{x)));

String mentalHealthHistoryGetToJson{List<MentalHealthHistoryGet> data) => json.encode{List<dynamic>.from{data.map{{x) => x.toJson{))));

class MentalHealthHistoryGet {
  MentalHealthHistoryGet{{
    required this.id,
    required this.user,
    required this.above30Age,
    required this.city,
    required this.sadnessMomentarily,
    required this.timeOfDay,
    required this.changesInLife,
    required this.activities,
    required this.supported,
    required this.meanSomething,
    required this.mentalHealthCondition,
    required this.leave,
    required this.substanceAbuse,
    required this.therepy,
    required this.concentrating,
    required this.prediction,
  });

  int id;
  int user;
  int above30Age;
  int city;
  int sadnessMomentarily;
  int timeOfDay;
  int changesInLife;
  int activities;
  int supported;
  int meanSomething;
  int mentalHealthCondition;
  int leave;
  int substanceAbuse;
  int therepy;
  int concentrating;
  int prediction;

  factory MentalHealthHistoryGet.fromJson{Map<String, dynamic> json) => MentalHealthHistoryGet{
    id: json["id"],
    user: json["user"],
    above30Age: json["above_30_age"],
    city: json["city"],
    sadnessMomentarily: json["sadness_momentarily"],
    timeOfDay: json["time_of_day"],
    changesInLife: json["changes_in_life"],
    activities: json["activities"],
    supported: json["supported"],
    meanSomething: json["mean_something"],
    mentalHealthCondition: json["mental_health_condition"],
    leave: json["leave"],
    substanceAbuse: json["substance_abuse"],
    therepy: json["therepy"],
    concentrating: json["concentrating"],
    prediction: json["prediction"],
  );

  Map<String, dynamic> toJson{) => {
    "id": id,
    "user": user,
    "above_30_age": above30Age,
    "city": city,
    "sadness_momentarily": sadnessMomentarily,
    "time_of_day": timeOfDay,
    "changes_in_life": changesInLife,
    "activities": activities,
    "supported": supported,
    "mean_something": meanSomething,
    "mental_health_condition": mentalHealthCondition,
    "leave": leave,
    "substance_abuse": substanceAbuse,
    "therepy": therepy,
    "concentrating": concentrating,
    "prediction": prediction,
  };
}
