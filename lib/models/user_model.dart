import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final String bio;
  final String jobTitle;

  const User(
      {required this.id,
      required this.name,
      required this.age,
      required this.imageUrls,
      required this.bio,
      required this.jobTitle});

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, age, imageUrls, bio, jobTitle];

  static List<User> users = [
     User(
        id: 1,
        name: 'Tuncay',
        age: 30,
        imageUrls: [
                  'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                  'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                  'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                  'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        ],
        bio: 'Biyografi',
        jobTitle: 'Yazılım'),
    User(
        id: 2,
        name: 'Tuncayskn',
        age: 30,
        imageUrls: [
          'https://images.unsplash.com/photo-1640622842924-3ae860f77265?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80',
          'https://images.unsplash.com/photo-1640622842924-3ae860f77265?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80',
          'https://images.unsplash.com/photo-1640622842924-3ae860f77265?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80',
          'https://images.unsplash.com/photo-1640622842924-3ae860f77265?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80',
          'https://images.unsplash.com/photo-1640622842924-3ae860f77265?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80',
          'https://images.unsplash.com/photo-1640622842924-3ae860f77265?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80',
        ],
        bio: 'Biyografi',
        jobTitle: 'Yazılım'),
    User(
        id: 3,
        name: 'Ahmet',
        age: 30,
        imageUrls: [
          'https://images.unsplash.com/photo-1645389411992-e9ec49b158e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=736&q=80',
          'https://images.unsplash.com/photo-1645389411992-e9ec49b158e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=736&q=80',
          'https://images.unsplash.com/photo-1645389411992-e9ec49b158e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=736&q=80',
          'https://images.unsplash.com/photo-1645389411992-e9ec49b158e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=736&q=80',
           'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        ],
        bio: 'Biyografi',
        jobTitle: 'Yazılım'),
    User(
        id: 4,
        name: 'Mehmet6',
        age: 30,
        imageUrls: [
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        ],
        bio: 'Biyografi',
        jobTitle: 'Yazılım'),
    User(
        id: 5,
        name: 'Mehmet7',
        age: 30,
        imageUrls: [
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        ],
        bio: 'Biyografi',
        jobTitle: 'Yazılım'),
    User(
        id: 6,
        name: 'Mehmet8',
        age: 30,
        imageUrls: [
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        ],
        bio: 'Biyografi',
        jobTitle: 'Yazılım'),
    User(
        id: 7,
        name: 'Mehmet9',
        age: 30,
        imageUrls: [
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        ],
        bio: 'Biyografi',
        jobTitle: 'Yazılım'),
    User(
        id: 8,
        name: 'Mehmet10',
        age: 30,
        imageUrls: [
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        ],
        bio: 'Biyografi',
        jobTitle: 'Yazılım'),
    User(
        id: 9,
        name: 'Mehmet11',
        age: 30,
        imageUrls: [
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          'https://images.unsplash.com/photo-1645699462725-f1ea49938ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        ],
        bio: 'Biyografi',
        jobTitle: 'Yazılım'),
  ];
}
