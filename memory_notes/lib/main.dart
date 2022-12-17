import 'package:flutter/material.dart';
import 'package:memory_notes/auth_services.dart';
import 'package:memory_notes/home_screen.dart';
import 'package:memory_notes/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: AuthService().handleAuth());
  }
}
