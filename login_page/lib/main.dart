import 'package:flutter/material.dart';
import 'package:login_page/pages/home_page.dart';
import 'package:login_page/pages/login_page.dart';
import 'package:login_page/pages/sing_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      initialRoute:'/Login',
      routes: {
        '/Login': (context) => LoginPage(),
        '/singup': (context) => SingUpPage(),
        '/homepage':(context)=> HomePage(),
      },
      
    );
  }
}
