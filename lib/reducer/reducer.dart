import 'package:flutter/foundation.dart';
import 'package:group_chat/actions/actions.dart';
import 'package:group_chat/models/models.dart';
import 'package:group_chat/reducer/auth_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  (AppState state, dynamic action) {
    if (kDebugMode) {
      print(action);
    }
    return state;
  },
  _reducer,
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AppState, ChangePage>(_changePage),
]);

AppState _reducer(AppState state, dynamic action) {
  return state.copyWith(
    auth: authReducer(state.auth, action),
  );
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return const AppState(currentIndexPage: 0);
}

AppState _changePage(AppState state, ChangePage action) {
  return state.copyWith(
    currentIndexPage: action.currentIndexPage,
  );
}
