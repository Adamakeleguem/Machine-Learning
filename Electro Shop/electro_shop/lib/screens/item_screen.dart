// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../widgets/product_images_slider.dart';
class ItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFD4ECF7),
              borderRadius: BorderRadius.only(
                bottomLeft:Radius.circular(30),
                bottomRight: Radius.circular(30)
              ),
            ),
            child: Stack(
              children: [
                Center(child: ProductImagesSlider(),),
                Padding(padding: EdgeInsets.only(left: 15,top: 20),
                child: InkWell(onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios_new, size: 25,),
                ),)
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(padding: EdgeInsets.all(20),
          child: Column(
            children: [
            Text(
              "Apple watch Series 6",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 10),
            Row(children: [
              Container(
                child: Row(children: [
                  RatingBar.builder(itemBuilder: ((context, _) {},onRatingUpdate:(rating){}),)
                ],),
              )
            ],)
          ]),),
        ],
      ),
      ) ,
    );
  }
}