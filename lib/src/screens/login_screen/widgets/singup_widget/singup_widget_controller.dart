class SingupWidgetController {
 bool singup(String name, String email, String password) {
   
   print(">>> $name, $email e $password");
   
   if(name =="Victor" && email=="victorruan@gmail.com" && password=="135algumacoisa"){
     return true;
   } else{
     return false;
   }
 }
}