import 'package:flutter/material.dart';

class RectContainer extends StatelessWidget {
  const RectContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 208,
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        children: [
          Stack(
            children: [
             Image.asset('images/hydrabad.jpg',fit: BoxFit.cover),
              Padding(
                padding:const EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 27,
                      width: 27,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4.0)
                      ),
                      child:const Icon(Icons.favorite,color: Color(0xffFE0012)),
                    ),
                    Container(
                      height: 24,
                      width: 44,
                      decoration: BoxDecoration(
                          color:const Color(0xffFE0012),
                          borderRadius: BorderRadius.circular(4.0)
                      ),
                      child:const Center(child: Text('-54%',style: TextStyle(color: Colors.white)))
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding:const EdgeInsets.only(left: 8,right: 8,top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Biriyani',style: TextStyle(color: Color(0xff7C808A),fontFamily:('Roboto'))),
                    Row(
                      children:const [
                        Icon(Icons.star,color: Color(0xffFE0012),size: 14,),
                        Text('3.6',style: TextStyle(color: Color(0xff7C808A),fontFamily:('Roboto'))),
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Text('Haydarabadi Biriyani',style: TextStyle(color: Colors.black,fontFamily: 'Roboto',fontSize: 14),),
                )
              ],
            )

          )
        ],
      ),
    );
  }
}
