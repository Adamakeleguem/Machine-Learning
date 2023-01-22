
     // ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors
     
import 'package:flutter/material.dart';

class GridItems extends StatelessWidget {
  var pNames=[
    "White Tshirt",
    "Apple Watch -M2",
    "Ear Headphone",
    "Nike Shoe",
    
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pNames.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
      ),
      itemBuilder: ((context, index) {
        return InkWell(
          onTap: () {
            
          },
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFFD4ECF7),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                BoxShadow(
                  color:Colors.black26 ,
                  blurRadius:4 ,
                  spreadRadius:2,
                ),
              ],
            ),
            child: Padding(padding: EdgeInsets.all(12),  
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "10% off",
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 12),
                    ),
                    Icon(Icons.favorite,color: Colors.redAccent,)
                  ],
                ),
              ],
            ),),
          ),
        );
      }),
    );
  }
}