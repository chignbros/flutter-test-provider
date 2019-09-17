import 'package:flutter/material.dart';
import 'Views/LoginView.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
      ),
      home: LoginView(),
    ));
