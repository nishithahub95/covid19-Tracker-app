import 'dart:convert';

import 'package:covid_tracker/Model/WorldStatesModel.dart';
import 'package:covid_tracker/services/utils/app_urls.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class StatesServices{
 Future<WorldStatesModel>fetchWorldStatesRecord()async{
   final response=await http.get(Uri.parse(AppUrl.worldStatesApi));
   if(response.statusCode==200){
     var data=jsonDecode(response.body);
     return WorldStatesModel.fromJson(data);
   }else{
     throw Exception('Error');
   }

 }
 Future<List<dynamic>>fetchCountriesList()async{
   final response=await http.get(Uri.parse(AppUrl.countriesList));
   if(response.statusCode==200){
     var data=jsonDecode(response.body);
     return data;
   }else{
     throw Exception('Error');
   }

 }
}