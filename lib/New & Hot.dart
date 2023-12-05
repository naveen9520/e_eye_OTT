import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'classpage.dart';
class hotpage1 extends StatefulWidget {
  const hotpage1({super.key});

  @override
  State<hotpage1> createState() => _hotpage1State();
}

class _hotpage1State extends State<hotpage1> {

  @override
  Widget build(BuildContext context) {

    return  DefaultTabController(
      
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.white,
          bottom:   TabBar(
            labelColor: Colors.black,
            tabs: [
            Tab(text: "Free - Newly Added",),
            Tab(text: "Coming Soon",),
          ],
          ),
          ),
          body: TabBarView(
            children: [
             Container(
               height: 800,
               child: ListView.builder(
                   itemCount:hotPage.length,
                   itemBuilder:(BuildContext con, index){
                 return Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       height:300 ,
                       width: double.infinity,
                       decoration: BoxDecoration(
                         color:Colors.black,
                         image: DecorationImage(
                             image: NetworkImage(hotPage[index].image),fit: BoxFit.fill)
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(0,0,250,0),
                       child: Container(
                         height:100 ,
                         width:200,
                         decoration: BoxDecoration(
                           color:Colors.black,
                           image: DecorationImage(
                               image: NetworkImage(hotPage[index].textImage),fit: BoxFit.fill)
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(0,0,260,20),
                       child: RichText(text: TextSpan(text: 'Blockbuster',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange))),
                     ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(10,0,0,0),
                       child: Row(
                           children:[ RichText(text: TextSpan(text: '2022 . 5 Languages .',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey)),),
                       Container(
                         height: 20,
                         width: 70,
                         color: Colors.grey,
                         child: Center(child: Text("U/A 16+",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15,color: Colors.white),)),
                       ),
                             Text(". Action . Thriller",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey),)
                   ],
                       ),
                     ),
                     // Text(hotPage[index].Text,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16,color: Colors.grey),),
                     ReadMoreText(hotPage[index].Text,
                       trimLines:3,
                       colorClickableText: Colors.white,
                       trimMode: TrimMode.Line,
                       trimCollapsedText: 'Show more',
                       trimExpandedText: 'Show less',
                        style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16,color: Colors.grey),
                     ),

                     Padding(
                       padding: const EdgeInsets.all(15),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           // Container(
                           //   height: 100,
                           //   width: 50,
                           // )
                           // ElevatedButton(
                           //     onPressed: (){}, child: Row(
                           //   children: [
                           //     Icon(Icons.play_arrow),
                           //     Text("Watch Now")
                           //   ],),style:ElevatedButton.styleFrom(fixedSize: Size(200, 50)) ,),
                         ElevatedButton.icon(
                           onPressed: (){}, icon: Icon(Icons.play_arrow),
                             label:Text('Watch Now'),
                           style: ElevatedButton.styleFrom(
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(5),),
                               fixedSize: Size(250, 40),
                             foregroundColor: Colors.black,
                             backgroundColor: Colors.white,
                           ),
                         ),
                           ElevatedButton(onPressed: (){}, child: Row(
                             children: [
                               Icon(Icons.add),
                             ],
                           ),style: ElevatedButton.styleFrom(fixedSize: Size(50, 40),backgroundColor: Colors.grey.withOpacity(.5)),

                           ),
                         ],
                       ),
                     ),
                     ]
                 );
               }
               ),
             ),
              Container(
                height: 800,
                child: ListView.builder(
                    itemCount:hotPage.length,
                    itemBuilder:(BuildContext con, index){
                      return Column(
                          children: [
                            Container(
                              height:300 ,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color:Colors.black,
                                  image: DecorationImage(
                                      image: NetworkImage(hotPage[index].image),fit: BoxFit.fill)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,0,250,0),
                              child: Container(
                                height:100 ,
                                width:200,
                                decoration: BoxDecoration(
                                    color:Colors.black,
                                    image: DecorationImage(
                                        image: NetworkImage(hotPage[index].textImage),fit: BoxFit.fill)
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,0,260,20),
                              child: RichText(text: TextSpan(text: 'Blockbuster',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange))),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10,0,0,0),
                              child: Row(
                                children:[ RichText(text: TextSpan(text: '2022 . 5 Languages .',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey)),),
                                  Container(
                                    height: 20,
                                    width: 70,
                                    color: Colors.grey,
                                    child: Center(child: Text("U/A 16+",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15,color: Colors.white),)),
                                  ),
                                  Text(". Action . Thriller",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey),)
                                ],
                              ),
                            ),
                            Text(hotPage[index].Text,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16,color: Colors.grey),)
                          ]
                      );
                    }
                ),
              ),
          ],
          ),
        ),
      ),
    );
  }
}


