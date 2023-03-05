import 'package:app/color_constants/utils.dart';
import 'package:app/screens/Cart_Item.dart';
import 'package:app/screens/signup_screen.dart';
import 'package:app/screens/splash_screeen.dart';
import 'package:flutter/material.dart';

class orderdone extends StatefulWidget {
  const orderdone({super.key});

  @override
  State<orderdone> createState() => _orderdoneState();
}

class _orderdoneState extends State<orderdone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Primarycolors.color2,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Primarycolors.color3,
            ), 
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));
          },
          )
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
                  children:  [
                    Row(
                      children: [
                     const Padding(padding: EdgeInsets.only( top: 20, left: 70, right: 30)),
                     Image.network('assets/circle.png' , height: 200,),
                     const Padding(padding: EdgeInsets.only( top: 200, left: 80, right: 10)),
                     Image.network('assets/circle.png' , height: 100,),
                      ],
                    ),   
                    const SizedBox(height: 40,),
                  const  Text(
                      'Order',
                      style: TextStyle(
                        fontSize: 25 , 
                        fontWeight: FontWeight.bold,
                        color: Primarycolors.color1
                      ),
                    ),
                  const  Text(
                      'Recieved',
                      style: TextStyle(
                        fontSize: 25 , 
                        fontWeight: FontWeight.bold,
                        color: Primarycolors.color1
                      ),
                    ),
                    const SizedBox(height: 20,),
                  const  Text(
                      'Order ID : #293092309',
                      style: TextStyle(
                        color: Primarycolors.color3,
                        fontSize: 15
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Image.network('assets/img1.png' , height: 100,),
                     const SizedBox(height: 20,),
                          Container(
                            width: 400,
                            child: RawMaterialButton(
                              fillColor: Primarycolors.color1,
                              elevation: 1.0,
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                              ),
                              onPressed: () {  
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> splash_screen()));
                              },
                              child : const Text(
                                "KIRIM" , 
                                style: TextStyle(
                                  color: Primarycolors.color2,
                                  fontSize: 18.0
                                ),
                              ) ,                      
                            ),
                          ),
                  ],
                ),
          ),
        ),
      ),
        
    );
  }
}