import 'package:flutter/material.dart';
import 'package:show_tracker/Authentication/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // get auth service
  final authService = AuthService();

  // text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // login button pressed

  void login() async {
    //prepare date
    final email = _emailController.text;
    final password = _passwordController.text;

    // attempt login
    try {} catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Error: $e")));
      }
    }
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //email
          TextField(controller: _emailController),

          // password
          TextField(controller: _passwordController),

          //button
          ElevatedButton(onPressed: login, child: const Text("Login/Help")),
        ],
      ),
    );
  }
}
