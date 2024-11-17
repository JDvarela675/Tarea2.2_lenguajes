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
      appBar: AppBar( toolbarHeight: 50 ,backgroundColor: Colors.black,),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          
          children: [
            Icon( Icons.group,
                size: 70,
                color: Colors.cyan,
                ),

        const SizedBox(height: 20),

         Container(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(' ¡Bienvenidos!',
          style: TextStyle(
          color: Colors.white,
          fontSize: 30, 
          fontWeight: FontWeight.bold,
         ),
         ),
         Icon(Icons.group_sharp,
         size: 15,
         ),
            ],
          ),
         ),

        const SizedBox(height: 35),

        CustomTextBox(Title: 'Usuario',UserController: userController,hintText: 'Ingresa tu usuario',),
          
        const SizedBox(height: 20),

         TextField(
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          controller: passwordController,
          keyboardType: TextInputType.visiblePassword,
          //ocultar el texto para la contraseña
          obscureText:mostrar,
          decoration: InputDecoration(
            label: const Text('Contraeña',
            style: TextStyle(

            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15
            ),
          ),
          
          hintText: 'Ingresa tu contraseña',

          //bordes cuando esta des-eleccionado
          border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(200),
                  )
          ), 

          //bordes cuando esta seleccionado
          focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan, width: 2.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(200),
                  )
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
   
        SizedBox(height: 20), 

        FloatingActionButton.extended(
          onPressed: (){
           if(userController.text.isEmpty || passwordController.text.isEmpty){

             ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Revisa si se han ingresado todos los datos'),
                  action: SnackBarAction(
                      label: 'ok',
                      textColor: Colors.cyan,
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
          'Iniciar Sesión',
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
        side: BorderSide(
          color: Colors.cyan,
          width: 2,
        )
       ),


        ),
        SizedBox(height: 20),

      const Text(
        "ó", 
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
              SizedBox(height: 30,),

             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Text('¿No tienes una cuenta con nosotros?',
              style: TextStyle(fontSize: 15,color: Colors.white),),

                //SizedBox(height: 5),
      
                TextButton(
                    onPressed: () {
                       Navigator.pushNamed(context, '/singup');

                    },
                    child: const Text(
                      "¡Registrate aquí!",
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