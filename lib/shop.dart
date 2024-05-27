import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // Sample list of data
  final List<Map<String, String>> dataList = [
    {
      'title': 'Item 1',
      'subtitle': 'Subtitle for Item 1',
    },
    {
      'title': 'Item 2',
      'subtitle': 'Subtitle for Item 2',
    },
    {
      'title': 'Item 3',
      'subtitle': 'Subtitle for Item 3',
    },
    {
      'title': 'Item 4',
      'subtitle': 'Subtitle for Item 4',
    },
    {
      'title': 'Item 5',
      'subtitle': 'Subtitle for Item 5',
    },
    // Add more items as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Center();
  }
}
