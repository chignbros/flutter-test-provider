import 'package:flutter/material.dart';
import 'package:test_provider_archetec/ui/shared/text_style.dart';
import 'package:test_provider_archetec/ui/shared/ui_helper.dart';


class LoginHeader extends StatelessWidget {
  final TextEditingController controller;
  final String validateMss;

  LoginHeader({this.controller,this.validateMss});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          Text("Login",style: headerStyle,),
          UiHelper.verticalSpaceSmall(),
          Text("Enter number 1 - 10",style: subHeasderTitle,),
          LoginTextEdit(controller),
          this.validateMss != null
          ? Text(validateMss,style: TextStyle(color: Colors.red),)
          :Container()
      ],
    );
  }
}

class LoginTextEdit extends StatelessWidget {
  final TextEditingController controller;
  LoginTextEdit(this.controller);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white
      ),
      child: TextField(
        decoration: InputDecoration.collapsed(hintText: "User ID"),
        controller: controller,
      ),

    );
  }
}