import 'package:eksi_sozluk/sorunsallar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> with SingleTickerProviderStateMixin {
  TabController _controller;
  Random random = new Random();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 9, vsync: this);
  }
  bool spor = false;
  bool siyaset = false;
  bool anket = false;
  bool iliskiler = false;
  bool eksisozluk = false;
  bool yetiskin = false;
  bool troll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: SafeArea(
          child: TabBarim(),
        ),
        backgroundColor: Colors.black,
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          _bugun(),
          _gundem(),
          _debe(),
          Sorunsallar(),
          Container(
            child: Center(
              child: Text("takip"),
            ),
          ),
          Container(
            child: Center(
              child: Text("Tarihte bugün"),
            ),
          ),
          Container(
            child: Center(
              child: Text("Son"),
            ),
          ),
          Container(
            child: Center(
              child: Text("Çaylaklar"),
            ),
          ),
          Container(
            child: Center(
              child: Text("Kenar"),
            ),
          ),
        ],
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
                    child: Row(
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
        child: Column(
          children: [
            //Filtrele
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 14,
              color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.55,
                    height: MediaQuery.of(context).size.height / 14,
                    color: Colors.black,
                    child: Center(
                        child: Text("gündeminizi kişileştirin",
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize:
                                    MediaQuery.of(context).size.width / 30))),
                  ),
                  GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.819,
                      height: MediaQuery.of(context).size.height / 14,
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          height: MediaQuery.of(context).size.height / 19,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white60),
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.width / 18)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.filter_alt_sharp,
                                color: Colors.white60,
                              ),
                              Text(
                                "filtrele",
                                style: TextStyle(color: Colors.white60),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      showModalBottomSheet<dynamic>(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(
                              builder: (BuildContext context,StateSetter setState){
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height / 1.15,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade900,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                          MediaQuery.of(context).size.width / 15),
                                      topRight: Radius.circular(
                                          MediaQuery.of(context).size.width / 15),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height:
                                        MediaQuery.of(context).size.height / 75,
                                      ),
                                      Container(
                                          width:
                                          MediaQuery.of(context).size.width / 8,
                                          height:
                                          MediaQuery.of(context).size.height /
                                              85,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(
                                                  MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                      75))),
                                      SizedBox(
                                        height:
                                        MediaQuery.of(context).size.height / 50,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.filter_alt_sharp,
                                            color: Colors.white,
                                            size:
                                            MediaQuery.of(context).size.height /
                                                30,
                                          ),
                                          SizedBox(
                                            width:
                                            MediaQuery.of(context).size.height /
                                                60,
                                          ),
                                          Text(
                                            "filtrele",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    40),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                        MediaQuery.of(context).size.height / 40,
                                      ),
                                      Text(
                                        "gündem sekmesinde görmek istediğin",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                            MediaQuery.of(context).size.height /
                                                40),
                                      ),
                                      Text(
                                        "içerikleri düzenle, kafan rahat olsun.",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                            MediaQuery.of(context).size.height /
                                                40),
                                      ),
                                      SizedBox(
                                        height:
                                        MediaQuery.of(context).size.height / 40,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: MediaQuery.of(context).size.height / 1.71,
                                        color: Colors.black45,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "#spor",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                          40),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width/5,
                                                ),
                                                Switch(
                                                    value: spor,
                                                    activeColor: Colors.yellowAccent,
                                                    onChanged: (deger) {
                                                      setState(() {
                                                        spor = !spor;
                                                        print("Spor "+spor.toString());
                                                      });
                                                    }),
                                              ],
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            ),
                                            Divider(
                                              height: MediaQuery.of(context).size.height / 80,
                                              color: Colors.black,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "#siyaset",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                          40),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width/5,
                                                ),
                                                Switch(
                                                    value: siyaset,
                                                    activeColor: Colors.yellowAccent,
                                                    onChanged: (deger) {
                                                      setState(() {
                                                        siyaset = !siyaset;
                                                        print("Siyaset"+siyaset.toString());
                                                      });
                                                    }),
                                              ],
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            ),
                                            Divider(
                                              height: MediaQuery.of(context).size.height / 80,
                                              color: Colors.black,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "#anket",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                          40),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width/5,
                                                ),
                                                Switch(
                                                    value: anket,
                                                    activeColor: Colors.yellowAccent,
                                                    onChanged: (deger) {
                                                      setState(() {
                                                        anket = !anket;
                                                        print("Anket "+anket.toString());
                                                      });
                                                    }),
                                              ],
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            ),
                                            Divider(
                                              height: MediaQuery.of(context).size.height / 80,
                                              color: Colors.black,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "#ilişkiler",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                          40),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width/5,
                                                ),
                                                Switch(
                                                    value: iliskiler,
                                                    activeColor: Colors.yellowAccent,
                                                    onChanged: (deger) {
                                                      setState(() {
                                                        iliskiler = !iliskiler;
                                                        print("İlişki "+iliskiler.toString());
                                                      });
                                                    }),
                                              ],
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            ),
                                            Divider(
                                              height: MediaQuery.of(context).size.height / 80,
                                              color: Colors.black,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "#eksi-sözlük",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                          40),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width/5,
                                                ),
                                                Switch(
                                                    value: eksisozluk,
                                                    activeColor: Colors.yellowAccent,
                                                    onChanged: (deger) {
                                                      setState(() {
                                                        eksisozluk = !eksisozluk;
                                                        print("Ekşi-sözlük "+eksisozluk.toString());
                                                      });
                                                    }),
                                              ],
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            ),
                                            Divider(
                                              height: MediaQuery.of(context).size.height / 80,
                                              color: Colors.black,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "#yetişkin",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                          40),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width/5,
                                                ),
                                                Switch(
                                                    value: yetiskin,
                                                    activeColor: Colors.yellowAccent,
                                                    onChanged: (deger) {
                                                      setState(() {
                                                        yetiskin = !yetiskin;
                                                        print("Yetişkin "+yetiskin.toString());
                                                      });
                                                    }),
                                              ],
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            ),
                                            Divider(
                                              height: MediaQuery.of(context).size.height / 80,
                                              color: Colors.black,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "#troll",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                          40),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width/5,
                                                ),
                                                Switch(
                                                    value: troll,
                                                    activeColor: Colors.yellowAccent,
                                                    onChanged: (deger) {
                                                      setState(() {
                                                        troll = !troll;
                                                        print("Troll "+troll.toString());
                                                      });
                                                    }),
                                              ],
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            ),
                                            Divider(
                                              height: MediaQuery.of(context).size.height / 80,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            );
                          });
                    },
                  )
                ],
              ),
            ),
            //ListView
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.4,
              child: ListView.builder(
                  itemCount: 35,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 15,
                          child: Center(
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.15,
                                  child: Text(
                                    "Konu $index",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                30),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 9,
                                  child: Center(
                                      child: Text("${random.nextInt(100)}",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  30))),
                                )
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
            )
          ],
        ));
  }

  Container _debe() {
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
                    child: Row(
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

  TabBar TabBarim() {
    return TabBar(
      isScrollable: true,
      controller: _controller,
      indicatorColor: Colors.orange,
      tabs: [
        Tab(
          text: "bugün",
        ),
        Tab(
          text: "gündem",
        ),
        Tab(
          text: "debe",
        ),
        Tab(
          text: "sorunsallar",
        ),
        Tab(
          text: "takip",
        ),
        Tab(
          text: "tarihte bugün",
        ),
        Tab(
          text: "son",
        ),
        Tab(
          text: "çaylaklar",
        ),
        Tab(
          text: "kenar",
        ),
      ],
    );
  }
}
