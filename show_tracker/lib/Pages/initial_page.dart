import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:show_tracker/Pages/login_page.dart';
import 'package:show_tracker/Pages/register_page.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#072836"),
      appBar: AppBar(
        backgroundColor: HexColor("#061E29"),
        title: Center(
          child: Text(
            "Website Title",
            style: TextStyle(
              fontSize: 40,
              fontFamily: "Gelasio",
              fontWeight: FontWeight.w900,
              color: HexColor("F3F4F4"),
            ),
          ),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 130),
            Text(
              "Returning?",
              style: TextStyle(
                fontSize: 50,
                fontFamily: "Gelasio",
                color: HexColor("#F3F4F4"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(280, 80),
                backgroundColor: HexColor("#1D546D"),
                textStyle: TextStyle(fontSize: 28, fontFamily: "Gelasio"),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              ),
              child: Text(
                "Login",
                style: TextStyle(color: HexColor("#F3F4F4")),
              ),
            ),
            SizedBox(height: 80),
            Text(
              "New Here?",
              style: TextStyle(
                fontSize: 50,
                fontFamily: "Gelasio",
                color: HexColor("#F3F4F4"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(280, 80),
                backgroundColor: HexColor("#1D546D"),
                textStyle: TextStyle(fontSize: 28, fontFamily: "Gelasio"),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterPage()),
              ),
              child: Text(
                "Register",
                style: TextStyle(color: HexColor("#F3F4F4")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
