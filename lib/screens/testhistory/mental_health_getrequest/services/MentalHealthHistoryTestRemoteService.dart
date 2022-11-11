import 'package:healify/url/Url.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/MentalHealthHistoryGet.dart';



class MentalHealthHistoryTestRemoteService {

  late SharedPreferences prefs;

  // static get id123 => null;

  //
  // void initScreen{) async{
  //   int? id123;
  //   prefs = await SharedPreferences.getInstance{);
  //   if{prefs.getInt{'id')!=null){
  //
  //     id123 = prefs.getInt{'id');
  //     print{"AA che n url mate ni id che ");
  //     print{prefs.getInt{'id'));
  //     print{id123);
  //   }
  //   else{
  //     id123 = 22;
  //   }
  // }
  // @override
  // void initState{) {
  //
  //   initScreen{);
  // }
  //



  // static var uri = Url.mentalhealth;




  Future<List<MentalHealthHistoryGet>?> getPosts{) async {
    prefs = await SharedPreferences.getInstance{);
    var id123 = prefs.getInt{'id');
    var uri = Uri.parse{'https://3441-2405-204-8489-184b-f047-73ab-6c61-c026.in.ngrok.io/gettest?user='+id123.toString{));
    print{uri);
    var client = http.Client{);
    var response = await client.get{uri);
    if {response.statusCode == 200) {
      var json = response.body;
      return mentalHealthHistoryGetFromJson{json);
    }
    return null;
  }
}
