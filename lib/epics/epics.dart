import 'package:group_chat/data/auth_api.dart';
import 'package:group_chat/epics/auth_epics.dart';
import 'package:group_chat/models/models.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  AppEpics({required this.authApi});

  final AuthApi authApi;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      AuthEpics(authApi).epic,
    ]);
  }
}
