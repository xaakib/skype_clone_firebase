import 'package:firebase_auth/firebase_auth.dart';
import 'package:skype_clone_firebase/resources/firebase_methods.dart';

class FirebaseRepository {
  FirebaseMethods _firebaseMethods = FirebaseMethods();
  Future<FirebaseUser> getCurrentUser() => _firebaseMethods.getCurrentuser();
}
