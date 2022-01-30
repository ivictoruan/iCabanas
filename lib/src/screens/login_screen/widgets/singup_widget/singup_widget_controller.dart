import 'package:flutter/cupertino.dart';

class SingupWidgetController {
 bool singup(String name, String email, String password) {
   
   debugPrint(">>> $name, $email e $password");
   
   if(name =="" && email=="" && password==""){
     return false;
   } else{
     return true;
   }
 }
}