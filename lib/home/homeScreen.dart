import 'package:flutter/material.dart';
import 'package:lovesapp/models/user_model.dart';

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
      body: UserCard(user: User.users[0]),
    );
  }
}

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 1.4,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    user.imageUrls[0],
                  ),
                ),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),spreadRadius: 4,blurRadius: 4,offset: Offset(3,3),),]
              ),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),
              gradient: LinearGradient(colors: [
                Color.fromARGB(200, 0, 0, 0),
                Color.fromARGB(0, 0, 0, 0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,)
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${user.name},${user.age}',style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.black),),
                Text('${user.jobTitle}',style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//Appbar
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Image(
              image: AssetImage(
                'assets/logo.png',
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'Love ',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.message),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.person),
          color: Colors.black,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
