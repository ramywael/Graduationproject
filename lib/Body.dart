import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/ProductList.dart';
import 'ProductList.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // int SelectedItem=0;
  // List Categories=["All","Phones","Laptops","Watches"];
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Padding(padding: EdgeInsets.all(10)),
        Container(
          margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder:InputBorder.none  ,
              hintText: "Search",
              hintStyle: TextStyle(
                color: Colors.white
              ),
              prefixIcon: Icon(Icons.search_outlined,size: 30,color: Colors.white,),
            ),
          ),
        ),
      ],
    );
  }
}
class ItemCard extends StatelessWidget {
   final ProductList productList;
   final Function() press;

  const ItemCard({Key? key,  required this.productList,     required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(3)),
          Expanded(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color:productList.color,
                borderRadius:BorderRadius.circular(17),

              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Hero(tag: "${productList.id}",
                child: Image.asset(productList.image.toString())),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              productList.title.toString(),
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Text(
          "\$${productList.price.toString()}",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    )
    ;
  }
}

