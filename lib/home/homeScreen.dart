import 'package:flutter/material.dart';
import 'package:lovesapp/models/user_model.dart';
import 'package:lovesapp/widget/CustomAppBar.dart';
import 'package:lovesapp/widget/UserCard.dart';
import 'package:lovesapp/widget/UserImageSmall.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          UserCard(user: User.users[0]),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ChoiceButtom(
                    width: 60,
                    height: 60,
                    size: 25,
                    color: Colors.redAccent,
                    icon: Icons.clear_rounded),
                ChoiceButtom(
                    width: 80,
                    height: 80,
                    size: 30,
                    color: Colors.redAccent,
                    icon: Icons.favorite),
                ChoiceButtom(
                    width: 60,
                    height: 60,
                    size: 25,
                    color: Colors.redAccent,
                    icon: Icons.watch_later),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
