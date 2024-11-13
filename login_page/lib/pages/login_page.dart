import 'package:flutter/material.dart';
import 'package:login_page/widgets/caja_texto.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});


    final userController = TextEditingController(text: 'jdvarelas@unah.hn');
  final passwordController = TextEditingController(text: 'Cordyceps');

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

         CustomTextBox(Title: 'Usuario',UserController: userController,),
          SizedBox(height: 17),

        CustomTextBox(Title: 'Contraseña',UserController: passwordController,),

        SizedBox(height: 21),

        FloatingActionButton.extended(
          onPressed: (){},
         label: const Text(
          'Login',
          style: TextStyle(
            fontSize: 18,
             fontWeight: FontWeight.bold,
             color: Colors.white
             ), 
  ),
       backgroundColor: Colors.cyan,


        ),
        SizedBox(height: 15),

      const Text(
        "O", 
        style: TextStyle(color: Colors.black, 
        fontWeight: FontWeight.bold), 
      ),

      SizedBox(height: 20),
      Text('Ingresa con:',
       style: TextStyle(color: Colors.black, 
        fontSize: 15),
      ),

      SizedBox(height: 13,),

      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Icon(Icons.apple,color: Colors.black,size: 30,),
            SizedBox(width: 10,),
            Icon(Icons.facebook_rounded, size:30, color: Colors.blue[900],),
            SizedBox(width: 10,),
            Icon(Icons.telegram,size: 30,color: Colors.blue[200],)
                      ],
                  ),
              ),
              SizedBox(height: 23,),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('No tienes una cuenta con nosotros?',
              style: TextStyle(fontSize: 14),),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign Up now",
                      style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

          ]
        ),
      )
      ),
    );
  }
}