import 'package:eksi_sozluk/ana_sayfa.dart';
import 'package:eksi_sozluk/arama.dart';
import 'package:eksi_sozluk/bildirim.dart';
import 'package:eksi_sozluk/mesajlar.dart';
import 'package:eksi_sozluk/profil.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ekşi Sözlük',
      theme: ThemeData(
        canvasColor: Colors.transparent, // setting canvasColor to transparent
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int secilenIndex=0;
  Color secilenColor=Colors.white24;
  AnaSayfa anaSayfa;
  Arama arama;
  Bildirim bildirim;
  Profil profil;
  Mesaj mesaj;
  List<Widget> tumSayfalar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    anaSayfa=AnaSayfa();
    arama=Arama();
    bildirim=Bildirim();
    profil=Profil();
    mesaj=Mesaj();
    tumSayfalar=[anaSayfa,arama,mesaj,bildirim,profil];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tumSayfalar[secilenIndex],
      bottomNavigationBar:BottomNavigatorBar(context)
    );
  }

  BottomNavigationBar BottomNavigatorBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.opacity,size: MediaQuery.of(context).size.width/13,),label: "Ana Sayfa",),
        BottomNavigationBarItem(icon: Icon(Icons.search,size: MediaQuery.of(context).size.width/13),label: "Arama"),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline,size: MediaQuery.of(context).size.width/13),label: "Mesajlar"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications,size: MediaQuery.of(context).size.width/13),label: "Bildirimler"),
        BottomNavigationBarItem(icon: Icon(Icons.person,size: MediaQuery.of(context).size.width/13),label: "Profil"),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: secilenIndex,
      unselectedItemColor: Colors.white24,
      selectedItemColor: Colors.orange,
      onTap: (index){
        setState(() {
          secilenIndex=index;
          secilenColor=Colors.green;
        });
      },
    );
  }
/*
  void sayfaDegistir(int index){
    setState(() {
      seciliSayfa=index;
    });
  }
  Widget sayfaGoster(int seciliSayfa){
    if(seciliSayfa==0){
      return Sayfa1();
    }else if(seciliSayfa==1){
      return Sayfa2();
    }else if (seciliSayfa==2){
      return Sayfa3();
    }else if(seciliSayfa==3){
      return Sayfa4();
    }else if (seciliSayfa==4){
      return Sayfa5();
    }
  }*/
}
