
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trudyagi/components/authTextField.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      backgroundColor:Color.fromARGB(255, 184, 133, 30),
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
              color: Color.fromARGB(255, 90, 90, 90),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100.0),bottomRight: Radius.circular(100.0)),
            ),
            child:const Text('Registraion',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 181, 181, 181),
              ),),
          )
          ),
        
        Expanded(
          flex: 9, 
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 184, 133, 30),
              
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex:2, 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const  [
                      Icon(
                        Icons.app_registration,
                        size: 35.0,
                        color:Color.fromARGB(255, 71, 71, 71),
                        ),
                      Text(
                        "Fast and simple registraion",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 90, 90, 90),
                        ),
                      ),
                    ],)),

                //TextFields for inputs
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const  [
                      AuthTextField(
                        hintTextValue: 'Name',
                        iconName: Icon(Icons.person),
                        obscurveText: false,
                        borderColor:Color.fromARGB(255, 161, 107, 0),
                        focusBorderColor: Color.fromARGB(255, 40, 40, 40),
                      ),
                      AuthTextField(
                        hintTextValue: 'Gmail',
                        iconName: Icon(Icons.email),
                        obscurveText: false,
                        borderColor:Color.fromARGB(255, 161, 107, 0),
                        focusBorderColor: Color.fromARGB(255, 40, 40, 40),
                      ),
                      AuthTextField(
                        hintTextValue: 'PhoneNumber',
                        iconName: Icon(Icons.phone),
                        obscurveText: false,
                        borderColor:Color.fromARGB(255, 161, 107, 0),
                        focusBorderColor: Color.fromARGB(255, 40, 40, 40),
                      ),
                      AuthTextField(
                        hintTextValue: 'Password',
                        iconName: Icon(Icons.lock),
                        obscurveText: true,
                        borderColor:Color.fromARGB(255, 161, 107, 0),
                        focusBorderColor: Color.fromARGB(255, 40, 40, 40),
                      ),
                    ],
                  )),
                  Expanded(
                    flex:1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7.0),
                        child: Container(
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    color:Color.fromARGB(255, 90, 90, 90),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text("Signin",
                                      style: TextStyle(
                                        fontSize: 16.0, 
                                        fontWeight: FontWeight.bold,
                                        color:Color.fromARGB(255, 184, 133, 30),
                                     ),),
                                  ),
                                ),
                      ),
                    ),),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: GestureDetector(
                          onTap: ()=>{ 
                            context.router.navigateBack(),
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text("All ready have Account", 
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color.fromARGB(255, 202, 202, 202),
                                ),
                              ),
                              Icon(
                                Icons.login,
                                size: 20,
                                color: Color.fromARGB(255, 90, 90, 90), 
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
            ),)
          ),  
      ],
      
      ) );
  }
}