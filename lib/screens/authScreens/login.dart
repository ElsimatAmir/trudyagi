import 'package:auto_route/auto_route.dart';
import "package:flutter/material.dart";
import 'package:trudyagi/components/authTextField.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 90, 90, 90),
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
                color: Color.fromARGB(255, 184, 133, 30),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100.0)),
              ),
              alignment: Alignment.center,
              child: const Text(
                "ИМЯ.РФ",
                style: TextStyle(
                  color:Color.fromARGB(255, 53, 53, 53),
                  fontSize: 25,
                  
                ),
              ),
            ), 
            ),
    
          Expanded(
            flex: 8,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 90, 90, 90),
                borderRadius: BorderRadius.only(topRight: Radius.circular(100.0))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                
                children: [
                  // this column has a lock LOgo and a text wellcome back
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: const [
                        Padding (
                          padding: EdgeInsets.only(top: 20.0,),
                          child: Icon(Icons.lock,
                          size: 40,
                          color: Color.fromARGB(255, 36, 36, 36),),
                        ),
    
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text("hello again",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 184, 133, 30),
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
                          borderColor:Color.fromARGB(255, 40, 40, 40),
                          focusBorderColor: Color.fromARGB(255, 184, 133, 30),
                        ),
    
                      const SizedBox(height: 20.0,),
                      
                        const AuthTextField
                          (hintTextValue: "password",
                          obscurveText: true, 
                          iconName: Icon(Icons.lock),
                          borderColor:Color.fromARGB(255, 40, 40, 40),
                          focusBorderColor: Color.fromARGB(255, 184, 133, 30),
                        ),
    
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 30.0, top: 15.0),
                              child: Text("забыли пароль ?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 181, 181, 181),
                                fontSize: 14,
                              ),),
                            ),
                          ],
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
                           // onTap: signInUser(),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                color:Color.fromARGB(255, 184, 133, 30),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text("Login",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 53, 53, 53),
                                 ),),
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
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                color: Color.fromARGB(255, 53, 53, 53), 
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text("Registraion",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 184, 133, 30),
                                 ),),
                              ),
                            ),
                          ),
                        ),
    
                        const SizedBox(height: 20),
    
                       GestureDetector(
                        //onTap:  ,
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 30.0),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const[
                              Text("iam Admin",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color.fromARGB(255, 181, 181, 181),
                                )),
    
                              Icon(Icons.account_circle_rounded,
                                size: 20.0,
                                color: Color.fromARGB(255, 184, 133, 30), ),
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