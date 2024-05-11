import 'package:flutter/material.dart';

class ContainerButtonModel extends StatelessWidget {
   const ContainerButtonModel({super.key, this.bgColor, this.containerWidth, required this.itext});

  final Color? bgColor;
  final double? containerWidth;
  final String itext;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: bgColor,
      ),
      child: Center(
        child: Text(itext,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),),
      ),
    );
  }
}  