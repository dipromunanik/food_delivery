import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/home_screen.dart';
import 'package:food_delivery/Pages/popular_food.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        HomePage.routeName:(context)=>const HomePage(),
        PopularFood.routeName:(context)=>const PopularFood()
      },
    );
  }
}
