import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var hobbies = ["Golpear", "Furro", "Cocinar"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar.new(
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
                  child: Container.new(
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn2.unrealengine.com/Diesel%2Fproductv2%2Fbatman-arkham-knight%2FEGS_WB_Batman_Arkham_Knight_G1_1920x1080_19_0911-1920x1080-1d69e15f00cb5ab57249f208f1f8f45d52cbbc59.jpg"))),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Batman",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Divider(),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Biografia",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Mataron a mis padres cuando era chico, soy multimillonario y dueño de muchas empresas",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Hobbies",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),

                const SizedBox(
                  height: 50,
                ),
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
