import 'package:flutter/material.dart';

import 'classpage.dart';

class reorderlist extends StatefulWidget {
  const reorderlist({super.key});

  @override
  State<reorderlist> createState() => _reorderlistState();
}

class _reorderlistState extends State<reorderlist> {

  void sorting() {
    setState(() {
      homepage.sort();
    });
  }
  void reorderData(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final Homepage = homepage.removeAt(oldindex);
      homepage.insert(newindex, Homepage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView(
        onReorder: reorderData,
        children: [
          for (final Homepage in homepage)
            Card(
              color: Colors.white,
              key: ValueKey(Homepage),
              elevation: 2,
              child: Container(
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

              ),
        ],
      ),
    );
  }
}