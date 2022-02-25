import 'package:flutter/material.dart';
class ChoiceButtom extends StatelessWidget {
  final double width;
  final double height;
  final double size;
  final Color color;
  final IconData icon;
  const ChoiceButtom(
      {Key? key,
        required this.width,
        required this.height,
        required this.size,
        required this.color,
        required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
