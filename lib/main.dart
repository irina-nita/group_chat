import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:group_chat/actions/app_actions.dart';
import 'package:group_chat/data/auth_api.dart';
import 'package:group_chat/data/location_api.dart';
import 'package:group_chat/epics/epics.dart';
import 'package:group_chat/firebase_options.dart';
import 'package:group_chat/models/models.dart';
import 'package:group_chat/presentation/home.dart';
import 'package:group_chat/reducer/reducer.dart';
import 'package:location/location.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding.instance.deferFirstFrame();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final AuthApi authApi = AuthApi(auth: FirebaseAuth.instance);

  final LocationApi locationApi = LocationApi(location: Location(), firestore: FirebaseFirestore.instance);

  final AppEpics epics = AppEpics(authApi: authApi, locationApi: locationApi);

  final StreamController<dynamic> controller = StreamController<dynamic>();

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epic),
      (Store<AppState> store, dynamic action, NextDispatcher next) {
        next(action);
        controller.add(action);
      }
    ],
  )..dispatch(const InitializeUser());

  await controller.stream
      .where((dynamic action) => action is InitializeUserSuccessful || action is InitializeUserError)
      .first;
  WidgetsBinding.instance.allowFirstFrame();

  runApp(
    GroupApp(
      store: store,
    ),
  );
}

class GroupApp extends StatelessWidget {
  const GroupApp({
    super.key,
    required this.store,
  });

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Group Chat',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const Home(),
        },
      ),
    );
  }
}
