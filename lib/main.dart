import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homepp(),
    );
  }
}

class homepp extends StatefulWidget {
  const homepp({super.key});

  @override
  State<homepp> createState() => _homeppState();
}

class _homeppState extends State<homepp> {
  var se = <int>{};

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Center(
          child: Text(
            'Demo App',
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: size.height * 0.3),
        child: Container(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: (1 / 0.4),
                crossAxisCount: 4,
              ),
              itemCount: 16,
              itemBuilder: ((context, index) {
                var z = Colors.blue;
                return GestureDetector(
                  onTap: (() {
                    setState(() {
                      if (se.contains(index)) {
                        se.remove(index);
                      } else {
                        se.add(index);
                      }
                    });
                    print("$index $z");
                  }),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: (se.contains(index)) ? Colors.red : Colors.blue,
                        border: Border.all(color: Colors.black)),
                  ),
                );
              })),
        ),
      ),
    );
  }
}
