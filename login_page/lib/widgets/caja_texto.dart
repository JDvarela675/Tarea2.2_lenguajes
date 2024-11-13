import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({super.key,required this.Title});

 
  final String Title;
  
  @override
  Widget build(BuildContext context) {

   return TextField(

    decoration: InputDecoration(
      label: Text(Title,
      style: TextStyle(

        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 15
      ),
      ),
       hintText: 'Ingrese su $Title',
           border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(200),
            ),
          ),
      
    ),
     
   );
  }
}