import 'package:group_chat/actions/actions.dart';
import 'package:group_chat/models/models.dart';
import 'package:redux/redux.dart';

Reducer<LocationState> locationReducer = combineReducers(<Reducer<LocationState>>[
  TypedReducer<LocationState, GetLocationSuccessful>(_getLocationSuccessful),
]);

LocationState _getLocationSuccessful(LocationState state, GetLocationSuccessful action) {
  return state.copyWith(location: action.userLocation);
}

