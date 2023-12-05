import 'package:flutter/material.dart';

import 'classpage.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10,50,10,0),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 4, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.search_rounded, color: Colors.black, size: 35,),
                    hintText: 'Movies, shows and more',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 20, color: Colors.black),
                    suffixIcon: Icon(
                      Icons.keyboard_voice_outlined, color: Colors.black, size: 35,),
                  ),
                ),
              ),
             Container(
                height:800,
                color: Colors.black,
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Icon(Icons.arrow_right_alt, color: Colors.white,),
                        ),
                        RichText(text: TextSpan(text: "POPULAR SEARCHES",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.white)))
                      ],
                    ),
                  Container(
                    height:800,
                    width: double.infinity,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                        itemCount: searchpage.length,
                        itemBuilder: (BuildContext con, index) {
                          return
                            Container(
                              height: 80,
                              width: double.infinity,
                              child: ListTile(
                                leading: Container(
                                  height: 300,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage(searchpage[index].image),fit: BoxFit.fill)
                                  ),
                                ),
                                title: Text(searchpage[index].text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white ),),
                                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
                              ),
                            );
                        }
                    ),
                  ),
               ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
