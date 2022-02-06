import 'package:flutter/material.dart';
import 'package:webapp_cytoclick/widgets/dropdown.dart';
import 'package:webapp_cytoclick/widgets/size_config.dart';
import 'package:webapp_cytoclick/widgets/components.dart';
import 'package:webapp_cytoclick/widgets/top_bar_container.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < SizeConfig.heightMultiplier * 0.40
        ? _scrollPosition / (SizeConfig.heightMultiplier * 0.40)
        : 1;
    final _screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: TopBarContents(_opacity),
        preferredSize: Size(SizeConfig.widthMultiplier, 63),
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: _screen.width / 2,
                      // height: _screen.height/2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                      left: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                      right: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                      // bottom: BorderSide(
                                      //   color: Colors.grey,
                                      //   width: 1.0
                                      // ),
                                    ),
                                    //  borderRadius:  BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
      
                                    // color: Colors.blue
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Adult",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: _screen.width / 2.5,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Pediatric",
                                            style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Geriatic",
                                            style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              child: Container(
                                // margin: EdgeInsets.only(left: 100),
                                // height: 100,
                                width: _screen.width / 2,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black26),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Dosage Forms & Strengths\nMedium of Application",
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 100, top: 8),
                                          child: Text(
                                            "Info",
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 10),
                                            padding:
                                                EdgeInsets.only(left: 10, top: 5),
                                            height: 35,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black26),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                              // color: Colors.amber
                                            ),
                                            child: DropDownmenu()),
                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 40, top: 10),
                                            // padding: EdgeInsets.only(top: 30),
                                            width: _screen.width / 3,
                                            height: 35,
                                            child: textfield(
                                              inputtext: 'Enter Dosage Info',
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            width: 100,
                                            margin: EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black26),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                              // color: Colors.amber
                                            ),
                                            child: buttons(
                                              buttontext: "Add More",
                                            )),
                                        SizedBox(
                                          width: _screen.width / 3.34,
                                        ),
                                        Container(
                                            width: 100,
                                            margin: EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black26),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                              // color: Colors.amber
                                            ),
                                            child: buttons(
                                              buttontext: "Add More",
                                            ))
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              child: Container(
                                // margin: EdgeInsets.only(left: 100),
                                // height: 100,
                                width: _screen.width / 2,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black26),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Column(children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Indication",
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      SizedBox(
                                        width: _screen.width / 2.8,
                                      ),
                                      Text(
                                        "Insert System Variable",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: 10,
                                        ),
                                        // padding: EdgeInsets.only(top: 10),
                                        width: _screen.width / 2.14,
                                        height: 35,
                                        child: textfield(
                                          inputtext: "Indication Name",
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Info",
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: 10,
                                        ),
                                        // padding: EdgeInsets.only(top: 10),
                                        width: _screen.width / 2.14,
                                        height: 35,
                                        child: textfield(
                                          inputtext:
                                              "Indication wise drug use information",
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: 100,
                                          margin: EdgeInsets.only(left: 10),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black26),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            // color: Colors.amber
                                          ),
                                          child: buttons(
                                            buttontext: "Add More",
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          "Dosage table",
                                          style: TextStyle(
                                              fontSize: 11,
                                              // fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      SizedBox(
                                        width: _screen.width / 2.87,
                                      ),
                                      Text(
                                        "Insert System Variable",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8.0,
                                        ),
                                        child: Text(
                                          "Medium of Application",
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 130, top: 8),
                                        child: Text(
                                          "Info",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          margin:
                                              EdgeInsets.only(left: 10, top: 3),
                                          padding:
                                              EdgeInsets.only(left: 10, top: 5),
                                          height: 35,
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black26),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            // color: Colors.amber
                                          ),
                                          child: DropDownmenu()),
                                      Container(
                                          margin:
                                              EdgeInsets.only(left: 40, top: 3),
                                          // padding: EdgeInsets.only(top: 30),
                                          width: _screen.width / 3,
                                          height: 35,
                                          child: textfield(
                                            inputtext: 'Enter Dosage Info',
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: 100,
                                          margin: EdgeInsets.only(left: 10),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black26),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            // color: Colors.amber
                                          ),
                                          child: buttons(
                                            buttontext: "Add More",
                                          )),
                                      SizedBox(
                                        width: _screen.width / 3.34,
                                      ),
                                      Container(
                                          width: 100,
                                          margin: EdgeInsets.only(left: 10),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black26),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            // color: Colors.amber
                                          ),
                                          child: buttons(
                                            buttontext: "Add More",
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 7,
                                  )
                                ]),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                                child: Container(
                              // margin: EdgeInsets.only(left: 100),
                              // height: 100,
                              width: _screen.width / 2,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Text(
                                            "Other Dosage Info",
                                            style: TextStyle(
                                                fontSize: 11,
                                                // fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                        ),
                                        SizedBox(
                                          width: _screen.width / 3,
                                        ),
                                        Text(
                                          "Insert System Variable",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: 10,
                                        ),
                                        // padding: EdgeInsets.only(top: 10),
                                        width: _screen.width / 2.14,
                                        height: 35,
                                        child: textfield(
                                          inputtext:
                                              "Indication wise drug use information",
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: 100,
                                          margin:
                                              EdgeInsets.only(left: 10, top: 10),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black26),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            // color: Colors.amber
                                          ),
                                          child: buttons(
                                            buttontext: "Add More",
                                          )),
                                      Container(
                                          // width: 180,
                                          margin:
                                              EdgeInsets.only(left: 10, top: 10),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black26),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            // color: Colors.amber
                                          ),
                                          child: buttons(
                                            buttontext: "Add Dosage Table",
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 7,
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 10),
                          child: Row(
                            children: [
                              Container(
                                // width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue.shade600,
                                  // border: Border.all(),
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: TextButton(onPressed: (){}
                                ,
                                child: Text("Save",
                                style: TextStyle(color: Colors.white),),)
                              ),
                              SizedBox(width: 30,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: TextButton(onPressed: (){}
                                ,
                                child: Text("Reset",
                                style: TextStyle(color: Colors.white),),)
                              ),
                              SizedBox(width: _screen.width/3,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.green.shade700,
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: TextButton(onPressed: (){}
                                ,
                                child: Text("Submit",
                                style: TextStyle(color: Colors.white),),)
                              ),
                            ],
                          ),
                        ),
                        
                      ),
                    )
                 
                  ],
                ),
                Column(
                  children: [
                    // SizedBox(
                    //     // width: 800,
                    //     width: _screen.width / 2,
                    //     height: _screen.height / 2,
                    //     child: Image(
                    //       image: AssetImage("assets/mountains.jpg"),
                    //     ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
