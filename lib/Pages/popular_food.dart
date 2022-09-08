import 'package:flutter/material.dart';
import 'package:food_delivery/Custom_Widgets/rect_container.dart';

class PopularFood extends StatefulWidget {
  static const String routeName = '/popular_food';
  const PopularFood({Key? key}) : super(key: key);

  @override
  _PopularFoodState createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff),
      appBar: AppBar(
        backgroundColor:const Color(0xffF54748),
        title:const Text('Popular Food',style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  RectContainer(),
                  const SizedBox(width: 10),
                  RectContainer(),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  RectContainer(),
                  const SizedBox(width: 10),
                  RectContainer(),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  RectContainer(),
                  const SizedBox(width: 10),
                  RectContainer(),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
