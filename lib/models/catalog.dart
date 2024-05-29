class Items {
  final int? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? imageURL;

  Items({this.id, this.name, this.desc, this.price, this.color, this.imageURL});
}

final products1 = [
  Items(
    id: 101,
    name: "Iphone 15 Pro Max",
    desc: "6.1inch Display, 256gb ROM, 8gb RAM, 12MP camera",
    price: 999,
    color: "#36454F",
    imageURL: "",
  )
];
