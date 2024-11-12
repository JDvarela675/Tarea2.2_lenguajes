import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.white,
      toolbarHeight: 13,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
             SizedBox(height: 15),
         Icon( Icons.group,
                size: 60,
                color: Colors.blue,
                ),

           SizedBox(height: 30),

         Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome Back !!!',
         style: TextStyle(
          color: Colors.white,
          fontSize: 23.0,
          
         ),
         ),
         Icon(Icons.group_sharp,
         size: 15,
         )
            ],
          ),
         ),

          ],
        ),
      )
      ),
    );
  }
}