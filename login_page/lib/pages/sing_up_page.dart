import 'package:flutter/material.dart';
import 'package:login_page/widgets/caja_texto.dart';

class SingUpPage extends StatelessWidget {
  SingUpPage({super.key});

  final emailController = TextEditingController();
  final nombreController = TextEditingController();
  final contraseniaController = TextEditingController();
  final verificacionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back,
          size: 30,
          color: Colors.white,)
          ),
      ),
      
      body: SingleChildScrollView(
         
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text("Registrate", style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                  const SizedBox(height: 35,),
                  Text("¡Crea tu cuenta con nosotros!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[300],
                    ),),
                  const SizedBox(height: 30), 
                ],
              ),
              Column(
                children: [
                  CustomTextBox(Title: "Nombre", UserController: nombreController),
                  SizedBox(height: 15),
                  CustomTextBox(Title: "Email", UserController: emailController),
                  SizedBox(height: 15),
                  CustomTextBox(Title: "Contraseña", UserController: contraseniaController, keyboardType: TextInputType.visiblePassword,),
                  SizedBox(height: 15),
                  CustomTextBox(Title: "Confirma tu contraseña", UserController: verificacionController, keyboardType: TextInputType.visiblePassword,)
                ],
              ),
              

              
            ],
          ),
        ),
      ),
    );
  }
}