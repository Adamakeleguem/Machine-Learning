import 'package:e_shop/components/colors.dart';
import 'package:e_shop/components/consts.dart';
import 'package:e_shop/components/images.dart';
import 'package:e_shop/views/auth_screen/login_screen.dart';
import 'package:e_shop/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen([Key?key]):super(key: key);

  @override
  State<SplashScreen> createState()=>_SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  //Creation d'une pour le changement d'ecrans
  changeScreen(){
     Future.delayed(const Duration(seconds: 3),(){
      // utilisation de get x
      Get.to(()=>const LoginScreen());
     });
  }
  @override
  void initState(){
    changeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg,width: 300),),
              20.heightBox,
              applogoWidget(),
              10.heightBox,
              appname.text.fontFamily(bold).size(22).white.make(),
              5.heightBox,
              appversion.text.white.make(),
              10.heightBox,
              const Spacer(),
              credits.text.white.fontFamily(semibold).make(),
              30.heightBox,
              // Complete Splash screen Ui
          ],
        )
      ),
    );
  }
}