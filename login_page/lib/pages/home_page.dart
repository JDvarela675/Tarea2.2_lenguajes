import 'package:flutter/material.dart';
import 'package:login_page/pages/Usuario.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final argumentos = ModalRoute.of(context)!.settings.arguments as Usuario;

  return Scaffold(
    backgroundColor: Colors.black,
      appBar: AppBar(title: Text(argumentos.username,
      style: TextStyle(
        color: Colors.cyan,
        fontWeight: FontWeight.bold,
        fontSize: 18
      ),
      ),
        backgroundColor: Colors.black,
        actions: [
          CircleAvatar(backgroundColor: Colors.teal,),
          SizedBox(width: 30),
        ],
        ),

        body: Column(
          children: [
            SizedBox(height: 60,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text('My page',
               style: TextStyle(
                color: Colors.white,
                fontSize: 25
               ),)
              ],
            ),
          ),
           
          ]
        ),
  );
  }
}