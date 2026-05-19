import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#8dd39b"),
      body: Center(
        child: Text(
          "Welcome to ...!",
          style: TextStyle(
            fontSize: 40,
            color: HexColor("#553832"),
            fontFamily: "Chewy")
        ),)

    );
  }
}
