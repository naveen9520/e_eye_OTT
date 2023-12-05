import 'package:e_eye/homepage.dart';
import 'package:e_eye/profilepage.dart';
import 'package:e_eye/searchpage.dart';
import 'package:flutter/material.dart';

import 'New & Hot.dart';

class Navi extends StatefulWidget {
  const Navi({super.key});

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {

  int _index = 0;

  final pages = [
    home(),
    search(),
    hotpage1(),
    profile(),
  ];

  void tap(index){
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,size: 40,),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded,size: 40,),label:"search"),
          BottomNavigationBarItem(icon: Icon(Icons.hourglass_top_outlined,size: 40,),label:"New & Hot"),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: 40,),label: 'Person',),
        ],
        currentIndex: _index,
        onTap:  tap,
      ),
    );
  }
}
