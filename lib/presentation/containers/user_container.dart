import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:group_chat/models/models.dart';
import 'package:redux/redux.dart';

class UserContainer extends StatelessWidget {
  const UserContainer({super.key, required this.builder});

  final ViewModelBuilder<AppUser?> builder;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppUser?>(
      converter: (Store<AppState> store) {
        return store.state.auth.user;
      },
      builder: builder,
    );
  }
}
