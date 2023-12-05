import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_eye/showDetails.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'classpage.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

int currentstate= 0;

class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CarouselSlider.builder(
                      options: CarouselOptions(
                        onPageChanged: (index, reason){
                          setState(() {
                            currentstate=index;
                          });
                        },
                        height: 300,
                        aspectRatio: 1,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                      ),
                      itemCount: homepage.length,
                      itemBuilder: (BuildContext context, int Index, int pageViweIndex) {
                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(homepage[Index].image),
                                  fit: BoxFit.fill)
                          ),
                        );
                      }
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,20,0,0),
                    child: TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor: Colors.grey.withOpacity(.3),
                          fixedSize: Size(200, 50)
                        ),
                        onPressed: (){}, icon: Icon(Icons.play_arrow,size: 25,), label: Text('Watch Now')),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,20,0,0),
                    child: SizedBox(
                      height: 30,
                      child: DotsIndicator(
                        dotsCount:homepage.length,
                        position: currentstate,
      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,20,0,0,),
                        child: RichText(text: TextSpan(text: 'Latest Releases',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white))),
                      )
                    ],
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width*.8,
                    child: ListView.builder(
                        scrollDirection:Axis.horizontal ,
                        itemCount: homepage.length,
                        itemBuilder: (BuildContext con, index){
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10,20,0,0),
                            child: Container(
                              height: 100,
                              width: 140,
                               decoration: BoxDecoration(
                                 image: DecorationImage(image: AssetImage(homepage[index].image),fit: BoxFit.fill)
                               ),
                            ),
                          );
      }
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,20,0,0),
                        child: RichText(text: TextSpan(text: 'ICC CWC 2023 and More',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white))),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,20,0,0),
                    child: Container(
                      height: 150,
                      child: ListView.builder(
                          scrollDirection:Axis.horizontal ,
                          itemCount: homepage.length,

                          itemBuilder: (BuildContext con, index){
                            return Padding(
                              padding: const EdgeInsets.all(5),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowDetails(jummp: homepage[index])));
                                },
                                child: Container(
                                  width: 190,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage(homepage[index].image),fit: BoxFit.fill)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0,90,160,0),
                                    child: IconButton(
                                      iconSize: 35,
                                      icon:Icon(Icons.play_arrow,color: Colors.white,),
                                      onPressed: () {  },),
                                  )
                                ),
                              ),
                              );
                          }
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,20,0,0),
                        child: RichText(text: TextSpan(text: "Top 10 in india Todey - Tamil",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white))),
                      )
                    ],
                  ),
                  Container(
                    height: 200,
                    color: Colors.black,
                    child: ListView.builder(
                        scrollDirection:Axis.horizontal,
                        itemCount: homepage.length,
                        itemBuilder: (BuildContext con, index){
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(25,20,0,0),
                              child: Container(
                                height: 150,
                                width: 140,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage(homepage[index].image),fit: BoxFit.fill)
                                ),
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,20,0,0),
                        child: RichText(text: TextSpan(text: "Popular Shows",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white))),
                      )
                    ],
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection:Axis.horizontal ,
                        itemCount: homepage.length,
                        itemBuilder: (BuildContext con, index){
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10,20,0,0),
                            child: Container(
                              height: 100,
                              width: 140,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(homepage[index].image),fit: BoxFit.fill)
                              ),
                            ),
                          );
                        }
                    ),
                  ),

      ]
              ),
            ),
          ),
      ),
    );
  }
}
