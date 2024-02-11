import 'package:firebase_auth/firebase_auth.dart';

class Auth{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance; //instance of firebase authentication

  User? get currentUser => _firebaseAuth.currentUser; //authenticates the current user 

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges(); //notifies the firebaseAuth fn about the current users state (logged in or out)

  Future<void> signInWithEmailAndPassword({ //define an async fn that waits for the user's email and pass to be provided in order to sign in
    required String email,
    required String password
  }) async{
    await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }

    Future<void> createUserWithEmailAndPassword({ //define an async fn that waits for the user's email and pass to be provided in order to create a new user
    required String email,
    required String password
  }) async{
    await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signOut() async { //signs out the current user
    await _firebaseAuth.signOut();
  }
} 