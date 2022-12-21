import 'package:group_chat/actions/app_actions.dart';
import 'package:group_chat/data/location_api.dart';
import 'package:group_chat/models/models.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class LocationEpics {
  LocationEpics(this._api);

  final LocationApi _api;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetLocationStart>(_getLocationStart),
      // _listenForLocationsStart,
    ]);
  }

  Stream<dynamic> _getLocationStart(Stream<GetLocationStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetLocationStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => _api.getLocation(store.state.auth.user!.uid))
          .map((UserLocation? location) => GetLocation.successful(location))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocation.error(error, stackTrace));
    });
  }
  //
  // Stream<dynamic> _listenForLocationsStart(Stream<dynamic> actions, EpicStore<AppState> store){
  //   return actions
  //       .where<ListenForLocationsStart>()
  //       .flatMap((ListenForLocationsStart action) {
  //     return Stream<void>.value(null) //
  //         .flatMap((_) => _api.listenLocations())
  //         .map((List<UserLocation> locations) => ListenForLocations.event(locations))
  //       .takeUntil(actions.where<ListenForLocationsDone>())
  //         .onErrorReturnWith((Object error, StackTrace stackTrace) => ListenForLocations.error(error, stackTrace));
  //   });
  // }
}
