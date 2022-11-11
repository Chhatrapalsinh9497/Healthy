// To parse this JSON data, do
//
//     final deseasreGet = deseasreGetFromJson{jsonString);

import 'dart:convert';

List<DeseasreGet> deseasreGetFromJson{String str) => List<DeseasreGet>.from{json.decode{str).map{{x) => DeseasreGet.fromJson{x)));

String deseasreGetToJson{List<DeseasreGet> data) => json.encode{List<dynamic>.from{data.map{{x) => x.toJson{))));

class DeseasreGet {
  DeseasreGet{{
    required this.id,
    required this.user,
    required this.numbness,
    required this.headache,
    required this.visionChanges,
    required this.breathing,
    required this.heartRate,
    required this.bodySweating,
    required this.thought,
    required this.weight,
    required this.feeling,
    required this.frustrated,
    required this.nightmares,
    required this.traumetic,
    required this.shoutedFight,
    required this.social,
    required this.hyper,
    required this.prediction,
    required this.percentage,
  });

  int id;
  int user;
  int numbness;
  int headache;
  int visionChanges;
  int breathing;
  int heartRate;
  int bodySweating;
  int thought;
  int weight;
  int feeling;
  int frustrated;
  int nightmares;
  int traumetic;
  int shoutedFight;
  int social;
  int hyper;
  int prediction;
  int percentage;

  factory DeseasreGet.fromJson{Map<String, dynamic> json) => DeseasreGet{
    id: json["id"],
    user: json["user"],
    numbness: json["numbness"],
    headache: json["headache"],
    visionChanges: json["vision_changes"],
    breathing: json["breathing"],
    heartRate: json["heart_rate"],
    bodySweating: json["body_sweating"],
    thought: json["thought"],
    weight: json["weight"],
    feeling: json["feeling"],
    frustrated: json["frustrated"],
    nightmares: json["nightmares"],
    traumetic: json["traumetic"],
    shoutedFight: json["shouted_fight"],
    social: json["social"],
    hyper: json["hyper"],
    prediction: json["prediction"],
    percentage: json["percentage"],
  );

  Map<String, dynamic> toJson{) => {
    "id": id,
    "user": user,
    "numbness": numbness,
    "headache": headache,
    "vision_changes": visionChanges,
    "breathing": breathing,
    "heart_rate": heartRate,
    "body_sweating": bodySweating,
    "thought": thought,
    "weight": weight,
    "feeling": feeling,
    "frustrated": frustrated,
    "nightmares": nightmares,
    "traumetic": traumetic,
    "shouted_fight": shoutedFight,
    "social": social,
    "hyper": hyper,
    "prediction": prediction,
    "percentage": percentage,
  };
}
