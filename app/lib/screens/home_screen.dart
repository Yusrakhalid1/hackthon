import 'package:app/color_constants/utils.dart';
import 'package:app/screens/favourite.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/navigation%20bar/navigation.dart';
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> { 
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
       child: Padding(
         padding: const EdgeInsets.all(22.0),
         child: Column(
          children :[
            Image.network('assets/homepic.jpg' , alignment: Alignment.bottomCenter,),
            const SizedBox( height: 20,),
           const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search , color: Primarycolors.color3,),
                suffixIcon: Icon(Icons.qr_code_scanner ,color: Primarycolors.color3),

              ),
            ),
            const SizedBox(height: 30,),
           Container(
            child: Column(
              children: [
                      Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 70)),
                Container(
                height: 270,
                width: 370,
                decoration: const BoxDecoration(
                  color: Primarycolors.color4,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4,4),
                      blurRadius: 8,
                      spreadRadius: 1,
                      color: Primarycolors.color9
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  ),
                ),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget> [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        const  Padding(padding: EdgeInsets.all(12)),
                        const Text(
                         'Air Purifier',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           letterSpacing: 3,
                           fontSize: 14,
                           color: Primarycolors.color3
                         ),
                   ),
                 const SizedBox(height: 10,),
                 const  Text(
                         'Peperomia',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           letterSpacing: 5,
                           fontSize: 17,
                           color: Primarycolors.color3
                         ),
                   ),
                  const Padding(padding: EdgeInsets.only(left: 12)),
                    const SizedBox(height: 80,),
                   Row(
                    children: [
                       const Text(
                          '\$400',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15
                          ),
                          ), 
                           const Padding(padding: EdgeInsets.only(right: 5)),
                      Image.network('assets/favourite.png'),
                  
                            const Padding(padding: EdgeInsets.only(right: 5)),
                             Image.network('assets/home4.png'),
                    ],
                   )
                      ],
                    ),
                    Image.network('assets/footprint.png'),
                    Image.network('assets/home2.png'),
                 
                            ]
                            ),
              ),
               ],
            ),
              ] 
            )
         ),
         const SizedBox(height: 80,),
           Container(
            child: Column(
              children: [
                      Row(
              children: [
               const Padding(padding: EdgeInsets.only(left: 70)),
                Container(
                height: 270,
                width: 380,
                decoration: const BoxDecoration(
                  color: Primarycolors.color7,
                   boxShadow: [
                    BoxShadow(
                      offset: Offset(4,4),
                      blurRadius: 8,
                      spreadRadius: 1,
                      color: Primarycolors.color4
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  ),
                ),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget> [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:    [
                       const Padding(padding: EdgeInsets.all(12)),
                      const  Text(
                         'Air Purifier',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           letterSpacing: 3,
                           fontSize: 14,
                           color: Primarycolors.color3
                         ),
                   ),
               const  SizedBox(height: 10,),
                 const  Text(
                         'Watermelon',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           letterSpacing: 5,
                           fontSize: 17,
                           color: Primarycolors.color3
                         ),
                   ),
                  //  Padding(padding: EdgeInsets.only(left: 50, right: 50, bottom: 200)),
                   const  SizedBox(height: 80,),
                   Row(
                    children: [
                        const Text(
                          '\$350',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15
                          ),
                          ), 
                          const Padding(padding: EdgeInsets.all(12.0)),
                          Image.network('assets/favourite.png'),
                            const Padding(padding: EdgeInsets.all(5.0)),
                          // Image.network('assets/home1.png'),
                       
                    ],
                   )
                      ],
                    ),
                     Image.network('assets/footprint.png'),
                  Image.network('assets/home2.png'),
                 
                       ]),
                
             ),
             ],
            ),
              ] 
            )
         ),
         const SizedBox(height: 70,),
         Container(
          height: 200,
          width: 350,
           decoration: const BoxDecoration(
                  color: Primarycolors.color4,
                   boxShadow: [
                    BoxShadow(
                      offset: Offset(4,4),
                      blurRadius: 8,
                      spreadRadius: 1,
                      color: Primarycolors.color9
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  ),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/img1.png' ,alignment: Alignment.centerLeft ),
                     Image.asset('assets/circle2.png',alignment: Alignment.bottomLeft,),
                  const Padding(padding: EdgeInsets.only(left: 2 , bottom: 25)),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                   const Text('Invite a Friend and ' , style: TextStyle(fontSize: 20, letterSpacing: 3 , wordSpacing: 4 , fontWeight: FontWeight.w700 , color: Primarycolors.color3),),
                   const SizedBox(height: 5,),
                   const Text('earn Plantify rewards' , style: TextStyle(fontSize: 20, letterSpacing: 3 , wordSpacing: 4 , fontWeight: FontWeight.w700 , color: Primarycolors.color3),),
                   const SizedBox(height: 10,),
                    Row(
                      children: const [
                        Text(
                          'Redeem them to get',
                          style: TextStyle(
                            color: Primarycolors.color1,
                            fontSize: 15 ,
                            wordSpacing: 2
                          ),
                        ),
                      ],
                    ),
                   const SizedBox(height: 5,),
                     const Text(
                      ' instant discounts',
                      style: TextStyle(
                        color: Primarycolors.color1,
                        fontSize: 15 ,
                        wordSpacing: 2
                      ),
                    ),
                    const SizedBox( height: 10),
                    TextButton(
                          onPressed: (){},
                           child: 
                           Text(
                            'Invite'  , style: TextStyle(color: Primarycolors.color2),
                            ),
                           style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Primarycolors.color1),
                            backgroundColor: MaterialStateProperty.all(Primarycolors.color1),
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
                ],
                ),
         ),
          const SizedBox(height: 60,),
           Container(
            child: Column(
              children: [
                      Row(
              children: [
              const Padding(padding: EdgeInsets.only(left: 70)),
                Container(
                height: 270,
                width: 380,
                decoration: const BoxDecoration(
                  color: Primarycolors.color4,
                   boxShadow: [
                    BoxShadow(
                      offset: Offset(4,4),
                      blurRadius: 8,
                      spreadRadius: 1,
                      color: Primarycolors.color9
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  ),
                ),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget> [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        const  Padding(padding: EdgeInsets.all(12)),
                        const Text(
                         'Air Purifier',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           letterSpacing: 3,
                           fontSize: 14,
                           color: Primarycolors.color3
                         ),
                   ),
                 const SizedBox(height: 10,),
                 const  Text(
                         'Croton Petra',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           letterSpacing: 5,
                           fontSize: 17,
                           color: Primarycolors.color3
                         ),
                   ),
                   Padding(padding: EdgeInsets.only(left: 12)),
                    const SizedBox(height: 80,),
                   Row(
                    children: [
                       const Text(
                          '200/=',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15
                          ),
                          ), 
                           const Padding(padding: EdgeInsets.only(right: 5)),
                          Image.network('assets/favourite.png'),
                            const Padding(padding: EdgeInsets.only(right: 5)),
                            Image.network('assets/home4.png'),
                  //         InkWell(
                  // onTap: (){
                  //   another_bio();
                  // },
                  // child: Ink.image(image: const AssetImage('assets/home4.png' ) )
                  // ),
                    ],
                   )
                      ],
                    ),
                    Image.network('assets/footprint.png'),
                    Image.network('assets/home1.png'),
                 
                            ]
                            ),
              ),
               ],
            ),
              ] 
            )
         ),
                 const SizedBox(height: 60,),
        //    Container(
        //     child: Column(
        //       children: [
        //               Row(
        //       children: [
        //         const Padding(padding: EdgeInsets.only(left: 5)),
        //         Container(
        //         height: 270,
        //         width: 465,
        //         decoration: const BoxDecoration(
        //           color: Primarycolors.color9,
        //           borderRadius: BorderRadius.all(
        //             Radius.circular(30)
        //           ),
        //         ),
        //         child: Row(
        //            mainAxisAlignment: MainAxisAlignment.end,
        //           children: <Widget> [
        //             Column(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               children:  [
        //                 const  Padding(padding: EdgeInsets.all(12)),
        //                 const Text(
        //                  'Air Purifier',
        //                  style: TextStyle(
        //                    fontWeight: FontWeight.bold,
        //                    letterSpacing: 3,
        //                    fontSize: 15,
        //                    color: Primarycolors.color3
        //                  ),
        //            ),
        //          const SizedBox(height: 10,),
        //          const  Text(
        //                  'Bird’s Nest Fern',
        //                  style: TextStyle(
        //                    fontWeight: FontWeight.bold,
        //                    letterSpacing: 5,
        //                    fontSize: 17,
        //                    color: Primarycolors.color3
        //                  ),
        //            ),
        //            Padding(padding: EdgeInsets.only(left: 12)),
        //             const SizedBox(height: 80,),
        //            Row(
        //             children: [
        //                const Text(
        //                   '160/=',
        //                   style: TextStyle(
        //                     fontWeight: FontWeight.w700,
        //                     fontSize: 15
        //                   ),
        //                   ), 
        //                    const Padding(padding: EdgeInsets.only(right: 5)),
        //                   Image.network('assets/favourite.png'),
        //                     const Padding(padding: EdgeInsets.only(right: 5)),
        //                    InkWell(
        //           onTap: (){},
        //           child: Ink.image(image: AssetImage('assets/home4.png' ) )
        //           ),
        //             ],
        //            )
        //               ],
        //             ),
        //             Image.network('assets/footprint.png'),
        //             Image.network(' assets/home6.png'),
                 
        //                     ]
        //                     ),
        //       ),
        //        ],
        //     ),
        //       ] 
        //     )
        //  ),
          const SizedBox(height: 60,),
           Column(
            children: [
              Image.network('assets/home7.png'),
              const SizedBox(height: 15,),
                RichText(
                        text: const TextSpan(
                         text:  "Caring for plants should be fun. That’s why we offer 1-on-1 virtual consultations from the comfort of your home or office. " ,
                      style: TextStyle(
                      color: Primarycolors.color3 , 
                       letterSpacing: 2,
                      wordSpacing: 3,
                      fontSize: 15
                      ),
                      children: [
                        TextSpan(
                          text: "------Learn More",
                          style: TextStyle(
                            color: Primarycolors.color1, 
                            fontSize: 15, 
                            fontWeight: FontWeight.bold
                          ),
                        )])),
                        const  SizedBox(height: 10,),
                       const Text(
                          'Plant a Life',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Primarycolors.color10
                          ),
                          ),
                        const SizedBox(height: 5,),
                       const Text(
                          'Live amongst Living',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Primarycolors.color10
                          ),
                          ),
                        const SizedBox(height: 5,),
                       const Text(
                        'Spread the joy',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Primarycolors.color3
                          ),
                        )
            ],
           )
          ]   
     ),
       )
     ),
         );

  }
 }