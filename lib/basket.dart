import 'package:flutter/material.dart';

class ShoppingcartPage extends StatefulWidget {
  const ShoppingcartPage({super.key});

  @override
  State<ShoppingcartPage> createState() => _ShoppingcartPageState();
}

class _ShoppingcartPageState extends State<ShoppingcartPage> {
  int current = 0;
  final List<String> items = [
    "Rice",
    "Oil",
    "Yeast",
    "Insequable",
    "Drinking water",
    "Drinking & energy",
    "Tea & coffee",
    "Eggs & milk",
    "Doshaw",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder inside Stack'),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                        var storyData = StoryData();
                        print('Type: ${storyData.getType(current)}');
                        //  print('Content: ${storyData.getContent(current)}');
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      color: current == index ? Colors.green : Colors.blue[100],
                      child: Center(
                        child: Text(
                          items[index],
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoryData {
  String getType(int current) {
    List<String> typelist = ["Type 1", "Type 2", "Type 3", "Type 4", "Type 5"];
    return typelist[current];
  }

  String getContent(int current) {
    List<String> contentList = [
      "Content for Type 1",
      "Content for Type 2",
      "Content for Type 3",
      "Content for Type 4",
      "Content for Type 5"
    ];
    return contentList[current];
  }
}
