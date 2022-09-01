
import 'dart:ui';
import 'dart:ui';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/ProductList.dart';

import 'Counter.dart';

class DetailsScreen extends StatelessWidget {
  final ProductList productList;
  const DetailsScreen({Key? key, required this.productList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4C53A5),
      appBar: AppBar(
        backgroundColor:Color(0xFF4C53A5),
        elevation: 1,
        leading: IconButton(
           icon: Padding(
             padding: const EdgeInsets.only(left: 8),
             child: Icon(Icons.arrow_back),
           ), onPressed: () {
             Navigator.pop(context);
        },

        ),
        title: Text(
          "DetailsPage",

          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.shopping_cart,

            ),
          )
        ],
      ),
      body: BodyDetails(productList: productList,)
      
    );
  }
}

class BodyDetails extends StatelessWidget {
  final ProductList productList;
  const BodyDetails({Key? key,  required this.productList}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: double.infinity,
padding: EdgeInsets.symmetric(horizontal: 25),
          //  height: 200,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.only(
                bottomLeft:Radius.circular(50),
                bottomRight:Radius.circular(50),

              )
            ),
            
            child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
              children: [
Center(
  child:   Hero(
      tag: "${productList.id}",
      child: ProductPoster(size: size, image: productList.image.toString()



      ),
  ),
),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorDot(fillColor: Colors.white,
                       isSelected: true,
                        
                        ),
                      ColorDot(fillColor: Colors.blue,
                      // isSelected: true,

                      ),
                    ],
                  ),
                  
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    productList.title.toString(),
                    style: TextStyle(
                      color:Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "\$${productList.price}",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      Spacer(),
                      CartCounter(),

                    ],

                  ),
                ),
                Padding(padding: 
                    EdgeInsets.symmetric(vertical: 10),
                  child: Text(

                    productList.describtion.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,



                    ),
                  ),
                ),
                SizedBox(height: 15,),

                
                
                

        ],
),

            ),
MaterialButton(onPressed: () {},
  child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.yellowAccent,
          borderRadius:BorderRadius.circular(10),
        ),
        child: Column(

          children: [
            Text(
              "Add to cart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26
              ),

            )
          ],
        ),
      ),
  ),
)
        ],
      ),
    );
  }
}


class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.fillColor,
    // by default we set it false
    this.isSelected = false,
  }) : super(key: key);
  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      // left and right padding 8
      EdgeInsets.symmetric(horizontal: 9 / 2.5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Color(0xFF707070) : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      // the height of this container is 80% of our width
      height: size.width * 0.8,

      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.68,
            width: size.width * 0.42,
           // fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}