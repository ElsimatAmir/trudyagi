import 'package:flutter/material.dart';
import 'package:trudyagi/constants.dart';
import 'package:lottie/lottie.dart';

class MainLoadingScreen extends StatelessWidget {
  const MainLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainDarkColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Lottie.asset(
                "lottie/loadHammer.json",
                width: 60,
                height: 60,
              ),
            ),
          )
        ],
      ),
    );
  }
}
