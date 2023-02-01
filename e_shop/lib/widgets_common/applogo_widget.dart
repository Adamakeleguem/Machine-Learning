import 'package:e_shop/components/consts.dart';
import 'package:flutter/material.dart';
Widget applogoWidget(){
  //utilisation de velocity_x
  return Image.asset(icAppLogo).box.white.size(77, 77).padding(const EdgeInsets.all(8)).rounded.make();
}