import 'package:fifteen_wednesday/screen/bottomnavbar.dart';
import 'package:fifteen_wednesday/screen/cartscreen.dart';
import 'package:fifteen_wednesday/screen/orderscreen.dart';
import 'package:fifteen_wednesday/screen/profilepage.dart';
import 'package:fifteen_wednesday/screen/registrationscreen.dart';
import 'package:flutter/material.dart';
import 'package:fifteen_wednesday/screen/loginscreen.dart';
import 'package:fifteen_wednesday/screen/product.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: BottomNavbarScreen(),
    );
  }
}