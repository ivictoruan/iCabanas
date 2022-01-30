import 'package:flutter/material.dart';

class LoginWidgetController {
 bool login(String email, String password) {
   
   debugPrint(">>> $email and $password");
   
   if(email=="a" && password=="a"){
     return true;
   } else{
     return false;
   }
 }
}