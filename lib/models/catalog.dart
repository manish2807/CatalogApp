import 'package:flutter/material.dart';

class CatalogModel {
  static final items = [
    Item(
      id: 001,
      name: "iPhone 12 pro",
      desc: "Apple iPhone 12 series",
      price: 999,
      color: "#33505a",
      image:
          "https://www.aptronixindia.com/media/catalog/product/i/p/iphone-12-pro-blue-hero_1.png",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
