import 'package:app/color_constants/utils.dart';
import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  @override
  State<cart> createState() => _cartState();
}



class _cartState extends State<cart> {
  List images =[];
  TextEditingController _controller = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      backgroundColor: Primarycolors.color2,
      leading: Image(image: NetworkImage('assets/img1.png')),
      title: const Text(
        'Plantify',
        style: TextStyle(
         color: Primarycolors.color3,
         letterSpacing: 4,
         fontSize: 20,
         fontWeight: FontWeight.w500,
        ),
      ),
      actions: const [
         Icon(Icons.notifications , size: 25 , color: Primarycolors.color3,),
         SizedBox(width: 18,),
         Icon(Icons.align_horizontal_right , size: 25 , color: Primarycolors.color3,),
      ],
     ),
      body: Column(
        children: const [
          Padding(padding: EdgeInsets.only(left: 20 , top: 20)),
          Text(
            'Your Bag',
            style: TextStyle(
              color: Primarycolors.color1,
            fontSize: 30,
            fontWeight: FontWeight.bold
            ),
            )
        ],
      ),
    );
  }
}