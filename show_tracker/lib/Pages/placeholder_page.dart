import 'package:flutter/material.dart';
import 'package:show_tracker/Authentication/auth_service.dart';

class PlaceHolderPage extends StatefulWidget {
  const PlaceHolderPage({super.key});

  @override
  State<PlaceHolderPage> createState() => _PlaceHolderState();
}

class _PlaceHolderState extends State<PlaceHolderPage> {

  // get auth service
  final authService = AuthService();

  // logout pressed
  void logout() async {
    await authService.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Placeholder"),
        actions: [
          IconButton(
            onPressed: logout,
            icon: const Icon(Icons.logout))
        ]),
    );
  }
}
