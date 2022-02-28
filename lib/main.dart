import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lovesapp/blocks/swipe/swipe_bloc.dart';

import 'home/homeScreen.dart';
import 'models/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) =>
                  SwipeBloc()..add(LoadUsersEvent(users: User.users)))
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ));
  }
}
