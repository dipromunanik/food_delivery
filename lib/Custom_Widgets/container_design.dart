import 'package:flutter/material.dart';

class ContainerDesign extends StatefulWidget {
  double width;
  double height;

  ContainerDesign({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  _ContainerDesignState createState() => _ContainerDesignState();
}

class _ContainerDesignState extends State<ContainerDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height,
        width: widget.width,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: const Color(0xffE8EEF2),
            borderRadius: BorderRadius.circular(180),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1),
              )
            ]),
        child: CircleAvatar(
            child: Center(
                child: Image.asset('images/burger.png', fit: BoxFit.cover))));
  }
}
