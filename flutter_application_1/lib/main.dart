import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: const Center(
        child: const Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  "HOLA ",
                  style: TextStyle(color: Colors.amber, fontSize: 35),
                )),

                Center(
                    child: Text(
                  "ARMANDO",
                  style: TextStyle(color: Colors.pink, fontSize: 35),
                )),
              ],
            ),


            Center(
                child: Text(
              "ADIOAS ",
              style: TextStyle(color: Colors.teal, fontSize: 35),
            )),
          ],
        ),
      ),
    );
  }
}


// https://i.ytimg.com/vi/a0uaieYqhsQ/hqdefault.jpg
