import 'package:flutter/material.dart';

Widget myWidget({required String img,required String txt1,required String txt2, }){
  return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170,
            width: 350,
            child: Stack(
              children: [
                Positioned(top: 40,
                  left: 14,
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child:  Image(image: AssetImage(img),),
                    ),
                    width: 70,
                    height: 70 ,
                  ),
                ),
                Positioned(
                  top:40,
                  left: 90,
                  child: Column(
                    children:  [
                      Text(txt1),
                      Text("1 Piece                            ", textAlign: TextAlign.start),
                      Text(txt2),
                      Text("In stock                            ", style: TextStyle(color: Colors.green),),
                    ],
                  ),
                ),
                const Positioned(
                  left: 320,
                  top: 35,
                  child: Icon(Icons.more_vert_sharp),
                ),
                Positioned(
                  left: 290,
                  top: 79,
                  child: Switch(
                      value: false,
                      onChanged: (value) {

                          value == true;

                      }),
                ),

                Positioned(
                    top: 130,
                    left: 100,
                    child: Container(


                      child: Column(
                        children: [

                          Row(children: const [
                            Icon(Icons.share),
                            Text("    Share product")
                          ],),
                        ],
                      ),
                    ))  ,

              ],
            ),
          ),

        ],
      ));
}