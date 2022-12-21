import 'package:group_chat/actions/actions.dart';
import 'package:group_chat/models/models.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, CreateUserSuccessful>(_createUserSuccessful),
  TypedReducer<AuthState, InitializeUserSuccessful>(_initializeUserSuccessful),
]);

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.copyWith(user: action.user);
}

AuthState _createUserSuccessful(AuthState state, CreateUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AuthState _initializeUserSuccessful(AuthState state, InitializeUserSuccessful action) {
  return state.copyWith(user: action.user);
}
