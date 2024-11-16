import 'package:flutter/material.dart';
import 'package:login_page/pages/Usuario.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final argumentos =
        ModalRoute.of(context)!.settings.arguments as Usuario;
  return Scaffold(
    backgroundColor: Colors.black,

    body: Center(
      child: Text('Bienvenido a login page :) ${argumentos.username}',
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