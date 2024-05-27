import 'package:flutter/material.dart';
import 'package:asana1/model/type_model.dart';

class Caty extends StatefulWidget {
  const Caty({super.key});

  @override
  State<Caty> createState() => _CatyState();
}

class _CatyState extends State<Caty> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: getbooks.length,
        itemBuilder: (context, index) {
          {
            return GestureDetector(
              onTap: () {},
              child: Container(
                width: 150,
                padding: const EdgeInsets.only(bottom: 3),
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        getbooks[index].cover.toString(),
                        width: 55,
                      ),
                    ),
                    const SizedBox(height: 27),
                    Text(getbooks[index].name.toString()),
                    const SizedBox(height: 31),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(233, 236, 233, 233),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              color: const Color.fromARGB(255, 56, 121, 58),
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(getbooks[index].value.toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
            // Return an empty container if index is out of range or typelist[index] is null
          }
        },
      ),
    );
  }
}
