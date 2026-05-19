import 'package:flutter/material.dart';

class NavbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Sample Name"), 
            accountEmail: Text("sample.name@email.com")
            )
        ],
      )
    );
  }
}