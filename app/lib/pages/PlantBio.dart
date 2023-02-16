import 'package:app/color_constants/utils.dart';
import 'package:flutter/material.dart';

class PlantBio extends StatefulWidget {
  const PlantBio({super.key});

  @override
  State<PlantBio> createState() => _PlantBioState();
}
class _PlantBioState extends State<PlantBio> {
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
        Icon(Icons.notifications , size: 25 , color: Primarycolors.color3,),
        const SizedBox(width: 18,),
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
              child: Image.network('assets/home1.png',)),
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
                  'Croton ',
                  style: TextStyle(
                      fontSize: 25 , 
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    ' Petra',
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
                  '\$200',
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
                  '6” h',
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
                         'No green thumb required to keep our artificial Croton Petra plant looking lively and lush anywhere you place it.',
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
                Padding(padding: EdgeInsets.only(left: 20)),
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
                    Image.network('assets/home2.png'),
                    Image.network('assets/footprint.png'),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                   Text('Air' , style:  TextStyle(fontWeight: FontWeight.bold),),
                    Text('Purifier', style:  TextStyle(fontWeight: FontWeight.bold),),
                    Text('Peperomia' , style:  TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 5 )),
                       Text(
                  '\$350',
                  style: TextStyle(
                    fontSize: 17 , 
                    fontWeight: FontWeight.bold,
                    color: Primarycolors.color3
                  ),
                  ),
                  const SizedBox(width: 8,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
                    ],
                  )
                  ],
                 )
                  ],
              ),
              
           ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                height: 100,
                width: 250,
                decoration: const BoxDecoration(
                  color: Primarycolors.color9,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20)
                  ),
                ),
                child:
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget> [
                    Image.network('assets/plant.png'),
                    Image.network('assets/footprint.png'),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                   Text('Air' , style:  TextStyle(fontWeight: FontWeight.bold),),
                    Text('Purifier', style:  TextStyle(fontWeight: FontWeight.bold),),
                    Text('Cactus' , style:  TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 5 )),
                       Text(
                  '\$260',
                  style: TextStyle(
                    fontSize: 17 , 
                    fontWeight: FontWeight.bold,
                    color: Primarycolors.color3
                  ),
                  ),
                  const SizedBox(width: 8,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline))
                    ],
                  )
                  ],
                 )
                  ],
              ),
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
                       Padding(padding: EdgeInsets.only(left: 100 )),
                      Text(
                        "Just Scan and the AI will know exactly",
                        style: TextStyle(
                          wordSpacing: 3
                        ),
                        ),
                         SizedBox(height: 20,),
                         TextButton(
                          onPressed: (){},
                          child: const Text('Scan Now' ),
                           style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Primarycolors.color1),
                            backgroundColor: MaterialStateProperty.all(Primarycolors.color7),
                            shape: MaterialStateProperty.all <RoundedRectangleBorder>(
                              RoundedRectangleBorder(
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
    ]),])));
  }
}