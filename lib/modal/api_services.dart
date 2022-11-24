import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie_api/modal/user_model2.dart';

class ApiService{
  Future<UserModel> getUserData() async{
   Response response = await get(Uri.parse("https://reqres.in/api/users?page=2"));
   if(response.statusCode==200){
    final  result = jsonDecode(response.body);
    return result((e) => UserModel.fromJson(e));
   }else{
    throw Exception(response.reasonPhrase);
   }
  }
 }