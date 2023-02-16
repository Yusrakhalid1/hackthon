import 'dart:js_util';
import 'package:app/color_constants/utils.dart';
import 'package:app/controller/controllers.dart';
import 'package:app/navigation%20bar/navigation.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/signup_screen.dart';
import 'package:app/screens/splash_screeen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
   
   signin()async{
    try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: EmailtextController.text,
    password: PasswordtextController.text

  );
    Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>  navigation()));
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Primarycolors.color2,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> splash_screen()));
          },
           icon: Icon(Icons.arrow_back , color: Primarycolors.color3,)
           ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(       
              child: Column(   
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  <Widget> [
                  // Image.asset("assets/img1.png"),
                 const SizedBox(height: 30,),
                  const Text(
                      "Login",
                    style: TextStyle(
                    color: Primarycolors.color1,
                     fontSize: 25,
                     fontWeight: FontWeight.w800
                    ), 
                    ),
                    SizedBox(height: 20,),
                   const Text(
                      "Enter NISN and password for start studying now",
                     style: TextStyle(
                    color: Primarycolors.color1,
                     fontSize: 20,
                     fontWeight: FontWeight.w400
                    ),
                      ),
                      const SizedBox(height: 40,),
                      const Text(
                         "Username/Email"
                              ),
                      const SizedBox(height: 20,),
                       TextField(
                            obscureText: false,
                           controller: EmailtextController,
                          decoration:const  InputDecoration(
                             border : OutlineInputBorder(),
                          labelText: 'Enter Email',
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
                              "Password"
                              ),
                              const SizedBox(height: 20,),
                           TextField(
                            obscureText: true,
                           controller: PasswordtextController,
                          decoration: const InputDecoration(
                               border : OutlineInputBorder(),
                            hintText: 'Enter Password',
                            prefixIcon: Icon(
                              Icons.lock ,
                              color: Primarycolors.color3,
                              ),
                            fillColor: Primarycolors.color2,
                            filled: true,
                         ),      
                          ),
                          Text("Lupa password", style: TextStyle(color: Primarycolors.color1 ),),
                         const SizedBox(height: 40,),
                          Container(
                            width: 500,
                            child: RawMaterialButton(
                              fillColor:  Primarycolors.color1,
                              elevation: 1.0,
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                              ),
                              onPressed: (){
                                 signin();
                              },
                              child : const Text(
                                "Sign In" , 
                                style: TextStyle(
                                  color: Primarycolors.color2,
                                  fontSize: 18.0
                                ),
                              ) ,                      
                            ),
                          ),
                          const SizedBox(height: 40,),
                          Text('Create a New account to continue'),
                          Divider(),
                           Container(
                            width: 500,
                            child: RawMaterialButton(
                              fillColor:  Primarycolors.color1,
                              elevation: 1.0,
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                              ),
                              onPressed: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => signup_screen()));
                              },
                              child : const Text(
                                "Sign up" , 
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
      ),
    );
  }
}