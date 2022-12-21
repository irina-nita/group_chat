import 'package:firebase_auth/firebase_auth.dart';
import 'package:group_chat/models/models.dart';

class AuthApi {
  const AuthApi({required this.auth});

  final FirebaseAuth auth;

  Future<AppUser?> getUser() async {
    final User? user = auth.currentUser;
    if (user == null) {
      return null;
    }
    return _convertUser(user);
  }

  Future<AppUser> login({required String email, required String password}) async {
    final UserCredential credentials = await auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = credentials.user!;

    return _convertUser(user);
  }

  Future<void> logout() async {
    await auth.signOut();
  }

  Future<AppUser> createUser({
    required String email,
    required String password,
    String imageUrl = 'https://i.postimg.cc/J099KWWn/3d-rendering-zoom-call-avatar-1.jpg',
  }) async {
    final UserCredential credentials = await auth.createUserWithEmailAndPassword(email: email, password: password);
    final User user = credentials.user!;
    final String displayName = email.split('@').first;

    await user.updateDisplayName(displayName);
    await user.updatePhotoURL(imageUrl);

    return _convertUser(user);
  }

  AppUser _convertUser(User user) {
    return AppUser(uid: user.uid, email: user.email!, displayName: user.displayName!, imageUrl: user.photoURL!);
  }
}
