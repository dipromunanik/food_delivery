import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Custom_Widgets/container_design.dart';
import 'package:food_delivery/Custom_Widgets/rect_container.dart';
import 'package:food_delivery/Custom_Widgets/todayhoast_design.dart';
import 'package:food_delivery/Pages/popular_food.dart';
class HomePage extends StatefulWidget {
  static const String routeName="/home_screen";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffF8F0E3 ),
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.white,
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.home,color: Color(0xffF54748)),
    label: 'Home',
    backgroundColor: Color(0xffF8F0E3),
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.message,color: Colors.grey),
    label: 'Inbox',
    backgroundColor: Color(0xffF8F0E3),
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.border_color,color: Colors.grey),
    label: 'Order',
    backgroundColor:  Color(0xffF8F0E3),
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.settings,color: Colors.grey),
    label: 'Profile',
    backgroundColor:  Color(0xffF8F0E3),
    ),
    ],
    selectedItemColor:const  Color(0xffF54748)),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.only(left: 20,right: 20,top: 52,bottom: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                   children:const [
                     Icon(Icons.my_location,size: 20,color: Colors.white),
                     SizedBox(width: 5),
                     Text('Select Location',style: TextStyle(color: Colors.white,fontSize: 16)),
                     SizedBox(width: 2),
                     Icon(Icons.keyboard_arrow_down,size: 20,color: Colors.white),
                   ],
                 ),
                  Row(
                    children:const [
                      Icon(Icons.notifications,size: 25,color: Color(0xff4F5562)),
                      SizedBox(width: 5),
                      Icon(Icons.shopping_cart,size: 25,color: Color(0xff4F5562)),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 35),
              Row(
               children: [
                 Container(
                   height: 52,
                   width: 315,
                   decoration: BoxDecoration(
                     color:const Color(0xffFFFFFF),
                     borderRadius: BorderRadius.circular(4.0)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(left: 21),
                     child: Row(
                       children:const [
                         Icon(Icons.search,color: Color(0xff7C808A)),
                         SizedBox(width: 3),
                         Text('Search your product',style: TextStyle(color: Color(0xff7C808A),fontSize: 16))
                       ],
                     ),
                   ),
                 ),
                 const SizedBox(width: 10),
                 InkWell(
                   onTap: (){
                     Navigator.pushNamed(context, PopularFood.routeName);
                   },
                   child: Container(
                     height: 52,
                     width: 44,
                     decoration: BoxDecoration(
                         color:const Color(0xffF54748),
                         borderRadius: BorderRadius.circular(4.0)
                     ),
                     child: const Center(
                         child: Icon(Icons.filter_list,
                       size: 22, color: Colors.white))),
                 ),
                 const SizedBox(height: 30),

               ],
             ),
              const SizedBox(height: 30),
              Container(
              height: 132,
              width: double.infinity,
              decoration: BoxDecoration(
                color:const Color(0xffF54748),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child:  Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Food Delivery',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                            const SizedBox(height: 5),
                            const Text('Get your Food Fast',style: TextStyle(color: Colors.white,fontSize: 14)),
                            const SizedBox(height: 5),
                            Container(
                              width: 70,
                              height: 27,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3.0)
                              ),
                              child: Center(
                                child: Text('Shop Now',style: TextStyle(color: Colors.pink,fontSize: 12)),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                     CircleAvatar(
                       radius: 60,
                       child: CircleAvatar(
                         radius: 110,
                         backgroundImage: AssetImage('images/food_image.jpg'),
                       ),
                     ),
                      CircleAvatar(
                        radius: 40,
                        child: CircleAvatar(
                         backgroundColor: Colors.white,
                          radius: 110,
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Text('33%',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                              Text('Discount',style: TextStyle(color: Colors.black,fontSize: 12))
                            ],
                          ),
                        ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Categories',
                      style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'Roboto')),
                  Text('See all',
                      style: TextStyle(color: Colors.red, fontSize: 18,fontFamily: 'Roboto')),
                ],
              ),
              const SizedBox(height: 10),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ContainerDesign(width: 70, height: 70),
                    const SizedBox(height: 5),
                    const Text('Burgers',style: TextStyle(color: Colors.grey))
                  ],
                ),
                Column(
                  children: [
                    ContainerDesign(width: 70, height: 70),
                    const SizedBox(height: 5),
                    const Text('Burgers',style: TextStyle(color: Colors.grey))
                  ],
                ),
                Column(
                  children: [
                    ContainerDesign(width: 70, height: 70),
                    const SizedBox(height: 5),
                    const Text('Burgers',style: TextStyle(color: Colors.grey))
                  ],
                ),
                Column(
                  children: [
                    ContainerDesign(width: 70, height: 70),
                    const SizedBox(height: 5),
                    const Text('Burgers',style: TextStyle(color: Colors.grey))
                  ],
                ),
              ],
            ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ContainerDesign(width: 70, height: 70),
                      const SizedBox(height: 5),
                      const Text('Burgers',style: TextStyle(color: Colors.grey))
                    ],
                  ),
                  Column(
                    children: [
                      ContainerDesign(width: 70, height: 70),
                      const SizedBox(height: 5),
                      const Text('Burgers',style: TextStyle(color: Colors.grey))
                    ],
                  ),
                  Column(
                    children: [
                      ContainerDesign(width: 70, height: 70),
                      const SizedBox(height: 5),
                      const Text('Burgers',style: TextStyle(color: Colors.grey))
                    ],
                  ),
                  Column(
                    children: [
                      ContainerDesign(width: 70, height: 70),
                      const SizedBox(height: 5),
                      const Text('Burgers',style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Popular Food',
                      style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'Roboto')),
                  Text('See all',
                      style: TextStyle(color: Colors.red, fontSize: 18,fontFamily: 'Roboto')),
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RectContainer(),
                    const SizedBox(width: 10),
                    RectContainer(),
                    const SizedBox(width: 10),
                    RectContainer()
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Popular Restureant',
                      style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'Roboto')),
                  Text('See all',
                      style: TextStyle(color: Colors.red, fontSize: 18,fontFamily: 'Roboto')),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RectContainer(),
                    const SizedBox(width: 10),
                    RectContainer(),
                    const SizedBox(width: 10),
                    RectContainer()
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Todays Hots',
                      style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'Roboto')),
                  Text('See all',
                      style: TextStyle(color: Colors.red, fontSize: 18,fontFamily: 'Roboto')),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:const [
                    TodayHostDesign(),
                    SizedBox(width: 10),
                    TodayHostDesign(),
                    SizedBox(width: 10),
                    TodayHostDesign()
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Chip Rate',
                      style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'Roboto')),
                  Text('See all',
                      style: TextStyle(color: Colors.red, fontSize: 18,fontFamily: 'Roboto')),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:const [
                    TodayHostDesign(),
                    SizedBox(width: 10),
                    TodayHostDesign(),
                    SizedBox(width: 10),
                    TodayHostDesign()
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('New Arrivals',
                      style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'Roboto')),
                  Icon(Icons.list,color: Color(0xff797979)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  RectContainer(),
                  const SizedBox(width: 10),
                  RectContainer()
                ],
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              Row(
                children: [
                  RectContainer(),
                  const SizedBox(width: 10),
                  RectContainer()
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  RectContainer(),
                  const SizedBox(width: 10),
                  RectContainer()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
