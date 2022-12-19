import 'package:group_chat/actions/actions.dart';
import 'package:group_chat/data/auth_api.dart';
import 'package:group_chat/models/models.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class AuthEpics {
  AuthEpics(this._api);

  final AuthApi _api;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart),
      TypedEpic<AppState, LogoutStart>(_logoutStart),
      TypedEpic<AppState, CreateUserStart>(_createUserStart),
      TypedEpic<AppState, ChangeProfilePictureStart>(_changeProfilePictureStart),
    ]);
  }

  Stream<dynamic> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.login(email: action.email, password: action.password))
          .map((AppUser user) => Login.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => Login.error(error, stackTrace))
          .doOnData(action.response);
    });
  }

  Stream<dynamic> _logoutStart(Stream<LogoutStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LogoutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.logout())
          .map((_) => const Logout.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => Logout.error(error, stackTrace));
    });
  }

  Stream<dynamic> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.createUser(email: action.email, password: action.password))
          .map((AppUser user) => CreateUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateUser.error(error, stackTrace))
          .doOnData(action.response);
    });
  }

  Stream<dynamic> _changeProfilePictureStart(Stream<ChangeProfilePictureStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((ChangeProfilePictureStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.changeProfilePicture(picture: action.picture))
          .map((AppUser user) => ChangeProfilePicture.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => ChangeProfilePicture.error(error, stackTrace))
          .doOnData(action.response);
    });
  }
}
