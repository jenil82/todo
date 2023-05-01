import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/screen/home/screen/intro/intro.dart';
import 'package:todo/screen/home/screen/login/home.dart';
import 'package:todo/screen/home/screen/login/signin.dart';
import 'package:todo/screen/home/screen/login/signup.dart';
import 'package:todo/screen/home/todo/screen/view/add.dart';
import 'package:todo/screen/home/todo/screen/view/edit.dart';
import 'package:todo/screen/home/todo/screen/view/screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: 'TODO',
      routes: {
        '/': (p0) => IntroScreen(),
        'create': (p0) => Create_Screen(),
        'login': (p0) => LogIn_Screen(),
        "signup": (p0) => SignOut_Screen(),
        'TODO':(p0) => TodoScreen(),
        'ADD':(p0) => AddScreen(),
        
      },
    ),
  );
}