class ItemModel {
  late int price;
  late String name;
  late String type;
  late String volumn;
  late String image;

  ItemModel.fromJson(Map<String, dynamic> JsonData) {
    price = JsonData['price'];
    name = JsonData['name'];
    type = JsonData['type'];
    volumn = JsonData['volumn'];
    image = JsonData['image'];
  }
}
