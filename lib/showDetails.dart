import 'package:e_eye/homepage.dart';
import 'package:e_eye/videoplayer.dart';
import 'package:flutter/material.dart';

import 'classpage.dart';

class ShowDetails extends StatefulWidget {
  final Homepage jummp;
  const ShowDetails({super.key,required this.jummp});

  @override
  State<ShowDetails> createState() => _ShowDetailsState();
}

class _ShowDetailsState extends State<ShowDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   children: [
      //     Image.asset((widget.jummp.image).toString()),
      //   ],
      // ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage((widget.jummp.image).toString()),
              ),
            )
            ),
              Positioned(
                  top: 40,
                  left: 10,
                  child: BackButton(color: Colors.white,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return home();
                  }));
                },
              ))
      ]
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton.icon(
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>videoscreen()));

              }, icon: Icon(Icons.play_arrow),
              label:Text('Watch Now'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),),
                fixedSize: Size(350, 40),
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: (){}, icon: Icon(Icons.download),
            label:Text('Download'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),),
              fixedSize: Size(350, 40),
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.local_activity,color: Colors.grey,size: 55,),
                    Text("Trailer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,),)
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.playlist_add,color: Colors.grey,size: 55,),
                    Text("Trailer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,),)
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.more_vert,color: Colors.grey,size: 55,),
                    Text("Trailer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,),)
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
                height: 200,
                width: double.infinity,
                child: Text((widget.jummp.story).toString(),style: TextStyle(color:Colors.white,),)),
          )

        ],
      ),
    );
  }
}
