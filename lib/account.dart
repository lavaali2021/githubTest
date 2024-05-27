// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:asana1/showsheet.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _HomePageState();
}

class _HomePageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              // ignore: prefer_const_constructors
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 13),
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 56, 121, 58),
                                  borderRadius: BorderRadius.circular(46)),
                              // ignore: prefer_const_constructors
                              child: Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                                size: 65,
                              )),
                        ],
                      ),
                      // ignore: prefer_const_constructors
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                      // ignore: prefer_const_constructors
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Asana"),
                        ],
                      ),

                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: const Text(
                          "Organizing & Protecting",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(
                                  6.0), // Add padding around the TextButton
                              child: TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ShowSheet(); // Use the BottomSheetWidget here
                                    },
                                  );
                                },
                                style: ButtonStyle(
                                  // Add your button style here
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Colors.white,
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color.fromARGB(255, 18, 17, 17),
                                  ),

                                  padding: MaterialStateProperty.all<
                                      EdgeInsetsGeometry>(
                                    const EdgeInsets.all(18),
                                  ),
                                  side: MaterialStateProperty.all<BorderSide>(
                                    const BorderSide(
                                      color: Color.fromARGB(255, 216, 211,
                                          211), // Set border color
                                      width: 2.0, // Set border width
                                    ),
                                  ),

                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 8),
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 227, 227, 227),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: const Icon(
                                          Icons.translate,
                                          color:
                                              Color.fromARGB(255, 56, 121, 58),
                                        )), // Icon on the left
                                    const SizedBox(
                                        width:
                                            8), // Adjust spacing between icon and text
                                    const Text(
                                      'Language',
                                      style: TextStyle(
                                        fontSize:
                                            16, // Adjust font size as needed
                                      ),
                                    ), // Text on the right
                                  ],
                                ),
                              ),
                            ),

                            //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2
                            //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2
                            //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2
                            Padding(
                              padding: const EdgeInsets.all(
                                  6.0), // Add padding around the TextButton
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  // Add your button style here
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Colors.white,
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color.fromARGB(255, 18, 17, 17),
                                  ),

                                  padding: MaterialStateProperty.all<
                                      EdgeInsetsGeometry>(
                                    const EdgeInsets.all(18),
                                  ),
                                  side: MaterialStateProperty.all<BorderSide>(
                                    const BorderSide(
                                      color: Color.fromARGB(255, 216, 211,
                                          211), // Set border color
                                      width: 2.0, // Set border width
                                    ),
                                  ),

                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                // ignore: prefer_const_constructors

                                child: Row(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 8),
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 227, 227, 227),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: const Icon(
                                          Icons.login,
                                          color:
                                              Color.fromARGB(255, 56, 121, 58),
                                        )), // Icon on the left
                                    // ignore: prefer_const_constructors
                                    SizedBox(
                                        width:
                                            8), // Adjust spacing between icon and text
                                    const Text(
                                      'Sign in',
                                      style: TextStyle(
                                        fontSize:
                                            16, // Adjust font size as needed
                                      ),
                                    ), // Text on the right
                                  ],
                                ),
                              ),
                            ),
                            //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2
                            //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2
                            //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 9),
                        child: Text(
                          "Help & Communication",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),

                      Center(
                          child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(
                              6.0), // Add padding around the TextButton
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              // Add your button style here
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white,
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 18, 17, 17),
                              ),

                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                const EdgeInsets.all(18),
                              ),
                              side: MaterialStateProperty.all<BorderSide>(
                                const BorderSide(
                                  color: Color.fromARGB(
                                      255, 216, 211, 211), // Set border color
                                  width: 2.0, // Set border width
                                ),
                              ),

                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 8),
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 227, 227, 227),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Icon(
                                      Icons.share,
                                      color: Color.fromARGB(255, 56, 121, 58),
                                    )), // Icon on the left
                                const SizedBox(
                                    width:
                                        8), // Adjust spacing between icon and text
                                const Text(
                                  'Instagram',
                                  style: TextStyle(
                                    fontSize: 16, // Adjust font size as needed
                                  ),
                                ), // Text on the right
                              ],
                            ),
                          ),
                        ),
                      ])),
                      Center(
                          child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(
                              6.0), // Add padding around the TextButton
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              // Add your button style here
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white,
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 18, 17, 17),
                              ),

                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                const EdgeInsets.all(18),
                              ),
                              side: MaterialStateProperty.all<BorderSide>(
                                const BorderSide(
                                  color: Color.fromARGB(
                                      255, 216, 211, 211), // Set border color
                                  width: 2.0, // Set border width
                                ),
                              ),

                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 8),
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 227, 227, 227),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Icon(
                                      Icons.facebook,
                                      color: Color.fromARGB(255, 56, 121, 58),
                                    )), // Icon on the left
                                const SizedBox(
                                    width:
                                        8), // Adjust spacing between icon and text
                                const Text(
                                  'Facebook',
                                  style: TextStyle(
                                    fontSize: 16, // Adjust font size as needed
                                  ),
                                ), // Text on the right
                              ],
                            ),
                          ),
                        ),
                      ])),

                      Center(
                          child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(
                              6.0), // Add padding around the TextButton
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              // Add your button style here
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white,
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 18, 17, 17),
                              ),

                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                const EdgeInsets.all(18),
                              ),
                              side: MaterialStateProperty.all<BorderSide>(
                                const BorderSide(
                                  color: Color.fromARGB(
                                      255, 216, 211, 211), // Set border color
                                  width: 2.0, // Set border width
                                ),
                              ),

                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 8),
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 227, 227, 227),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Icon(
                                      Icons.phone,
                                      color: Color.fromARGB(255, 56, 121, 58),
                                    )), // Icon on the left
                                const SizedBox(
                                    width:
                                        8), // Adjust spacing between icon and text
                                const Text(
                                  '07501894975',
                                  style: TextStyle(
                                    fontSize: 16, // Adjust font size as needed
                                  ),
                                ), // Text on the right
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 33,
                        )
                      ])),
                    ]))));
  }
}
