class SingupWidgetController {
 bool singup(String name, String email, String password) {
   
   print(">>> $name, $email e $password");
   
   if(name =="" && email=="" && password==""){
     return false;
   } else{
     return true;
   }
 }
}