import 'package:flutter/material.dart';
import 'package:group_chat/models/models.dart';
import 'package:group_chat/presentation/containers/user_container.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello,\n${user!.displayName}!',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Image.asset('assets/images/yoga.png'),
            ],
          ),
        );
      },
    );
  }
}
