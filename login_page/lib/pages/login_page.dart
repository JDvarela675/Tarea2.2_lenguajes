import 'package:flutter/material.dart';
import 'package:login_page/pages/Usuario.dart';
import 'package:login_page/widgets/caja_texto.dart';

class LoginPage extends StatefulWidget {
   LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    final userController = TextEditingController(text: 'jdvarelas@unah.hn');

  final passwordController = TextEditingController(text: '20222000646');

   bool mostrar =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      appBar: AppBar( toolbarHeight: 13,backgroundColor: Colors.black,),
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
          color: Colors.white,
          fontSize: 30, 
         ),
         ),
         Icon(Icons.group_sharp,
         size: 15,
         ),
            ],
          ),
         ),

         SizedBox(height: 35),

        CustomTextBox(Title: 'Usuario',UserController: userController,hintText: 'Ingresa tu usuario',),
          SizedBox(height: 20),

         TextField(
      style: TextStyle(color: Colors.white),
    controller: passwordController,
      keyboardType: TextInputType.visiblePassword,
      //ocultar el texto para la contraseña
      obscureText:mostrar,
    decoration: InputDecoration(
      label: Text('Contraeña',
      style: const TextStyle(

        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 15
      ),
      ),
       hintText: 'Ingresa tu contraseña',

           border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),

     suffix: IconButton(onPressed: (){
      if(mostrar== true)
      mostrar=false;
      else
      mostrar=true;

      setState(() {});
     }, icon: Icon(Icons.remove_red_eye),iconSize: 20,color: Colors.cyan,)
     ),
    ),
   




        SizedBox(height: 21), 

        FloatingActionButton.extended(
          onPressed: (){
           if(userController.text.isEmpty || passwordController.text.isEmpty){

             ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Revisar si se han ingresado todos los datos'),
                  action: SnackBarAction(
                      label: 'ok',
                      onPressed: () => ScaffoldMessenger.of(context).hideCurrentSnackBar()),
                ),
              );

            return;

           }

          if(userController.text!='jdvarelas@unah.hn' || passwordController.text!='20222000646'){


            if((userController.text!='kisha.mejia@unah.hn' || passwordController.text!='20232000836')){
              
               ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Su usuario o contaseña son incorrectos'),
                  action: SnackBarAction(
                    textColor: Colors.black,
                      label: 'Volver',
                      onPressed: () => ScaffoldMessenger.of(context).hideCurrentSnackBar()),
                       backgroundColor: Colors.red,
                ),
              );    
              return;

            }
            
             
          }


          Navigator.pushNamed(context, '/homepage',arguments: Usuario(userController.text));
          },
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
        style: TextStyle(color: Colors.white, 
        fontWeight: FontWeight.bold), 
      ),

      SizedBox(height: 20),
      Text('Ingresa con:',
       style: TextStyle(color: Colors.white, 
        fontSize: 15),
      ),

      SizedBox(height: 13,),

      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Icon(Icons.apple,color: Colors.white,size: 30,),
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
              const Text('No tienes una cuenta con nosotros?',
              style: TextStyle(fontSize: 14,color: Colors.white),),
                TextButton(
                    onPressed: () {
                       Navigator.pushNamed(context, '/singup');

                    },
                    child: const Text(
                      " ¡Registrate aquí!",
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