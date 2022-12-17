import 'package:flutter/material.dart';

import 'auth_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You are logged in'),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              AuthService().signOut();
            },
            child: Center(
              child: Text('Sign out'),
            ),
          )
        ],
      ),
    );
  }
}
