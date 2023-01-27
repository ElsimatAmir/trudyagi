import 'package:flutter/material.dart';

class UserMainScreen extends StatelessWidget {
  const UserMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text(
          "main User",
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
