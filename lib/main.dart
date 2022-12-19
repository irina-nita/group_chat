import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:group_chat/data/auth_api.dart';
import 'package:group_chat/epics/epics.dart';
import 'package:group_chat/firebase_options.dart';
import 'package:group_chat/models/models.dart';
import 'package:group_chat/presentation/chat_page.dart';
import 'package:group_chat/presentation/home.dart';
import 'package:group_chat/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final AuthApi authApi = AuthApi(auth: FirebaseAuth.instance);

  final AppEpics epics = AppEpics(authApi: authApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epic),
    ],
  );
  runApp(GroupApp(
    store: store,
  ),);
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
          '/chat': (BuildContext context) => const ChatPage(),
        },
      ),
    );
  }
}
