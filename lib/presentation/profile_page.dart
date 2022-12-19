import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:group_chat/actions/actions.dart';
import 'package:group_chat/models/models.dart';
import 'package:group_chat/presentation/containers/user_container.dart';
import 'package:group_chat/presentation/profile_photos/profile_photos.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return Stack(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: Image.asset(
                      'assets/images/clouds-01.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 7,
                    sigmaY: 10,
                  ),
                  child: const SizedBox.expand(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //SizedBox(width: 28,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            user!.displayName,
                            style: const TextStyle(
                              fontSize: 28,
                              fontFamily: 'Worksans',
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            user.email,
                            style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Worksans',
                              fontWeight: FontWeight.w500,
                              color: Colors.indigo,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 80,
                        child: SizedBox(
                          height: 160,
                          width: 160,
                          child: ClipOval(
                            child: Image.network(
                              user.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  DecoratedBox(
                    //height: 300,
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.3), borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(22),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Pick your avatar! 📸',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.pinkAccent),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          Column(
                            children: <Widget>[
                              GridView.builder(
                                itemCount: 6,
                                shrinkWrap: true,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onDoubleTap: () async {
                                      await StoreProvider.of<AppState>(context).dispatch(
                                        ChangeProfilePicture(
                                            picture: profilePhotos.elementAt(index), response: (dynamic action) {},),
                                      );
                                    },
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        image: DecorationImage(
                                          image: NetworkImage(profilePhotos.elementAt(index)),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // child: Image.network(profilePhotos.elementAt(index), fit: BoxFit.cover,)
                                    ),
                                  );
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
