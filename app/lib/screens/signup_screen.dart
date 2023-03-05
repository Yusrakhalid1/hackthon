import 'package:app/color_constants/utils.dart';
import 'package:app/controller/controllers.dart';
import 'package:app/navigation%20bar/navigation.dart';
import 'package:app/screens/Cart_Item.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/login_screen.dart';
import 'package:app/screens/order_done.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class signup_screen extends StatefulWidget {
  const signup_screen({super.key});

  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {

 signup() async{
try{
  final Credential =await FirebaseAuth.instance.createUserWithEmailAndPassword(email:EmailtextController.text, password: PasswordtextController.text);
  Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => navigation()));

}on FirebaseAuthException catch(e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
}
catch (e) {
  print(e);
}
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Primarycolors.color2,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> login_screen()));
          },
           icon: Icon(Icons.arrow_back , color: Primarycolors.color3,)
           ),
      ),
      body:SingleChildScrollView(
         child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget> [
             const SizedBox(height: 30,),
              const Text(
                  "Signup",
                  textAlign: TextAlign.center,
                style: TextStyle(
                color: Primarycolors.color1,
                 fontSize: 25,
                 fontWeight: FontWeight.w800
                ), 
                ),
                SizedBox(height: 20,),
               const Text(
                  "Enter No. Your cellphone and wait for the code authentic sent",
                  style: TextStyle(
                color: Primarycolors.color1,
                 fontSize: 20,
                 fontWeight: FontWeight.w400
                ),    
                  ),
                  const SizedBox(height: 40,),
                  const Text(
                     "NISN"
                          ),
                   TextField(
                        obscureText: false,
                        controller: EmailtextController,
                      decoration:const InputDecoration(
                           border : OutlineInputBorder(),
                      labelText: 'NISN number',
                        prefixIcon: Icon(
                          Icons.lock ,
                           color: Primarycolors.color3,
                           ),
                        fillColor: Primarycolors.color2,
                        filled: true,
                      ),
                      ),
                       const SizedBox(height: 40,),
                        const Text(
                          "NISN"
                          ),
                       TextField(
                        obscureText: true,
                        controller: PasswordtextController,
                      decoration:const InputDecoration(
                           border : OutlineInputBorder(),
                        hintText: 'NISN number',
                        prefixIcon: Icon(
                          Icons.lock ,
                          color: Primarycolors.color3,
                          ),
                        fillColor: Primarycolors.color2,
                        filled: true,
                     ),      
                      ),
                     const SizedBox(height: 40,),
                      Container(
                        width: 500,
                        child: RawMaterialButton(
                          fillColor: Primarycolors.color1,
                          elevation: 1.0,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)
                          ),
                          onPressed: (){
                            signup();
                          },
                          child : const Text(
                            "Sign Up" , 
                            style: TextStyle(
                              color: Primarycolors.color2,
                              fontSize: 18.0
                            ),
                          ) ,                      
                        ),
                      ),
            ]
          ),
          ),
       ),
    );
  }
}