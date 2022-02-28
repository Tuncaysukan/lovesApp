import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lovesapp/blocks/swipe/swipe_bloc.dart';
import 'package:lovesapp/models/user_model.dart';
import 'package:lovesapp/widget/ChoiceButton.dart';
import 'package:lovesapp/widget/CustomAppBar.dart';
import 'package:lovesapp/widget/UserCard.dart';

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
      body: BlocBuilder<SwipeBloc, SwipeState>(builder: (context, state) {
        if (state is SwipeLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SwipeLoaded) {
          return Column(
            children: [
              Expanded(
                child: Draggable(
                  child: UserCard(user: state.users[0]),
                  feedback: UserCard(
                    user: state.users[1],
                  ),
                  childWhenDragging: UserCard(user: state.users[2]),
                  onDragEnd: (drag) {
                    if (drag.velocity.pixelsPerSecond.dx < 0) {
                      context.read<SwipeBloc>()..add(SwipeLeftEvent(user:state.users[0]));
                      print('Sol Kaydır');
                    } else {
                      context.read<SwipeBloc>()..add(SwipeRightEvent(user:state.users[0]));
                      print('Sağ Kaydır');
                    }
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap:(){
                        context.read<SwipeBloc>()..add(SwipeLeftEvent(user:state.users[0]));
                        print('Sol Kaydır');
        },
                      child: ChoiceButtom(
                          width: 60,
                          height: 60,
                          size: 25,
                          color: Colors.blue,
                          icon: Icons.clear_rounded),
                    ),
                    ChoiceButtom(
                        width: 80,
                        height: 80,
                        size: 30,
                        color: Colors.redAccent,
                        icon: Icons.favorite),

                    InkWell(
                      onTap: (){

                          context.read<SwipeBloc>()..add(SwipeRightEvent(user:state.users[0]));
                          print('Sağ Kaydır');

                      },
                      child: ChoiceButtom(
                          width: 60,
                          height: 60,
                          size: 25,
                          color: Colors.redAccent,
                          icon: Icons.watch_later),
                    ),
                  ],
                ),
              ),
            ],
          );
        } else {
          return Text('İçerik Hatalı ');
        }
      }),
    );
  }
}
