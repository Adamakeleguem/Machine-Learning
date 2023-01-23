
     // ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables
     
import 'package:flutter/material.dart';

import '../screens/item_screen.dart';

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
        return Container(
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
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(10),
                child:InkWell(
                  onTap: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (conte0xt)=>ItemScreen()));
                  }),
                  child: Image.asset("images/${pNames[index]}.png",height: 100,
                  width:100),
                ),
                ),
              SizedBox(height: 15),
              Padding(padding: EdgeInsets.all(8),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pNames[index],
                  style: TextStyle(fontSize: 14,color: Colors.black.withOpacity(0.8),
                  fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "\$100",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "\$130",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 13,
                        color: Colors.black.withOpacity(0.4),
                      ),
                    )
                  ],
                )
              ],
              ),
            ),
            ],
          ),),
        );
      }),
    );
  }
}