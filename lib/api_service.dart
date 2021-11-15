import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'vegetales.dart';

class ApiService {
  final String url = "https://carretillapp.azurewebsites.net/api/Verduras";

  Future<List<vegetales>> get getData async{
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type' : 'application/json',
      'Accept' : 'application/json',
    });
    if(response.statusCode == 200){
      var jsonResponse = jsonDecode(response.body);
      List<vegetales> Vegetales =[];
      for(var model in jsonResponse){
        vegetales vegetal =vegetales.fromJson(model);
        Vegetales.add(vegetal);
      }
      return Vegetales;
    }
    else{
      throw Exception('Error al llamar al API');
    }
  }
 static Future<Map> postVerduras (String verdura, String precio, String imagen)async{
   String url = 'https://carretillapp.azurewebsites.net/api/Verduras';
   final response = await http.post(Uri.parse(url), 
   headers: {'Content-Type' : 'application/json'
   },
   body: jsonEncode({"verdura": verdura, "precio": int.parse(precio), "imagen": imagen}),);
 }

}