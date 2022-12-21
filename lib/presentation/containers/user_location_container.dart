import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:group_chat/models/models.dart';
import 'package:redux/redux.dart';

class UserLocationContainer extends StatelessWidget {
  const UserLocationContainer({super.key, required this.builder});

  final ViewModelBuilder<UserLocation?> builder;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, UserLocation?>(
      converter: (Store<AppState> store) {
        return store.state.location.location;
      },
      builder: builder,
    );
  }
}
