
import 'package:app/color_constants/utils.dart';
import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Primarycolors.color1,
      ),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Hello"),
        ),
    drawer: Drawer(
      backgroundColor: Primarycolors.color1,
     child:
       ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: const Text('Shop' , style: TextStyle(color: Primarycolors.color2),),
            onTap: () {
              // Navigate to item 1
            },
          ),
          ListTile(
            title: Text('Plant Care', style: TextStyle(color: Primarycolors.color2),),
            onTap: () {
              // Navigate to item 2
            },
          ),
          ListTile(
            title: Text('Community', style: TextStyle(color: Primarycolors.color2),),
            onTap: () {
              // Navigate to item 2
            },
          ),
          ListTile(
            title: Text('My Account', style: TextStyle(color: Primarycolors.color2),),
            onTap: () {
              // Navigate to item 2
            },
          ),
          ListTile(
            title: Text('Track Order', style: TextStyle(color: Primarycolors.color2),),
            onTap: () {
              // Navigate to item 2
            },
          ),
          const SizedBox(height: 10,),
        const  Text(
            'Get The Dirt',
            style: TextStyle(
              color: Primarycolors.color2
              ),),
               const SizedBox(height: 20,),
                const Center(
                   child: TextField(
                            obscureText: false,
                          decoration:  InputDecoration(
                          labelText: 'Enter your Email',
                         filled: true,
                          ),
                          ),
                 ),
                        Text('FAQ' , style: TextStyle(color: Primarycolors.color2 , fontSize: 15 , fontWeight: FontWeight.bold),),
                        const SizedBox(height: 20,),
                         Text('About US' , style: TextStyle(color: Primarycolors.color2 , fontSize: 15 , fontWeight: FontWeight.bold),),
                        const SizedBox(height: 20,),
                         Text('Contact Us' , style: TextStyle(color: Primarycolors.color2 , fontSize: 15 , fontWeight: FontWeight.bold),),
                       
        ],
      ),
      )  );
  }
}