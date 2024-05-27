import 'package:flutter/material.dart';

class ShowSheet extends StatefulWidget {
  const ShowSheet({super.key});

  @override
  State<ShowSheet> createState() => _ShowSheetState();
}

class _ShowSheetState extends State<ShowSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      height: 220,
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                  6.0), // Add padding around the TextButton
              child: TextButton(
                onPressed: () {
                  // Add your onPressed action here
                  print('Button pressed');
                },
                style: ButtonStyle(
                  // Add your button style here
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.black,
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(10),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Icon(Icons.layers),
                    ), // Icon on the left
                    SizedBox(width: 5), // Adjust spacing between icon and text
                    Text(
                      'Kurdish',
                      style: TextStyle(
                        fontSize: 16, // Adjust font size as needed
                      ),
                    ), // Text on the right
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                  6.0), // Add padding around the TextButton
              child: TextButton(
                onPressed: () {
                  // Add your onPressed action here
                  print('Button pressed');
                },
                style: ButtonStyle(
                  // Add your button style here
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.black,
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(10),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Icon(Icons.layers),
                    ), // Icon on the left
                    SizedBox(width: 5), // Adjust spacing between icon and text
                    Text(
                      'Arabic',
                      style: TextStyle(
                        fontSize: 16, // Adjust font size as needed
                      ),
                    ), // Text on the right
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                  6.0), // Add padding around the TextButton
              child: TextButton(
                onPressed: () {
                  // Add your onPressed action here
                  print('Button pressed');
                },
                style: ButtonStyle(
                  // Add your button style here
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.black,
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(10),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Icon(Icons.layers),
                    ), // Icon on the left
                    SizedBox(width: 5), // Adjust spacing between icon and text
                    Text(
                      'English',
                      style: TextStyle(
                        fontSize: 16, // Adjust font size as needed
                      ),
                    ), // Text on the right
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
