import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TestFirebaseUser {
  TestFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

TestFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TestFirebaseUser> testFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<TestFirebaseUser>((user) => currentUser = TestFirebaseUser(user));
