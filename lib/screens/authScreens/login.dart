import 'package:auto_route/auto_route.dart';
import "package:flutter/material.dart";
import 'package:trudyagi/components/authTextField.dart';
import 'package:trudyagi/constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: mainDarkColor,
      body: _LoginHome(),
    );
  }
}

class _LoginHome extends StatelessWidget {
  const _LoginHome();

  @override
  Widget build(BuildContext context) {
    // the route master class to navigate pages

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: mainOrangeColor,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(100.0)),
              ),
              alignment: Alignment.center,
              child: const Text(
                "ИМЯ.РФ",
                style: TextStyle(
                  color: mainTextColor,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: const BoxDecoration(
                  color: mainDarkColor,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(100.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // this column has a lock LOgo and a text wellcome back
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                          child: Icon(
                            Icons.lock,
                            size: 40,
                            color: mainTextColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            "hello again",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: mainOrangeColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // this column has a textfilds for log and password inputs
                  //that made in components for this as a authTextField
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const AuthTextField(
                          hintTextValue: "hello",
                          obscurveText: false,
                          iconName: Icon(Icons.person),
                          borderColor: mainDarkColor,
                          focusBorderColor: mainOrangeColor,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const AuthTextField(
                          hintTextValue: "password",
                          obscurveText: true,
                          iconName: Icon(Icons.lock),
                          borderColor: mainDarkColor,
                          focusBorderColor: mainOrangeColor,
                        ),
                        GestureDetector(
                          onTap: () => {
                            context.router.pushNamed("/loading"),
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Padding(
                                padding:
                                    EdgeInsets.only(right: 30.0, top: 15.0),
                                child: Text(
                                  "Forget password?",
                                  style: TextStyle(
                                    color: mainTextColor,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // this coulmn that have a submit buttlon and an a button to log as an admin
                  Expanded(
                    flex: 1,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: GestureDetector(
                              onTap: () => {
                                context.router.pushNamed("/userMainScreen"),
                              },
                              child: Container(
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  color: mainOrangeColor,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: mainDarkColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: GestureDetector(
                              onTap: (() => {
                                    context.router.pushNamed("/Signin"),
                                  }),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  color: mainDarkColor,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    "Registraion",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: mainOrangeColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          GestureDetector(
                            //onTap:  ,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text("iam Admin",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: mainTextColor,
                                      )),
                                  Icon(
                                    Icons.account_circle_rounded,
                                    size: 20.0,
                                    color: mainOrangeColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
