import 'package:flutter/material.dart';
import 'package:login_page/widgets/caja_texto.dart';


class SingUpPage extends StatelessWidget {
  SingUpPage({super.key});

  final userController = TextEditingController(text: 'jdvarelas@unah.hn');

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
          }, icon: Icon(Icons.arrow_back,
          size: 30,
          color: Colors.white,)
          ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          height: MediaQuery.of(context).size.height - 40,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Registrate", style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 30,),
                  Text("¡Crea tu cuenta con nosotros!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[300],
                    ),)
                ],
              ),
              Column(
                children: [
                  CustomTextBox(Title: "Nombre", UserController: TextEditingController()),
                  SizedBox(height: 15),
                  CustomTextBox(Title: "Email", UserController: TextEditingController()),
                  SizedBox(height: 15),
                  CustomTextBox(Title: "Contraseña", UserController: TextEditingController(), keyboardType: TextInputType.visiblePassword,),
                  SizedBox(height: 15),
                  CustomTextBox(Title: "Confirma tu contraseña", UserController: TextEditingController(), keyboardType: TextInputType.visiblePassword,)
                ],

              ),


             FloatingActionButton.extended(onPressed: (){},
             label: const Text('Sig in',
             style: TextStyle(color: Colors.white),
             ),
             backgroundColor: Colors.cyan,
             
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80),
            ),

             extendedPadding: EdgeInsets.all(55), //hace mas grande el boton
             ),

              Container(
                padding: EdgeInsets.only(top: 4, left: 4),
                decoration: 
                BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border(
                    bottom: BorderSide(color: Colors.white),
                    top: BorderSide(color: Colors.white),
                    left: BorderSide(color: Colors.white),
                    right: BorderSide(color: Colors.white),
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