import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:group_chat/actions/app_actions.dart';
import 'package:group_chat/models/models.dart';
import 'package:group_chat/presentation/containers/user_container.dart';
import 'package:group_chat/presentation/containers/user_location_container.dart';
import 'package:group_chat/presentation/dashboard_page.dart';
import 'package:group_chat/presentation/location_page.dart';
import 'package:group_chat/presentation/profile_page.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  static const List<Widget> pages = <Widget>[DashboardPage(), LocationPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return UserLocationContainer(
      builder: (BuildContext context, UserLocation? location) {
        return UserContainer(
          builder: (BuildContext context, AppUser? user) {
            return Scaffold(
              key: scaffoldKey,
              backgroundColor: const Color(0xffdee2ff),
              appBar: AppBar(
                title: const Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SpaceGrotesk',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                leading: IconButton(
                  icon: const Icon(
                    UniconsLine.bars,
                    color: Colors.indigoAccent,
                  ),
                  onPressed: () => scaffoldKey.currentState?.openDrawer(),
                ),
              ),
              bottomNavigationBar: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: GNav(
                    selectedIndex: StoreProvider.of<AppState>(context).state.currentIndexPage,
                    onTabChange: (int index) {
                      StoreProvider.of<AppState>(context)
                          .dispatch(ChangePage(currentIndexPage: index, response: (dynamic action) {}));
                    },
                    rippleColor: Colors.grey,
                    hoverColor: Colors.grey,
                    tabBorderRadius: 16,
                    color: Colors.grey[800],
                    activeColor: Colors.white,
                    iconSize: 24,
                    gap: 8,
                    tabBackgroundColor: Colors.indigoAccent.withOpacity(1),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    tabs: const <GButton>[
                      GButton(
                        icon: UniconsLine.dashboard,
                        text: 'Dashboard',
                      ),
                      GButton(
                        icon: UniconsLine.location_pin_alt,
                        text: 'Locations',
                      ),
                      GButton(
                        icon: UniconsLine.user,
                        text: 'Profile',
                      )
                    ],
                  ),
                ),
              ),
              drawer: Drawer(
                backgroundColor: Colors.white.withOpacity(0.9),
                elevation: 0,
                child: SafeArea(
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        title: const Text('Log out'),
                        onTap: () {
                          StoreProvider.of<AppState>(context).dispatch(const Logout());
                        },
                      )
                    ],
                  ),
                ),
              ),
              body: pages.elementAt(StoreProvider.of<AppState>(context).state.currentIndexPage),
            );
          },
        );
      },
    );
  }
}
