import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sorunsallar extends StatefulWidget {
  @override
  _SorunsallarState createState() => _SorunsallarState();
}

class _SorunsallarState extends State<Sorunsallar> with SingleTickerProviderStateMixin {
  TabController _controller;
  Random random = new Random();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: SafeArea(
          child: TabBarContainer(),
        ),
        backgroundColor: Colors.black,
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          _gundem(),
          _bugun(),
        ],
      ),
    );
  }

  Container TabBarContainer(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/9,
      color: Colors.grey.shade900,
      child: Center(
        child: Container(
            width: MediaQuery.of(context).size.width/1.1,
            height: MediaQuery.of(context).size.height/16,
            child:new TabBar(
              controller: _controller,
              indicatorColor: Colors.transparent,
              automaticIndicatorColorAdjustment: false,
              tabs: [
                new Tab(
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.15,
                    height: MediaQuery.of(context).size.height/16,

                    child: Center(child: Text("gündem")),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black
                        )
                    ),
                  ),
                ),
                new Tab(
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.15,
                    height: MediaQuery.of(context).size.height/16,

                    child: Center(child: Text("bugün")),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black
                        )
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }

  Container _bugun() {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          itemCount: 35,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.15,
                              child: Text(
                                "Konu $index",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                    MediaQuery.of(context).size.width / 30),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 9,
                              child: Center(
                                  child: Text("${random.nextInt(100)}",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize:
                                          MediaQuery.of(context).size.width /
                                              30))),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.15,
                              child: Text(
                                "(Alt Konu $index)",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize:
                                    MediaQuery.of(context).size.width / 30),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white24,
                  height: MediaQuery.of(context).size.height / 50,
                )
              ],
            );
          }),
    );
  }

  Container _gundem() {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          itemCount: 35,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.15,
                              child: Text(
                                "Konu $index",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                    MediaQuery.of(context).size.width / 30),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 9,
                              child: Center(
                                  child: Text("${random.nextInt(100)}",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize:
                                          MediaQuery.of(context).size.width /
                                              30))),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.15,
                              child: Text(
                                "(Alt Konu $index)",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize:
                                    MediaQuery.of(context).size.width / 30),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white24,
                  height: MediaQuery.of(context).size.height / 50,
                )
              ],
            );
          }),
    );
  }
}
