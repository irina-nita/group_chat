import 'package:flutter/material.dart';
import 'package:group_chat/models/models.dart';
import 'package:group_chat/presentation/containers/user_container.dart';
import 'package:group_chat/presentation/home_page.dart';
import 'package:group_chat/presentation/login_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user == null) {
          return const LoginPage();
        } else {
          return const HomePage();
        }
      },
    );
  }
}
