



import 'package:flutter/material.dart';
import 'package:asana1/model/type_model.dart';
import 'package:asana1/widget/rang.dart';
//import 'package:asana1/model/item_model.dart';

// ignore: camel_case_types





class Types_Data extends StatefulWidget {
  final Types Type_Data;
  // ignore: non_constant_identifier_names
  const Types_Data({Key? key, required this.Type_Data}) : super(key: key);

  @override
  State<Types_Data> createState() => _Types_DataState();
}

class _Types_DataState extends State<Types_Data> {
  @override
  int quantity = 1;
  late int _quantity = 1;

  Widget build(BuildContext context) {
    // Use the Type_Data passed into the widget instead of getbooks[index]
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 233, 233, 234),
      ),
      backgroundColor: const Color.fromARGB(255, 233, 233, 234),
      body: Column(
        children: [
          Container(
            child: Image.network(widget.Type_Data.cover.toString()),
          ),
          const SizedBox(
            height: 42,
          ),
          Xsabat(widget.Type_Data, (quantity) => {_quantity = quantity}),
          /* Xsabat(widget.Type_Data, (quantity) {
            setState(() {
              _quantity = quantity;
            });
          }),
          */

          const SizedBox(
            height: 42,
          ),
          Text(
            widget.Type_Data.name.toString(),
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Expanded(child: SizedBox()),
          Container(
            height: 65,
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text("The General"),
                      Text(
                        '${widget.Type_Data.value.toString() * quantity}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Rang.gerrBackground,
                            fontSize: 18),
                      )
                    ],
                  ),
                ),

                //am coda (button u icon u nusin bayakawa bn wa buttonaka ish bkat)
                ////@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Rang.gerrBackground,
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Rang.whiteBackground),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(18),
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Rang.whiteBackground,
                        ), // Icon on the left
                        // ignore: prefer_const_constructors
                        SizedBox(
                            width: 8), // Adjust spacing between icon and text
                        Text(
                          'Add to Basket',
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
        ],
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@222
class Xsabat extends StatefulWidget {
  Types item;
  final sendQuantity; //@@@@@@ 4 ta3rifi dakayn
  Xsabat(this.item, this.sendQuantity); //@@@@@@ 3 nawnani functionaka

  @override
  State<Xsabat> createState() => _XsabatState();
}

class _XsabatState extends State<Xsabat> {
  @override
  int quantity = 1; //aw 1 ka aw zhmaraya ka daman nawa la baini + u - ka
  changeQuantity(int value) {
    ///marjet dadaneyin bo awai nayata xwar 1
    if (quantity + value < 1) {
      return; // yani ba ama ruunadat bchuktr bet la yak
    }
    setState(() {
      quantity = quantity + value;
    });

    ///@@@@@@@@@@@@@@@@@ 5 quantity pee adam
    widget.sendQuantity(quantity);
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 135,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Rang.greyColor),
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Rang.subGreyColor),
                        child: IconButton(
                            onPressed: () {
                              changeQuantity(1);
                            },
                            icon: const Icon(Icons.add))),
                    const Expanded(child: SizedBox()),
                    Text(
                      quantity.toString(),
                      style: const TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    const Expanded(child: SizedBox()),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Rang.subGreyColor),
                      child: IconButton(
                          onPressed: () {
                            changeQuantity(-1);
                          },
                          icon: const Icon(Icons.remove)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
} 
