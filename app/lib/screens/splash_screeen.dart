import 'package:app/color_constants/utils.dart';
import 'package:app/screens/login_screen.dart';
import 'package:flutter/material.dart';



class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body:  Column(
         children: [
           Container(
        width: 500.0,
       height: 400.0,
       decoration: BoxDecoration(
         image: const DecorationImage(image: NetworkImage("assets/img1.png" )),
        color: Primarycolors.color1,
         borderRadius: BorderRadius.circular(20.0),
       ),
       child: const Center(
         child: Text(
            'Plantify',
            style: TextStyle(
              color: Primarycolors.color2,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 4
            ),
         ),
       ),
       
     ),
     const SizedBox(height: 20,),
     const Text(
        "GET READY BE HIGYENIC",
        style: TextStyle(
        color: Primarycolors.color1,
       fontWeight: FontWeight.w500,
       fontSize:25,
       letterSpacing: 4, 
     ),
     ),
     const SizedBox(height:5),
     const Text(
        "Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator",
        style: TextStyle(
        color: Primarycolors.color1,
       fontWeight: FontWeight.normal,
       fontSize:15,
       letterSpacing: 4, 
     ),
     ),
         const SizedBox(height: 20,),
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
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> login_screen()));
                              },
                              child : const Text(
                                "MASUK" , 
                                style: TextStyle(
                                  color: Primarycolors.color2,
                                  fontSize: 18.0
                                ),
                              ) ,                      
                            ),
                          )]
     ),
    );
  }
}