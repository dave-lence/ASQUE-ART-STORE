import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:asque_art_store/models/product_model.dart';

class SignUpProvider with ChangeNotifier{
  
  bool user = false;

  Future<String> signUp(String userName ,String email, String password, String confirmPassword) async{
     final apiUri = Uri.parse(
        'https://asque-media-development.onrender.com/api/v1/auth/register');
     try{
      final response = await http.post(apiUri,
      headers: {'Content-Type': 'application/json'},
      body: {
        'username': userName,
        'email': email,
        'password': password,
        'confirmPassword': confirmPassword
      } 
      );

      if(response.statusCode == 201){
        user = true;
        return 'success';
      } else{
        return 'Sign-up failed: ${response.body}';
      
      } 
     }  catch(error) {
       return 'Sign-up failed: $error';
     }
  }

  Future<String> signIn(String email, String password) async{
     final apiUri = Uri.parse(
        'https://asque-media-development.onrender.com/api/v1/auth/login');
     try{
      final response = await http.post(apiUri,
      body: {
        'email': email,
        'password': password,
       
      } 
      );

      if(response.statusCode == 201){
        user = true;
        return 'success';
      } else{
        return 'Sign-in failed: ${response.body}';
      } 
     }  catch(error) {
       return 'Sig-in failed: $error';
     }
  }
   

}