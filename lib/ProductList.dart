
import 'dart:ui';

import 'package:flutter/material.dart';

class ProductList
{

  int? id;
  String? title;
  String? name;
  double? price;
  String? image;
  Color? color;
  String? describtion;

ProductList(
  {
    this.id,
    this.title,
    this.color,
    this.name,
    this.price,
    this.image,
this.describtion,


  }

    );



}
List<ProductList> productlist=[
  ProductList(
    id: 1,
    title: "Iphone",
    color: Colors.blue.shade900,
    name: "Iphone 12",
    price: 200,
    image: "assest/2.png",
describtion: "The iPhone 12 features a 6.1-inch (15 cm) display with Super Retina XDR OLED technology at a resolution"
  ),
  ProductList(
    id: 2,
    title: "Watch",
    color: Colors.blue.shade900,
    name: "Watch S22",
    price: 250,
    image: "assest/3.png",
    describtion: "A watch is a portable timepiece intended to be carried or worn by a person",


  ),
  ProductList(
    id: 3,
    title: "Watch",
    color: Colors.blue.shade900,
    name: "Watch44",
    price: 270,
    image: "assest/4.png",
    describtion: "A watch is a portable timepiece intended to be carried or worn by a person",
  ),

  ProductList(
    id: 5,
    title: "Asus",
    color: Colors.blue.shade900,
    name: "Asus ZenBook 13 UX325EA",
    price: 280,
    image: "assest/11.png",
    describtion: "CPU: Intel Core i7-1165G7GPU: Intel Iris Xe GraphicsRAM: 16GBStorage: 512GB SSDDisplay: 13.3-inch",

  ),
  ProductList(
    id: 6,
    title: "Laptop",
    color: Colors.blue.shade900,
    name: "Dell g15",
    price: 700,
    image: "assest/1.png",
      describtion: "CPU: Intel Core i7-1165G7GPU: Intel Iris Xe GraphicsRAM: 16GBStorage: 512GB SSDDisplay: 13.3-inch, 1080pSize: 11.98 x 7.99 x 0.55 inchesWeight: 2.5 pounds"
  ),



];