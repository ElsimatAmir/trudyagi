import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trudyagi/components/authTextField.dart';

import '../../constants.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: mainOrangeColor,
      body: _SigninHome(),
    );
  }
}

class _SigninHome extends StatelessWidget {
  const _SigninHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: mainDarkColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100.0),
                    bottomRight: Radius.circular(100.0)),
              ),
              child: const Text(
                'Registraion',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: mainTextColor,
                ),
              ),
            )),
        Expanded(
            flex: 9,
            child: Container(
              decoration: const BoxDecoration(
                color: mainOrangeColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.app_registration,
                            size: 35.0,
                            color: mainTextColor,
                          ),
                          Text(
                            "Fast and simple registraion",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: mainDarkColor,
                            ),
                          ),
                        ],
                      )),

                  //TextFields for inputs
                  Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          AuthTextField(
                            hintTextValue: 'Name',
                            iconName: Icon(Icons.person),
                            obscurveText: false,
                            borderColor: mainOrangeColor,
                            focusBorderColor: mainDarkColor,
                          ),
                          AuthTextField(
                            hintTextValue: 'Gmail',
                            iconName: Icon(Icons.email),
                            obscurveText: false,
                            borderColor: mainOrangeColor,
                            focusBorderColor: mainDarkColor,
                          ),
                          AuthTextField(
                            hintTextValue: 'PhoneNumber',
                            iconName: Icon(Icons.phone),
                            obscurveText: false,
                            borderColor: mainOrangeColor,
                            focusBorderColor: mainDarkColor,
                          ),
                          AuthTextField(
                            hintTextValue: 'Password',
                            iconName: Icon(Icons.lock),
                            obscurveText: true,
                            borderColor: mainOrangeColor,
                            focusBorderColor: mainDarkColor,
                          ),
                        ],
                      )),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7.0),
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
                              "Signin",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: mainOrangeColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: GestureDetector(
                          onTap: () => {
                            context.router.navigateBack(),
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "All ready have Account",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: mainDarkColor,
                                ),
                              ),
                              Icon(
                                Icons.login,
                                size: 25,
                                color: mainTextColor,
                              )
                            ],
                          ),
                        ),
                      )),
                  const SizedBox(
                    width: 20.0,
                    height: 40.0,
                  )
                ],
              ),
            )),
      ],
    ));
  }
}
