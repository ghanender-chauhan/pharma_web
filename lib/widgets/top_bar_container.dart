import 'dart:ui';

import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.black87,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // SizedBox(width: screenSize.width/4,),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Editor',
                            style: TextStyle(
                                color: _isHovering[0]
                                    ? Colors.white54
                                    : Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Color(0xFF051441),
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(width: screenSize.width / 15),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Tasks',
                            style: TextStyle(
                                color: _isHovering[1]
                                    ? Colors.white54
                                    : Colors.white54,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 2),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white70,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 15),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[2] = true
                              : _isHovering[2] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Submitted',
                            style: TextStyle(
                                color: _isHovering[2]
                                    ? Colors.white54
                                    : Colors.white54,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 2),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[2],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white70,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 15),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[3] = true
                              : _isHovering[3] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Approved',
                            style: TextStyle(
                                color: _isHovering[3]
                                    ? Colors.white54
                                    : Colors.white54,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 2),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[3],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white70,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 15),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[4] = true
                              : _isHovering[4] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Settings',
                            style: TextStyle(
                                color: _isHovering[4]
                                    ? Colors.white54
                                    : Colors.white54,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 2),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[4],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white70,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
