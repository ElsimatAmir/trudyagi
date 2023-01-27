import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trudyagi/routes/router.gr.dart';
import 'package:trudyagi/screens/authScreens/firstPage.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('en'),
      Locale('ru')
    ],
    path: 'assets/translate',
    fallbackLocale: const Locale('en'),
    startLocale:    const Locale('ru'),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),      
      routeInformationParser: _appRouter.defaultRouteParser(),

      title: 'трудяги.рф',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
      ),
     // home: const FirstPage(),
    );
  }
}
