import 'package:app/color_constants/utils.dart';
import 'package:app/navigation%20bar/navigation.dart';
import 'package:flutter/material.dart';

class another_bio extends StatefulWidget {
  const another_bio({super.key});

  @override
  State<another_bio> createState() => _another_bioState();
}
class _another_bioState extends State<another_bio> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      backgroundColor: Primarycolors.color4,
      leading: const Image(image: NetworkImage('assets/img1.png') , width: 2000,),
      title: const Text(
        'Plantify',
        style: TextStyle(
         color: Primarycolors.color3,
         letterSpacing: 4,
         fontSize: 20,
         fontWeight: FontWeight.w500
        ),
      ),
      actions: const [
         Icon(Icons.search , size: 25 , color: Primarycolors.color3,),
         SizedBox(width: 18,),
         Icon(Icons.align_horizontal_right , size: 25 , color: Primarycolors.color3,),
      ],
     ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           Stack(
            children: [
             Image.network('assets/base.jpg'),
             Positioned(
            height: 250,width: 200,left: 250,bottom: 50,
              child: Image.network('assets/home2.png',)),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 20 , left: 12)),
             const Text(
                'Air Purifier' ,
                 style: TextStyle(
                  fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 12),
             Image.network('assets/footprint.png'),
            ],
           ),
           Padding(
             padding: const EdgeInsets.only(left: 20 , top: 50 ),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Watermelon ',
                  style: TextStyle(
                      fontSize: 25 , 
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    ' Peperomia',
                    style: TextStyle(
                      fontSize: 25 , 
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                    ),
                  const SizedBox(height: 35,),
                  Text(
                  'Price',
                  style: TextStyle(
                    fontSize: 17 , 
                    fontWeight: FontWeight.w400,
                    color: Primarycolors.color11
                  ),
                  ),
                   const SizedBox(height: 8,),
                  Text(
                  '\$350',
                  style: TextStyle(
                    fontSize: 17 , 
                    fontWeight: FontWeight.bold,
                    color: Primarycolors.color3
                  ),
                  ),
                 const SizedBox(height: 35,),
                  Text(
                  'Size',
                  style: TextStyle(
                    fontSize: 17 , 
                    fontWeight: FontWeight.w400,
                    color: Primarycolors.color11
                  ),
                  ),
                   const SizedBox(height: 8,),
                  Text(
                  '5” h',
                  style: TextStyle(
                    fontSize: 17 , 
                    fontWeight: FontWeight.bold,
                    color: Primarycolors.color3
                  ),
                  ),  
              ],
             ),
           ),
           SizedBox(height: 200,),
           Padding(
             padding: const EdgeInsets.only(top: 300 , left: 33),
             child: Row(
              children: [
                Image.network('assets/home4.png' ),
                SizedBox( width: 30,),
               Image.network('assets/home8.png')
              ],
             ),
           )
            ],
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children:  [
                 Row(
                   children: const [
                     Text('Overview' ,  style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                             SizedBox(height: 50,),    
                   ],
                 ),
                 Row(
                  children: const [
                    Icon(Icons.pin_drop , color: Primarycolors.color6,),
                        Text('250ml' , style: TextStyle(color: Primarycolors.color1 ),),
                         SizedBox(width: 10,), 
                        Text('Water' , style: TextStyle(color: Primarycolors.color3 ),),
                       SizedBox(width: 50,),
                        Icon(Icons.sunny , color: Primarycolors.color6,),
                        Text('35-40%' , style: TextStyle(color: Primarycolors.color1 ),),
                        SizedBox(width: 10,),
                        Text('Light' , style: TextStyle(color: Primarycolors.color3 ),),
                          SizedBox(width: 50,),
                        Icon(Icons.align_horizontal_center_outlined , color: Primarycolors.color6,),
                        SizedBox(width: 10,),
                        Text('250gm' , style: TextStyle(color: Primarycolors.color1 ),),
                        SizedBox(width: 10,),
                        Text('Fertilizer' , style: TextStyle(color: Primarycolors.color3 ),)
                  ],
                 ),
                 const SizedBox( height: 30,),
                  const  Text('Plant Bio',   style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),),
                            const SizedBox( height: 10,),
                           const Text(
                         'No green thumb required to keep our artificial watermelon peperomia plant looking lively and lush anywhere you place it.',
                           style: TextStyle(
                            wordSpacing: 3,
                           ),
                            ),     
               ],             
             ),
           ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Row(
            children: [
              Image.network('assets/plantbio3.png' , height: 120, width: 144,),
               const SizedBox(width: 10,),
              Image.network('assets/plantbio.png' , height: 120, width: 144,),
               const SizedBox(width: 10,),
              Image.network('assets/plantbio2.png' , height: 120, width: 144,),
            ],
           ),
         ),
            Row(
              children: [
              const Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                height: 100,
                width: 200,
                decoration: const BoxDecoration(
                  color: Primarycolors.color4,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20)
                  ),
                ),
                child: 
                Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget> [
                    const Padding(padding: EdgeInsets.only(left: 17)),
                    Image.network('assets/home2.png'),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    Image.network('assets/footprint.png'),
                    Column(
                     children:  [
                      const Text('Air'),
                      const Text('Purifier'),
                      const Text('Peperomia'),
                      const SizedBox(height: 5,),
                      Row(
                        children:  [
                      const Text(
                        '\$400' , 
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                        const Padding(padding: EdgeInsets.only(right: 15)),
                        Image.network('assets/favourite.png'),
                        ],
                      ),
                     ],
                    )
                  ],
              ),     
           ),
           Row(
              children: [
               const Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                height: 100,
                width: 200,
                decoration: const BoxDecoration(
                  color: Primarycolors.color4,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20)
                  ),
                ),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget> [
                  const Padding(padding: EdgeInsets.only(left: 5)),
                    Image.network('assets/footprint.png'),
                  const Padding(padding: EdgeInsets.only(left: 15)),
                    Image.network('assets/home1.png'),
                       Column(
                     children:  [
                      const Text('Air'),
                      const Text('Purifier'),
                      const Text('Croton Petra'),
                      const SizedBox(height: 5,),
                      Row(
                        children:  [
                      const Text(
                        '\$200' , 
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                        const Padding(padding: EdgeInsets.only(right: 15)),
                        Image.network('assets/favourite.png'),
                        ],
                      ),
                     ],
                    )
                  ]
              ),
              
           ),
         ],
       ),
         ],
     ),
          const SizedBox(height: 30,),
            Column(
              children: [
                Container(
                height: 200,
                width: 400,
                decoration: const BoxDecoration(
                  color: Primarycolors.color7,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                 image: DecorationImage( image: NetworkImage('assets/plantbio5.png') , alignment: Alignment.centerRight),
                ),
               child:  Padding(
                 padding: const EdgeInsets.only(right: 180 , top: 20),
                 child: Column(
                  children:  <Widget> [
                   const Text(
                      'That very plant?' , 
                    style: TextStyle( 
                      fontWeight: FontWeight.bold , 
                      fontSize: 20),
                      ),
                      const SizedBox(height: 20,),
                      const Padding(padding: EdgeInsets.only(left: 100 )),
                     const Text(
                        "Just Scan and the AI will know exactly",
                        style: TextStyle(
                          wordSpacing: 3
                        ),
                        ),
                        const SizedBox(height: 20,),
                         TextButton(
                          onPressed: (){},
                          child: Text('Scan Now' ),
                           style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Primarycolors.color1),
                            backgroundColor: MaterialStateProperty.all(Primarycolors.color7),
                            shape: MaterialStateProperty.all <RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                                side: BorderSide(color: Primarycolors.color1)
                              )
                            )
                            
                           ),
                          ),
                  ],
                 ),
               ),
                ),
              ],
            ),
    ]),
    ),);
  }
}