import 'package:flutter/material.dart';

class Mesaj extends StatefulWidget {
  @override
  _MesajState createState() => _MesajState();
}

class _MesajState extends State<Mesaj> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Mesajlar"),
      ),
    );
  }
}
