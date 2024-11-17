import 'package:flutter/material.dart';
import 'package:login_page/pages/Usuario.dart';
import 'package:login_page/widgets/caja_texto.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final argumentos = ModalRoute.of(context)!.settings.arguments as Usuario; 

    String imagePath = 'assets/default.png';

    if (argumentos.username == 'jdvarelas@unah.hn') {
      imagePath = 'assets/profilepj.jpeg';
    } else if (argumentos.username == 'kisha.mejia@unah.hn') {
      imagePath = 'assets/profilepk.jpeg';
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
  
          CircleAvatar(
            radius: 90,
            backgroundColor: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.cyan,
                  width: 5.5,
                ),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.cyan,
                radius: 80,
                backgroundImage: AssetImage(imagePath),
              ),
            ),
          ),
          
          SizedBox(height: 60),

          // Saludo y nombre del usuario
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Hola de nuevo,",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  argumentos.username,
                  style: const TextStyle(
                    color: Colors.cyan,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 40),

          // Caja de texto de búsqueda
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: CustomTextBox(
              Title: "Buscar: ",
              UserController: TextEditingController(),
              hintText: '¿Qué deseas saber hoy?',
            ),
          ),

          SizedBox(height: 30),

          // Botón de acción para más opciones
          ElevatedButton(
            onPressed: () {
              // Acción a realizar al presionar el botón
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),'Acción de búsqueda iniciada',textAlign: TextAlign.center), 
                  duration:Duration(seconds: 6),
                  backgroundColor: Colors.cyan,
                ),
              );
            },
            child: Text(
              '¡Buscar!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, 
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: Colors.cyan,
                  width: 2,
                ),
              ),
            ),
          ),

          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                      "¡Este es tu perfil!"
                    ),
                    backgroundColor: Colors.cyan,
                    duration: Duration(seconds: 5),
                    ),
                  );
                },
                icon: Icon(Icons.account_circle, color: Colors.cyan),
                tooltip: 'Mi Perfil',
              ),
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                      "¿Configurando?"
                    ),
                    backgroundColor: Colors.cyan,
                    duration: Duration(seconds: 5),
                    ),
                  );
                },
                icon: Icon(Icons.settings, color: Colors.white),
                tooltip: 'Configuración',
              ),
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                      "¿Necesitas ayuda?"
                    ),
                    backgroundColor: Colors.cyan,
                    duration: Duration(seconds: 5),
                    ),
                  );
                },
                icon: Icon(Icons.help, color: Colors.white),
                tooltip: 'Ayuda',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
