import 'package:flutter/material.dart';

class TodayHostDesign extends StatefulWidget {
  const TodayHostDesign({Key? key}) : super(key: key);

  @override
  _TodayHostDesignState createState() => _TodayHostDesignState();
}

class _TodayHostDesignState extends State<TodayHostDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101,
      width: 217,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Image.asset('images/hydrabad.jpg',height: double.infinity,width: 100,fit: BoxFit.fitHeight,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.0)
                  ),
                  child:const Icon(Icons.favorite,color: Color(0xffFE0012)),
                ),
              ),
            ],
          ),
          const SizedBox(width: 1),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Row(
                  children:const [
                    Icon(Icons.star,color: Color(0xffFE0012),size: 14,),
                    Text('3.6',style: TextStyle(color: Color(0xff7C808A),fontFamily:('Roboto'))),
                  ],
                ),
                const SizedBox(height: 5),
                const Text('Comilla',style: TextStyle(color: Color(0xff797979),fontFamily: 'Roboto',fontSize: 14)),
                const SizedBox(height: 5),
                const Text('Biroti Resurant',style: TextStyle(color: Colors.black,fontFamily: 'Roboto',fontSize: 16,fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                const Text('123 item',style: TextStyle(color: Color(0xffF54748),fontFamily: 'Roboto',fontSize: 18,fontWeight: FontWeight.bold)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
