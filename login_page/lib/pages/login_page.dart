import 'package:flutter/material.dart';
import 'package:login_page/widgets/caja_texto.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( toolbarHeight: 13,),
      body: SafeArea(
        child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Icon( Icons.group,
                size: 70,
                color: Colors.cyan,
                ),

           SizedBox(height: 20),

         Container(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Bienvenidos a LoginPage',
         style: TextStyle(
          color: Colors.black,
          fontSize: 23.0,
          
         ),
         ),
         Icon(Icons.group_sharp,
         size: 15,
         )
            ],
          ),
         ),
         
         SizedBox(height: 20),

         CustomTextBox(Title: 'Usuario',),
          SizedBox(height: 17),

        CustomTextBox(Title: 'Contraseña',),

        SizedBox(height: 25),

      const Text(
        "O", 
        style: TextStyle(color: Colors.black, 
        fontWeight: FontWeight.bold), 
      ),

      SizedBox(height: 15),
      Text('Ingresa con:',
       style: TextStyle(color: Colors.black, 
        fontSize: 15),
      ),

      Container(),
    

          ]
        ),
      )
      ),
    );
  }
}