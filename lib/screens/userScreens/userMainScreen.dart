import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trudyagi/screens/userScreens/profileBody.dart';
import '../../constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'orderBody.dart';

/*
    this class has only the app bar and the navigation bar controller
        -  controlling the navigation bar by setState  - 
 */
class UserMainScreen extends StatefulWidget {
  UserMainScreen({super.key});

  @override
  State<UserMainScreen> createState() => _UserMainScreenState();
}

class _UserMainScreenState extends State<UserMainScreen> {
  Widget bodyUserPage = OrderBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainDarkColor,
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        height: 55.0,
        items: const <Widget>[
          Icon(Icons.post_add, size: 30),
          Icon(Icons.person, size: 30),
        ],
        color: mainOrangeColor,
        buttonBackgroundColor: mainOrangeColor,
        backgroundColor: mainDarkColor,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 400),
        onTap: (pageIndex) => {
          setState(() {
            if (pageIndex == 0) {
              bodyUserPage = const ProfileBody();
              print(bodyUserPage);
            } else if (pageIndex == 1) {
              bodyUserPage = const OrderBody();
              print(bodyUserPage);
            }
          })
        },
      ),
      body: SafeArea(
        child: Column(
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
              flex: 12,
              child: bodyUserPage,
            ),
          ],
        ),
      ),
    );
  }
}
