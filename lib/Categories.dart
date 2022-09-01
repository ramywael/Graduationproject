import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}
class _CategoriesState extends State<Categories> {
  List<String> categories = ['All', 'Phones', 'Laptops', 'Watches'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return bulidCategory(index);
        },
      ),
    );
  }
  Widget bulidCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:28),
        child: Container(
          color: index ==selectedIndex  ? Colors.white.withOpacity(0.4) :Colors.transparent,

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(

                categories[index],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  // color: selectedIndex == index
                  //     ? Colors.black
                  //     : Colors.transparent,
                  fontSize: 15.0,
                ),
              ),
              Container(
                decoration: BoxDecoration(
// color: index ==selectedIndex  ? Colors.black.withOpacity(0.4) :Colors.transparent,
               //   color: index==selectedIndex ? (Colors.white.withOpacity(0.4)):(Colors.transparent),
                  borderRadius: BorderRadius.circular(20)

                ),

                width: 30,
                height: 1.5,
             //  color: selectedIndex == index ? Colors.white : Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
