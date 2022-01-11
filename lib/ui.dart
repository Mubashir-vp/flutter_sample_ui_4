import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_6/widget.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    

    return SafeArea(
        child: Scaffold(
            body: Container(
      height: _height,
      width: _width,
      child: ListView(
        children: [
          Container(
              height: _height / 6,
              width: _width,
              color: Colors.blue,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 10),
                  child: Stack(
                    children: [
                      const Positioned(
                        top: 35,
                        left: 80,
                        child: Text(
                          "Catalogue",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                      const Positioned(
                          left: 270,
                          top: 40,
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 36,
                          )),
                      Column(
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 100),
                                child: Text(
                                  "Products",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 100, left: 90),
                                child: Text(
                                  "Categories",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ])),
          Column(
            children: [
              myWidget(img:"assets/photo-1604269879264-b1cec41c0e41.jpeg", txt1: "Flower Base                   ", txt2: "399                                 "),
              myWidget(img:"assets/sunflowers-3292932__480.jpeg", txt1: "Flower Base                   ", txt2: "499                                 "),
              myWidget(img:"assets/40130926_4-claycraft-director-coffee-mugs-polkadot.jpeg", txt1: "Cofee Mug                  ", txt2: "900                                 "),
              myWidget(img:"assets/orangeroundneckhalfsleeveforMen_600x600_crop_center.jpeg", txt1: "Men's T-shirt                   ", txt2: "1300                                 "),
              myWidget(img:"assets/download.jpeg", txt1: "Women Dress                 ", txt2: "799                                 "),
              myWidget(img:"assets/1565630782-m-d2-1565630778.jpeg", txt1: "Head-phone                   ", txt2: "766                                 "),
              myWidget(img:"assets/1-1-300x300.png", txt1: "Ear-pod                        ", txt2: "2414                                 "),


            ],
          ),
        ],
      ),
    )));
  }
}
