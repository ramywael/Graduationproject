import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Body.dart';
import 'Categories.dart';
import 'DetailsScreen.dart';
import 'ProductList.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final ProductList productList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4C53A5),
      appBar:AppBar(
        backgroundColor:Color(0xFF4C53A5),
        elevation: 0,
        centerTitle: false,
        title: Text(
          "HomePage",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,

          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
badgeColor: Colors.red,
              badgeContent: Text(
                "3",
                style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              child: Icon
                (Icons.notification_important,color: Colors.white,size: 30
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Body(),
          Categories(),
          SizedBox(height: 10,),
          Expanded(child: 
              Stack(
                children: [
                  Container(

                    decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )
                    ),
                  ),
                 Expanded(child:

                     Padding(

                       padding: const EdgeInsets.all(4),
                       child: GridView.builder(
                         padding: EdgeInsets.only(left: 25),

itemCount: productlist.length,
                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisCount: 2,
                             childAspectRatio: 0.75,
                           )

                           , itemBuilder:(context, index) => ItemCard(
                         productList: productlist[index], press: () =>Navigator.push(
                         context,MaterialPageRoute(builder:
                       (context) =>DetailsScreen(
                         productList: productlist[index],
                       )
                       )
                       ) ,
                       ),
                       ),
                     )
                 )
                ],
              )
              
          )

        ],
      )


    );

  }
}
