import 'package:flutter/material.dart';
import 'package:logintrial/login.dart';
import 'package:logintrial/loginmod.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home:Scaffold(
      backgroundColor: Colors.grey[250],

    body: const Loginmod()
  )));
}