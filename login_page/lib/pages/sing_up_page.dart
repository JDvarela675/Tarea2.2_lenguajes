// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:login_page/pages/Usuario.dart';
import 'package:login_page/widgets/caja_texto.dart';

class SingUpPage extends StatelessWidget {
  SingUpPage({super.key});

  final emailController = TextEditingController();
  final nombreController = TextEditingController();
  final telefonoController = TextEditingController();
  final contraseniaController = TextEditingController();
  final verificacionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          padding: const EdgeInsets.symmetric(horizontal: 25),
          
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
                  CustomTextBox(Title: "Nombre", hintText: "Ingresa tu nombre", UserController: nombreController),
                  const SizedBox(height: 15),
                  CustomTextBox(Title: "Email", hintText: "Ingresa tu email", UserController: emailController),
                  const SizedBox(height: 15),
                  CustomTextBox(Title: "Teléfono", hintText: "Ingresa tu teléfono", UserController: telefonoController),
                  const SizedBox(height: 15),
                  CustomTextBox(Title: "Contraseña", hintText: "Ingresa tu contraseña", UserController: contraseniaController, keyboardType: TextInputType.visiblePassword),
                  const SizedBox(height: 15),
                  CustomTextBox(Title: "Confirma tu contraseña",hintText: "Confirma tu contraseña", UserController: verificacionController, keyboardType: TextInputType.visiblePassword),
                ],
              ),

              const SizedBox(height: 35),

              FloatingActionButton.extended(
                onPressed: () {
                  
                  // verificaciones y tal,

                  // lleneme algo :c
                  if (nombreController.text.isEmpty && emailController.text.isEmpty && telefonoController.text.isEmpty && contraseniaController.text.isEmpty && verificacionController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text("¡Rellena todos los campos, por favor!"),
                        action: SnackBarAction(
                          label: "Aceptar",
                          textColor: Colors.cyan,
                          onPressed: () => ScaffoldMessenger.of(context).hideCurrentSnackBar()
                        ),
                      )
                    );
                    return;
                  }

                  // nombre, minimo 3 y maximo 10
                  if (nombreController.text.length < 3 || nombreController.text.length > 10) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar (content: Text("El nombre debe tener entre 3 y 10 caracteres, ¡gracias!", textAlign: TextAlign.center), duration: Duration(seconds: 5),)
                    );
                    return;
                  }

                  // email, odio aqui
                  final email = emailController.text;
                  if (email.indexOf("@") != email.lastIndexOf("@") || !email.contains("@") ||!(email.endsWith("unah.edu.hn") || email.endsWith("unah.hn")) ) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar (content: Text("El correo debe ser válido y finalizar en unah.hn ó unah.edu.hn, ¡gracias!", textAlign: TextAlign.center), duration: Duration(seconds: 5))
                    );
                    return;
                  }

                  // teléfono, bye bye inicializacion en 8 :,)
                  final phone = telefonoController.text;
                  if (!(phone.startsWith("3") || phone.startsWith("9")) || phone.length != 8) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar (content: Text('El teléfono debe iniciar con 3 ó 9 y tener exactamente 8 dígitos, ¡gracias!', textAlign: TextAlign.center), duration: Duration(seconds: 5))
                    );
                    return;
                  }

                  // contraseña y verificacion de la misma
                  final password = contraseniaController.text;
                  if (password.length < 8 || !RegExp(r"[A-Z]").hasMatch(password) || !RegExp(r"[!@#_\$&*~-]").hasMatch(password)) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar (content: Text("La contraseña debe tener al menos 8 caracteres: una mayúscula y un carácter especial, ¡gracias!", textAlign: TextAlign.center), duration: Duration(seconds: 5))
                    );
                    return;
                  }

                  if (contraseniaController.text != verificacionController.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar (content: Text("¡ALTO! Las contraseñas no coinciden", textAlign: TextAlign.center), duration: Duration(seconds: 5))
                    );
                    return;
                  }

                  //todo bieeeeen >:D asi que imprimirmos los datos en consola
                  print("DATOS");
                  print("nombre:                ${nombreController.text}");
                  print("email:                 ${emailController.text}");
                  print("teléfono:              ${telefonoController.text}");
                  print("contraseña:            ${contraseniaController.text}");
                  print("contraseña confirmada: ${verificacionController.text}");

                },
          
                label: const Text(
                  'Registrate',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ), 
                ),
                backgroundColor: Colors.black,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                    side: const BorderSide(
                    color: Colors.cyan,
                    width: 2,
                  )
                ),
              ) 
            ],
          ),
        ),
      ),
    );
  }
}