import 'package:firebase_auth/firebase_auth.dart';
import 'package:group_chat/models/models.dart';

class AuthApi {
  const AuthApi({required this.auth});

  final FirebaseAuth auth;

  Future<AppUser> login({required String email, required String password}) async {
    final UserCredential credentials = await auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = credentials.user!;

    return AppUser(uid: user.uid, email: email, displayName: user.displayName!);
  }

  Future<void> logout() async {
    await auth.signOut();
  }

  Future<AppUser> createUser({required String email, required String password}) async {
    final UserCredential credentials = await auth.createUserWithEmailAndPassword(email: email, password: password);
    final User user = credentials.user!;
    final String displayName = email.split('@').first;

    await user.updateDisplayName(displayName);

    return AppUser(uid: user.uid, email: email, displayName: displayName);
  }

  Future<AppUser> changeProfilePicture({required String picture}) async {
    final User user = auth.currentUser!;
    await user.updatePhotoURL(picture);

    return AppUser(uid: user.uid, email: user.email!, displayName: user.displayName!, imageUrl: user.photoURL!);
  }
}
