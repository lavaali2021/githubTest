// ignore_for_file: prefer_const_constructors

import 'package:asana1/caty.dart';
import 'package:flutter/material.dart';
import 'package:asana1/typepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 11, vertical: 11),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 56, 121, 58),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(Icons.shopping_cart_outlined,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text("Asana",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 56, 121, 58),
                          fontSize: 22,
                        )),
                  ],
                ),
                SizedBox(height: 18),
                Type(),
                SizedBox(height: 19),
                Text(
                  "The most sold",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Caty(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
