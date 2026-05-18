import 'package:flutter/material.dart';
import 'package:show_tracker/Authentication/auth_gate.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdyYXZ5dnNwZGljYmp5dnZhamh5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzkxMjkzNTMsImV4cCI6MjA5NDcwNTM1M30.cSqJFEyae6giFbiYQCyZvyoLm-3kdybkb5EWwHC_Dmg",
    url: "https://gravyvspdicbjyvvajhy.supabase.co",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AuthGate());
  }
}
