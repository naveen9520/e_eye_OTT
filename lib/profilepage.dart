import 'package:flutter/material.dart';

import 'classpage.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 250,
        flexibleSpace: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  defaultcolorblue,
                  defaultcolorblack,
                ],
            ),
          ),
         child: Column(
           children: [
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                   children: [
                     Container(
                       height: 100,
                       width:100 ,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: AssetImage('assets/profileimg.png'),fit: BoxFit.fill)
                       ),
                     ),
                   ],
                 ),
                 Row(
                   children: [
                     Icon(Icons.ac_unit,color: Colors.white,),
                     Padding(
                       padding: const EdgeInsets.all(15),
                       child: RichText(text: TextSpan(text: "Help & Settings",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.white))),
                     )
                   ],
                 )
               ],
             ),
             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Row(
                   children: [
                     RichText(text: TextSpan(text: 'Subscribe to enjoy\nDisney+ Hotstar\n+91 8*******03',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.white),),),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(10,0,0,30),
                       child: Icon(Icons.keyboard_arrow_down_rounded,color: Colors.white,size: 50,),
                     ),
                   ],
                 ),
                 Row(
               children: [
                 Column(
                   children: [
                     TextButton(onPressed: (){}, child: Text('Subscribe',style: TextStyle(),),style: TextButton.styleFrom(
                       foregroundColor: Colors.white,
                       backgroundColor:defaultcolorblue,
                       fixedSize: Size(150, 50),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                     ),
                     ),
                     Text("Plans start at 149",style: TextStyle(color: Colors.grey),)
                   ],
                 ),
               ],
             ),
           ],
         ),
  ]
        ),
      ),
         ),
      body:
      Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('Profiles',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25,color: Colors.white),),
                ),
              ],
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      border:Border.all(
                        color: Colors.white,
                        width: 3.0,),
                      shape:BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/profileimg.png'),fit: BoxFit.fill)
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      border:Border.all(
                        color: Colors.white,
                        width: 3.0,),
                      shape:BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/profileimg.png'),fit: BoxFit.fill)
                  ),
                ),
                FloatingActionButton.large(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.grey.withOpacity(.5),
                  onPressed: (){},child: Icon(Icons.add),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
