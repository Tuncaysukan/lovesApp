import 'package:flutter/material.dart';
import 'package:lovesapp/models/user_model.dart';
import 'package:lovesapp/widget/ChoiceButton.dart';
import 'package:lovesapp/widget/CustomAppBar.dart';
import 'package:lovesapp/widget/UserCard.dart';


class  HomeScreen extends StatelessWidget {
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
          Expanded(
            child: Draggable(
              
              child: UserCard(user: User.users[0]),
              feedback: UserCard(user: User.users[1],),
              childWhenDragging: UserCard(user:User.users[2]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ChoiceButtom(
                    width: 60,
                    height: 60,
                    size: 25,
                    color: Colors.blue,
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
