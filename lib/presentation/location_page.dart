import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:group_chat/actions/app_actions.dart';
import 'package:group_chat/models/models.dart';
import 'package:group_chat/presentation/containers/user_location_container.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  void initState() {
    super.initState();
    StoreProvider.of<AppState>(context, listen: false).dispatch(const GetLocation());
  }

  @override
  Widget build(BuildContext context) {
    return UserLocationContainer(
      builder: (BuildContext context, UserLocation? location) {
        return Center(
          child: location == null
              ? const CircularProgressIndicator()
              : Center(
                  child: Text('$location'),
                ),
        );
      },
    );
  }
}
