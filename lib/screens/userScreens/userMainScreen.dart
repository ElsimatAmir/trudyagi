import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class UserMainScreen extends StatelessWidget {
  const UserMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: mainDarkColor,
      body: SafeArea(
        child: _UserMainBody(),
      ),
    );
  }
}

class _UserMainBody extends StatelessWidget {
  const _UserMainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //appur part of the screen
        Expanded(
          flex: 2,
          child: Container(
            decoration: const BoxDecoration(
                color: mainOrangeColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100.0),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Elcimat Amir",
                    style: TextStyle(
                      color: mainTextColor,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => {
                      context.router.pushNamed("/"),
                    },
                    child: Row(
                      children: const [
                        Text(
                          "sign out",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: mainTextColor,
                          ),
                        ),
                        Icon(
                          Icons.logout,
                          size: 26,
                          color: mainDarkColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        // body of the body
        Expanded(
            flex: 10,
            child: Column(
              children: const [Text("data")],
            )),

        //lower part as a navigationBar
        Expanded(
          flex: 1,
          child: Container(
            decoration: const BoxDecoration(
              color: mainDarkColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: mainOrangeColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)),
                    ),
                    child: GestureDetector(
                      onTap: () => {},
                      child: const Icon(
                        Icons.post_add,
                        size: 30.0,
                        color: mainDarkColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: mainDarkColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)),
                    ),
                    child: GestureDetector(
                      onTap: () => {},
                      child: const Icon(
                        Icons.person,
                        size: 30.0,
                        color: mainOrangeColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
