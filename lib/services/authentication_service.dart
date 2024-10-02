import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  static final FirebaseAuth _authInstance = FirebaseAuth.instance;

  // Check users authentication state changes via Stream
  static Stream<User?> get userAuthStateChanges =>
      _authInstance.authStateChanges();

  static String getCurrentUserUid() => _authInstance.currentUser!.uid;

  static Future<String?> createUserWithEmailAndPassword(
      {required String email, required String password}) {
    return _authInstance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((userCredentials) => userCredentials.user?.uid)
        .onError(
            (FirebaseAuthException error, stkTrce) => Future.error(error.code));
  }

  static Future<String?> signInWithEmailAndPassword(
      {required String email, required String password}) {
    return _authInstance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((userCredentials) => userCredentials.user?.uid)
        .onError(
            (FirebaseAuthException error, stkTrce) => Future.error(error.code));
  }

  static Future<bool> sendPasswordReset(String email) {
    return _authInstance
        .sendPasswordResetEmail(email: email)
        .then((onValue) => true)
        .onError((FirebaseAuthException error, stkTrce) => false);
  }

  static Future<void> sendEmailVerification() async {
    _authInstance.currentUser?.sendEmailVerification();
  }

  static Future<bool?> isEmailVerified() async {
    return _authInstance.currentUser?.emailVerified;
  }

  static Future<void> signOut() async => _authInstance.signOut();
}
