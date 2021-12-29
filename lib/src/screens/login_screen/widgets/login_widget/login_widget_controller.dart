class LoginWidgetController {
 bool login(String email, String password) {
   
   print(">>> $email e $password");
   
   if(email=="victorruan@gmail.com" && password=="135algumacoisa"){
     return true;
   } else{
     return false;
   }
 }
}