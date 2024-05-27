import 'package:flutter/material.dart';
import 'package:asana1/model/type_model.dart';
import 'package:asana1/screen/types_data.dart';

//import 'package:asana1/widget/itempage.dart';

class Type extends StatefulWidget {
  const Type({Key? key}) : super(key: key);

  @override
  State<Type> createState() => _TypeState();
}

List<String> typelist = [
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

class _TypeState extends State<Type> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: size.width / 2 + 12,
              height: 38,
              child: ListView.builder(
                itemCount: typelist.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 10 : 25,
                      ),
                      child: Text(
                        typelist[index],
                        style: TextStyle(
                          color: current == index
                              ? Colors.black
                              : Colors.grey[400],
                          letterSpacing: .4,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 5),
            StoryData(currentIndex: current),
          ],
        ),
      ),
    );
  }
}

class StoryData extends StatefulWidget {
  final int currentIndex;

  const StoryData({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<StoryData> createState() => _StoryDataState();
}

class _StoryDataState extends State<StoryData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: getbooks.length,
        itemBuilder: (context, index) {
          if (widget.currentIndex >= 0 &&
              widget.currentIndex < typelist.length &&
              index >= 0 &&
              index < getbooks.length &&
              getbooks[index].type != null &&
              getbooks[index].type.toString().toLowerCase() ==
                  typelist[widget.currentIndex].toLowerCase()) {
            return GestureDetector(
              onTap: () {
                //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Types_Data(
                      Type_Data: getbooks[index],
                    ),
                  ),
                );
              },
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
          } else {
            return const SizedBox(); // Return an empty container if index is out of range or typelist[index] is null
          }
        },
      ),
    );
  }
}
