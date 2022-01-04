class LoginWidgetController {
 bool login(String email, String password) {
   
   print(">>> $email and $password");
   
   if(email=="a" && password=="a"){
     return true;
   } else{
     return false;
   }
 }
}