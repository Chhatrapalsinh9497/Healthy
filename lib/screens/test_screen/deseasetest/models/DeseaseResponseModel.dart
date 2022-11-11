//
// import 'dart:convert';
//
// MentalResponsemodel MentalResponsemodelFromJson{String str) =>
//     MentalResponsemodel.fromJson{json.decode{str));
//
// String MentalResponsemodelToJson{MentalResponsemodel data) =>
//     json.encode{data.toJson{));
//
// class MentalResponsemodel {
//   MentalResponsemodel{{
//     this.MentalResponsemodel,
//   });
//
//   late MentalResponsemodel? MentalResponsemodel;
//
//   factory MentalResponsemodel.fromJson{Map<String, dynamic> json) =>
//       MentalResponsemodel{
//         suggestedJob: MentalResponsemodel.fromJson{json["MentalResponsemodel"]),
//       );
//
//   Map<String, dynamic> toJson{) => {
//     "suggested_job": MentalResponsemodel!.toJson{),
//   };
// }
//
//
// class MentalResponsemodel {
//   int? id;
//   int? user;
//   int? above30Age;
//   int? city;
//   int? sadnessMomentarily;
//   int? timeOfDay;
//   int? changesInLife;
//   int? activities;
//   int? supported;
//   int? meanSomething;
//   int? mentalHealthCondition;
//   int? leave;
//   int? substanceAbuse;
//   int? therepy;
//   int? concentrating;
//   int? prediction;
//
//   MentalResponsemodel{
//       {this.id,
//         this.user,
//         this.above30Age,
//         this.city,
//         this.sadnessMomentarily,
//         this.timeOfDay,
//         this.changesInLife,
//         this.activities,
//         this.supported,
//         this.meanSomething,
//         this.mentalHealthCondition,
//         this.leave,
//         this.substanceAbuse,
//         this.therepy,
//         this.concentrating,
//         this.prediction});
//
//   MentalResponsemodel.fromJson{Map<String, dynamic> json) => SuggestedJob {
//     id = json['id'];
//     user = json['user'];
//     above30Age = json['above_30_age'];
//     city = json['city'];
//     sadnessMomentarily = json['sadness_momentarily'];
//     timeOfDay = json['time_of_day'];
//     changesInLife = json['changes_in_life'];
//     activities = json['activities'];
//     supported = json['supported'];
//     meanSomething = json['mean_something'];
//     mentalHealthCondition = json['mental_health_condition'];
//     leave = json['leave'];
//     substanceAbuse = json['substance_abuse'];
//     therepy = json['therepy'];
//     concentrating = json['concentrating'];
//     prediction = json['prediction'];
//   }
//
//   Map<String, dynamic> toJson{) {
//     final Map<String, dynamic> data = new Map<String, dynamic>{);
//     data['id'] = this.id;
//     data['user'] = this.user;
//     data['above_30_age'] = this.above30Age;
//     data['city'] = this.city;
//     data['sadness_momentarily'] = this.sadnessMomentarily;
//     data['time_of_day'] = this.timeOfDay;
//     data['changes_in_life'] = this.changesInLife;
//     data['activities'] = this.activities;
//     data['supported'] = this.supported;
//     data['mean_something'] = this.meanSomething;
//     data['mental_health_condition'] = this.mentalHealthCondition;
//     data['leave'] = this.leave;
//     data['substance_abuse'] = this.substanceAbuse;
//     data['therepy'] = this.therepy;
//     data['concentrating'] = this.concentrating;
//     data['prediction'] = this.prediction;
//     return data;
//   }
// }
//
//
//
//
//
//
//
//
//
//
