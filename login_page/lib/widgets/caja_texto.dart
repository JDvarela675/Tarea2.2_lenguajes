import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({super.key,required this.Title,required this.UserController,this.keyboardType=TextInputType.text, required this.hintText});

  final TextEditingController UserController;
  final String Title;
  final TextInputType keyboardType;
  final String hintText;
  
  @override
  Widget build(BuildContext context) {
  
   return TextField(

      style: TextStyle(color: Colors.white),
    controller: UserController,
      keyboardType: keyboardType,
      //ocultar el texto para la contraseña
      obscureText: keyboardType == TextInputType.visiblePassword,

      

    decoration: InputDecoration(
      label: Text(Title,
      style: const TextStyle(

        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 15
      ),
      ),
      
        hintText: hintText,

           border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(200),
            ),
          ),


      
    ),
     
   );
  }
}