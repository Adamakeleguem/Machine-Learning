// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:electro_shop/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
class Screens extends StatefulWidget{
  @override
  State<Screens> createState() => _ScreensState();
}
 
class _ScreensState extends State<Screens> {
  int _selectedIndex=0;
  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions=<Widget>[
    HomeScreen(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius:20,
              color:Colors.black.withOpacity(0.1)
            ),
          ], 
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical:8 ),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap:8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal:20,vertical: 12 ),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.redAccent,
              color: Colors.black,
              tabs: [
                GButton(icon: LineIcons.home,text: 'Home'),
                GButton(icon: LineIcons.shoppingBag,text: 'Panier'),
                GButton(icon: LineIcons.heart,text: 'Favories'),
                GButton(icon: LineIcons.user,text: 'Compte'),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index){
                setState(() {
                  _selectedIndex=index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}