import 'package:group_chat/data/auth_api.dart';
import 'package:group_chat/data/location_api.dart';
import 'package:group_chat/epics/auth_epics.dart';
import 'package:group_chat/epics/location%20_epics.dart';
import 'package:group_chat/models/models.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  AppEpics({required this.locationApi, required this.authApi});

  final AuthApi authApi;
  final LocationApi locationApi;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      AuthEpics(authApi).epic,
      LocationEpics(locationApi).epic,
    ]);
  }
}
