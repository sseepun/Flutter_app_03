import 'package:flutter/material.dart';

class Product {
  String imageUrl;
  String name;
  int price;
  String description;
  List<Color> colors;

  Product({
    this.imageUrl,
    this.name,
    this.price,
    this.description,
    this.colors,
  });
}

List<Product> products = [
  Product(
    imageUrl: 'assets/img/shoes-01.png',
    name: 'Sport Shoes 01',
    price: 95,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    colors: [Color(0xFFfad0c4), Color(0xFFff9a9e)],
  ),
  Product(
    imageUrl: 'assets/img/shoes-02.png',
    name: 'Sport Shoes 02',
    price: 95,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    colors: [Color(0xFFffecd2), Color(0xFFfcb69f)],
  ),
  Product(
    imageUrl: 'assets/img/shoes-03.png',
    name: 'Sport Shoes 03',
    price: 95,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    colors: [Color(0xFFc2e9fb), Color(0xFFa1c4fd)],
  ),
  Product(
    imageUrl: 'assets/img/shoes-04.png',
    name: 'Sport Shoes 04',
    price: 95,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    colors: [Color(0xFFB7F8DB), Color(0xFF50A7C2)],
  ),
  Product(
    imageUrl: 'assets/img/shoes-05.png',
    name: 'Sport Shoes 05',
    price: 95,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    colors: [Color(0xFF89f7fe), Color(0xFF66a6ff)],
  ),
];
