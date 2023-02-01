import 'package:e_shop/components/consts.dart';
import 'package:e_shop/components/lists.dart';
import 'package:e_shop/views/auth_screen/signup_screen.dart';
import 'package:e_shop/widgets_common/applogo_widget.dart';
import 'package:e_shop/widgets_common/bg_widget.dart';
import 'package:e_shop/widgets_common/custom_textfield.dart';
import 'package:e_shop/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  LoginScreen extends StatelessWidget{
  const LoginScreen({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight*0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Connectez-Vous à $appname".text.fontFamily(bold).white.size(22).make(),
              15.heightBox,

              Column(
                children: [
                  customTextField(hint: emailHint,title: email),
                  customTextField(hint: passwordHint,title: password),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgetPass.text.make())),
                  5.heightBox,   
                  /* ourButton().box.width(context.screenWidth-50).make(), */
                  ourButton(color: redColor,title: login,textColor: whiteColor,onPress:(){}).box.width(context.screenWidth-50).make(),
                  5.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  5.heightBox,
                  ourButton(color: lightGolden,title: signup,textColor: redColor,onPress: (){
                    Get.to(()=>const SignupScreen());
                  }).box.width(context.screenWidth-50).make(),

                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3, 
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: lightGrey,
                          radius: 25 ,
                        child: Image.asset(
                          socialIconList[index],
                          width: 30,
                        ),
                    ),
                      )),

                  ),

                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make()
            ],
          ),
        ),
      )
    );
  }
}