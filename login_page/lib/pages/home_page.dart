import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.black,

    body: Center(
      child: Text('Bienvenido a login page :) ',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold
      ),
      ),// mientras pasamos el nombre del usuario
    ),

  );
  }
}