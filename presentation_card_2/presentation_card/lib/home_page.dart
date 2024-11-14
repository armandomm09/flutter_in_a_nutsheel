import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var hobbies = ["Golpear", "Furro", "Cocinar"];

  String nombreDePersonaje = "";
  String nombreRayo = "Rayo";
  String nombreBatman = "Batman";

  String pathBatman = "assets/fotoBatman.jpg";
  String pathRayo = "assets/fotoRayo.png";
  String pathFoto = "assets/fotoRayo.png";

  String biografia = "";

  String biografiaRayo = "Soy un auto de carreras que siempre busca ganar.";
  String biografiaBatman = "Mataron a mis padres cuando era chico, soy multimillonario y dueño de muchas empresas.";

  @override
  void initState() {
    super.initState();
    nombreDePersonaje = nombreRayo;
    pathFoto = pathRayo;
    biografia = biografiaRayo;
  }

  void cambiarNombre() {
    setState(() {
      if (nombreDePersonaje == nombreRayo) {
        nombreDePersonaje = nombreBatman;
        pathFoto = pathBatman;
        biografia = biografiaBatman;
      } else if (nombreDePersonaje == nombreBatman) {
        nombreDePersonaje = nombreRayo;
        pathFoto = pathRayo;
        biografia = biografiaRayo;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Acerca de mi ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.teal),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(pathFoto))),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  nombreDePersonaje,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    print("BOTON PRESIONADO");
                    cambiarNombre();
                  },
                  child: const Text(
                    "Cambiar a Rayo",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                const SizedBox(height: 50),
                const Divider(),
                const SizedBox(height: 50),
                const Text(
                  "Biografia",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                Text(
                  biografia,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 50),
                const Text(
                  "Hobbies",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                Row(
                  children: hobbies.map((hobby) {
                    return Chip(label: Text(hobby));
                  }).toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
