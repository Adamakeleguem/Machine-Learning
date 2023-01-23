// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
                Center(child: ProductImagesSlider(),)
              ],
            ),
          ),
        ],
      ),
      ) ,
    );
  }
}