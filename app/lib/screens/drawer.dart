import 'package:app/color_constants/utils.dart';
import 'package:flutter/material.dart';

class drawer_screen extends StatefulWidget {
  const drawer_screen({super.key});

  @override
  State<drawer_screen> createState() => _drawer_screenState();
}

class _drawer_screenState extends State<drawer_screen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Primarycolors.color1,
      elevation: 1.0,
     child:
       ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.shopping_bag_outlined),
            title: const Text('Shop' , style: TextStyle(color: Primarycolors.color2),),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.add_box),
            title: const Text('Plant Care', style: TextStyle(color: Primarycolors.color2),),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Community', style: TextStyle(color: Primarycolors.color2),),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('My Account', style: TextStyle(color: Primarycolors.color2),),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.fire_truck_outlined),
            title: const Text('Track Order', style: TextStyle(color: Primarycolors.color2),),
            onTap: () {},
          ),
          const SizedBox(height: 10,),
        const Center(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child:  Text(
                'Get The Dirt',
                style: TextStyle(
                  color: Primarycolors.color2,
                  fontSize: 20
                  ),),
          ),
        ),
               const SizedBox(height: 20,),
                const Center(
                   child: TextField(
                            obscureText: false,
                          decoration:  InputDecoration(
                            border: OutlineInputBorder(),
                          labelText: 'Enter your Email',
                         filled: true,
                          ),
                          ),
                 ),
                 const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                               Text(
                                 'FAQ' , 
                                 style: TextStyle(
                                 color: Primarycolors.color2 , fontSize: 20 , fontWeight: FontWeight.bold),
                                 ),
                               SizedBox(height: 20,),
                              Text(
                                'About US' ,
                                 style: TextStyle(
                                  color: Primarycolors.color2 , fontSize: 20 , fontWeight: FontWeight.bold),
                                  ),
                               SizedBox(height: 20,),
                               Text(
                                 'Contact Us' ,
                                  style: TextStyle(
                                   color: Primarycolors.color2 , fontSize: 20 , fontWeight: FontWeight.bold),
                                   ),
                            ],
                          ),
                        ),              
        ],
      ),
      );
  }
}